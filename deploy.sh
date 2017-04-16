pi1=pi.local
pi2=pi2.local

cat ~/.ssh/id_rsa.pub | ssh pi@pi.local 'cat >> .ssh/authorized_keys'
cat ~/.ssh/id_rsa.pub | ssh pi@pi2.local 'cat >> .ssh/authorized_keys'

scp install.sh pi@pi.local: || exit 1
ssh pi@pi.local 'sh -x ~/install.sh'
