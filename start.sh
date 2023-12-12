if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Moviezclubhouse/Liza.git /Liza
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Liza
fi
cd /DQ-The-File-Donor
pip3 install -U -r requirements.txt
echo "Starting Liza...."
python3 bot.py
