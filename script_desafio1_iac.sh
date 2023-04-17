
#!/bin/bash

echo "criando diretorios"
mkdir /publico /adm /ven /sec
echo " criando grupos"
groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN
echo "usuarios"
useradd joao  -c " Joao" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G  GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -c "Roberto" -m  -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -c "amanda" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo " especificando permissoes aos diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 770 /publico

echo "Fim"

 



