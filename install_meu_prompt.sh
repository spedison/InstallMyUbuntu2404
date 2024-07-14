# Chame esse script antes de todos.
cp meu_prompt.sh $HOME/.
sudo apt install -y git
if [ $(cat $HOME/.bashrc | grep -v ^\# | grep meu_prompt | wc -l) -eq 0 ]; then
   echo 'source $HOME/meu_prompt.sh "yes"' >> $HOME/.bashrc
fi
source ~/.bashrc
