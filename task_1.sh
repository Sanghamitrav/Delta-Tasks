#!/bin/bash

#Task_1 Normal mode

echo "Hod" | xargs sudo useradd -m -s /bin/bash -c "Hod"
sudo passwd Hod
#sudo chsh -s /bin/bash Hod
sudo -u Hod mkdir /home/Hod/My_Folder
sudo chown Hod: /home/Hod
i=1
while [ $i -le 2 ]
do
  echo "Prof${i}" | xargs sudo useradd -m -s /bin/bash -c "Prof${i}"
  sudo passwd Prof${i}
  sudo -u Prof${i} mkdir /home/Prof${i}/Teaching_Material
  sudo chmod u+w /home/Hod /home/Prof${i}
  sudo chown Prof${i}: /home/Prof${i}
  sudo chmod u+w /home/Prof${i}
  x=1
  while [ $x -le 50 ]
  do
    touch /home/Prof${i}/Teaching_Material/q${x}.txt
    cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 100 | head -n 1 > q${x}.txt
    ((x++))
  done
  ((i++))
done
i_1=1
while [ $i_1 -le 20 ]
do
  echo "Student${i_1}" | xargs sudo useradd -m -s /bin/bash -c "Student${i_1}"
  sudo passwd Student${i_1}
  sudo -u Student${i_1} mkdir /home/Student${i_1}/HomeWork/{Prof_1 Work, Prof_2 Work}
  sudo shuf -zn8 -e /home/Prof1/*.txt | xargs -0 cp -vt /home/Student${i_1}/HomeWork/Prof_1 Work
  sudo shuf -zn8 -e /home/Prof2/*.txt | xargs -0 cp -vt /home/Student${i_1}/HomeWork/Prof_2 Work
  sudo chmod u+w /home/Hod /home/Student${i_1}
  while [ $i -le 2 ]
  do
    sudo chown Prof${i}: /home/Student${i_1}
  ((i++))
  done
  sudo chown Student${i_1}: /home/Student${i_1}
  sudo chmod u+w /home/Student${i_1}   
  ((i_1++))
done
#sudo chown Hod: /home/Hod
#sudo chmod u+w /home/Hod /home/Prof${i} /home/Student${i_1}
#sudo chown Prof${i}: /home/Prof${i} /home/Student${i_1}
#sudo chmod u+w /home/Prof${i}
#sudo chown Student${i_1}: /home/Student${i_1}
#sudo chmod u+w /home/Student${i_1}


