echo "Install aws sam cli"

TarballUrl=$(curl -s https://api.github.com/repos/awslabs/aws-sam-cli/releases/latest | jq -r '.tarball_url')
TarballPath="/tmp/aws-sam-cli.tar.gz"
wget $TarballUrl -O $TarballPath
tar -xzvf $TarballPath -C /tmp

Python3Url="https://www.python.org/ftp/python/3.7.8/Python-3.7.8.tar.xz"
mkdir "/opt/python-aws-sam-cli"
AWSPython3Path="opt/python-aws-sam-cli/python-3.7.8.tar.xz"
wget $Python3Url -O $AWSPython3Path
tar -xzvf $Python3Path -C /opt/python-aws-sam-cli

ls /opt/python-aws-sam-cli

cd /tmp/awslabs-aws-sam-cli*

