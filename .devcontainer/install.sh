set -e

export DEBIAN_FRONTEND=noninteractive
apt-get update -y
apt-get upgrade -y
apt-get install -y software-properties-common # for add-apt-repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" --yes
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
apt-get -y install --no-install-recommends nodejs build-essential cmake ninja-build git valgrind ccache mold fish python3-dev python3-setuptools python3-pip cmake-curses-gui nodejs openjdk-17-jdk default-jdk gdb docker-ce
pip install clang-format==11.1.0.2 cmake-format
