sudo snap install --classic go

echo "export GOROOT=/snap/go" >> ~/.profile
echo "export GOPATH=$HOME/go" >> ~/.profile
echo "export PATH=$GOPATH/bin:$GOROOT/bin:$PATH" >> ~/.profile