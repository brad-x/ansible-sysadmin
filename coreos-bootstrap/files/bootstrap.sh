
#/bin/bash

set -e

mkdir -pv /opt

cd /opt

if [[ -e /opt/.bootstrapped ]]; then
  exit 0
fi

PYPY_VERSION=5.6.0

if [[ -e /opt/pypy2-v$PYPY_VERSION-linux64.tar.bz2 ]]; then
  tar -xjf /opt/pypy2-v$PYPY_VERSION-linux64.tar.bz2
  rm -rf /opt/pypy2-v$PYPY_VERSION-linux64.tar.bz2
else
  wget -O - https://bitbucket.org/pypy/pypy/downloads/pypy2-v$PYPY_VERSION-linux64.tar.bz2|tar -C /opt -xjf -
fi

mv -n /opt/pypy2-v$PYPY_VERSION-linux64 /opt/pypy

## library fixup
mkdir -p pypy/lib
ln -snf /lib64/libncurses.so.5.9 /opt/pypy/lib/libtinfo.so.5

mkdir -p /opt/bin

cat > /opt/bin/python <<EOF
#!/bin/bash
LD_LIBRARY_PATH=/opt/pypy/lib:$LD_LIBRARY_PATH exec /opt/pypy/bin/pypy "\$@"
EOF

chmod +x /opt/bin/python
/opt/bin/python --version

# Install PIP
/opt/bin/python -m ensurepip

cat > /opt/bin/pip <<EOF
#!/bin/bash
LD_LIBRARY_PATH=/opt/pypy/lib:$LD_LIBRARY_PATH exec /opt/pypy/bin/pip "\$@"
EOF
chmod +x /opt/bin/pip

# Install docker-py

touch /opt/.bootstrapped
