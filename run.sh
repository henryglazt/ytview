echo "run: update & upgrade"
apt upgrade -y
apt update -y
apt update -y --fix-missing

echo "run: installing git"
apt install git -y
apt install git -y --fix-missing

echo "run: installing nano"
apt install nano -y

echo "run: installing zip"
apt install zip -y
apt install zip -y --fix-missing

echo "run: clone YTView"
git clone https://github.com/henryglazt/ytview.git --depth 10  && cd ytview

echo "run: setup YTView"
apt install pip -y 
apt install pip -y --fix-missing
python -m pip install --upgrade pip wheel
pip install "setuptools<59"
pip install -r requirements.txt
