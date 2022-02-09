if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Jackandoggy/private.git /private
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /private
fi
cd /private
pip3 install -U -r requirements.txt
echo "Starting LuciferMoringstar RoBot...."
python3 main.py
