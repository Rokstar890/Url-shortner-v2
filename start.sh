if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Rokstar890/Url-shortner-v2.git /Url-shortner-v2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Url-shortner-v2
fi
cd /Url-shortner-v2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
