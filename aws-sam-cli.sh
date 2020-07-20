echo "Install aws sam cli"

# Download latest aws sam cli sources
TarballUrl=$(curl -s https://api.github.com/repos/awslabs/aws-sam-cli/releases/latest | jq -r '.tarball_url')
TarballPath="/tmp/aws-sam-cli.tar.gz"
wget $TarballUrl -O $TarballPath
tar -xzf $TarballPath -C /tmp
cd /tmp/awslabs-aws-sam-cli*

mkdir /opt/python-aws-sam-cli
cp -r /opt/hostedtoolcache/Python/3.7.7 /opt/python-aws-sam-cli
du -hs /opt/python-aws-sam-cli
echo "-------"

# Use copy python 3.7.7 from toolcache to install aws sam, setuptools package required for the installation
Python3Dir=$(echo /opt/python-aws-sam-cli/3.7.7/x64)
Python3BinDir="${Python3Dir}/bin"
export PATH="$Python3Dir:$Python3BinDir:$PATH"
python3 -m pip install setuptools
python3 setup.py install

echo "-------"
du -hs /opt/python-aws-sam-cli
echo "AWS sam cli version"
$Python3BinDir/sam init
