set -e

apt-get update -y
export DEBIAN_FRONTEND=noninteractive
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
apt-get -y install --no-install-recommends nodejs build-essential cmake ninja-build git valgrind ccache mold fish python3-dev python3-setuptools python3-pip cmake-curses-gui nodejs openjdk-17-jdk default-jdk gdb
pip install clang-format==11.1.0.2 cmake-format
