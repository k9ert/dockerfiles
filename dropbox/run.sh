#/bin/bash



[ -f dropbox.py ] || wget -O dropbox.py https://www.dropbox.com/download?dl=packages/dropbox.py

chmod u+x dropbox.py

/dropbox.py start

WAITSECONDS=1
while true
do
  echo "waiting $WAITSECONDS"
  sleep $WAITSECONDS
  WAITSECONDS=`expr $WAITSECONDS + 1`
  
done
