cd /opt/ && sudo wget https://community-static.aldebaran.com/resources/2.8.7/Python+SDK/pynaoqi-python2.7-2.8.7.4-linux64-20210819_141148.tar.gz
sudo tar -xzf pynaoqi-python2.7-2.8.7.4-linux64-20210819_141148.tar.gz && sudo rm pynaoqi-python2.7-2.8.7.4-linux64-20210819_141148.tar.gz
grep -qxF "export PYTHONPATH=\${PYTHONPATH}:~/pynaoqi-python2.7-2.8.7.4-linux64-20210819_141148/lib/python2.7/site-packages" ~/.bashrc || echo "export PYTHONPATH=\${PYTHONPATH}:~/pynaoqi-python2.7-2.8.7.4-linux64-20210819_141148/lib/python2.7/site-packages" >> ~/.bashrc

sudo wget https://community-static.aldebaran.com/resources/2.5.10/Choregraphe/choregraphe-suite-2.5.10.7-linux64.tar.gz
sudo tar -xzf choregraphe-suite-2.5.10.7-linux64.tar.gz && sudo rm choregraphe-suite-2.5.10.7-linux64.tar.gz
sudo ln -sf /usr/lib/x86_64-linux-gnu/libz.so /opt/choregraphe-suite-2.5.10.7-linux64/lib/libz.so.1
grep -qxF "alias choregraphe=\"/opt/choregraphe-suite-2.5.10.7-linux64/choregraphe\"" ~/.bashrc || echo "alias choregraphe=\"/opt/choregraphe-suite-2.5.10.7-linux64/choregraphe\"" >> ~/.bashrc && source ~/.bashrc
RED='\033[0;31m'
NC='\033[0m' # No Color
On_Yellow='\033[43m'
echo -e "${RED} ${On_Yellow} When you see a prompt asking for a licence just past the following key: \n 654e-4564-153c-6518-2f44-7562-206e-4c60-5f47-5f45${NC}"
/opt/choregraphe-suite-2.5.10.7-linux64/choregraphe
