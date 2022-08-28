#! /bin/bash

eco  " ----------------------------- "
echo  " 1° - CRIANDO OS DIRETÓRIOS... "
eco  " ----------------------------- "
eco  " "

mkdir publico adm ven sec

eco  " ------------------------- "
echo  " 2° - CRIANDO OS GRUPOS... "
eco  " ------------------------- "
eco  " "

eco  " ------- "
echo  " GRP_ADM "
eco  " ------- "
eco  " "

groupadd GRP_ADM

eco  " ------- "
echo  " GRP_VEN "
eco  " ------- "
eco  " "

agrupar adicionar GRP_VEN

eco  " ------- "
echo  " GRP_SEC "
eco  " ------- "
eco  " "

groupadd GRP_SEC

eco  " ------------------------------------------------ ---------- "
echo  " 3° - CRIANDO USUÁRIOS E ADICIONANDO-OS AOS SEUS RESPECTIVOS GRUPOS... "
eco  " ------------------------------------------------ ---------- "
eco  " "

eco  " --------------------- "
echo  " USUÁRIOS DO 'GRP_ADM' "
eco  " --------------------- "
eco  " "

useradd carlos -mc " Carlos da Silva " -s /bin/bash -p $( openssl passwd -crypt Senha123 ) -G GRP_ADM
useradd maria -mc " Maria Clara " -s /bin/bash -p $( openssl passwd -crypt Senha123 ) -G GRP_ADM
useradd joao -mc " João Andrade " -s /bin/bash -p $( openssl passwd -crypt Senha123 ) -G GRP_ADM

eco  " --------------------- "
echo  " USUÁRIOS DO 'GRP_VEN' "
eco  " --------------------- "
eco  " "

useradd debora -mc " Débora Oliveira " -s /bin/bash -p $( openssl passwd -crypt Senha123 ) -G GRP_VEN
useradd sebastiana -mc " Sebastiana Souza " -s /bin/bash -p $( openssl passwd -crypt Senha123 ) -G GRP_VEN
useradd roberto -mc " Roberto Barbosa " -s /bin/bash -p $( openssl passwd -crypt Senha123 ) -G GRP_VEN

eco  " --------------------- "
echo  " USUÁRIOS DO 'GRP_SEC' "
eco  " --------------------- "
eco  " "

useradd josefina -mc " Josefina Silva " -s /bin/bash -p $( openssl passwd -crypt Senha123 ) -G GRP_SEC
useradd amanda -mc " Amanda Amorin " -s /bin/bash -p $( openssl passwd -crypt Senha123 ) -G GRP_SEC
useradd rogerio -mc " Rogério Prado " -s /bin/bash -p $( openssl passwd -crypt Senha123 ) -G GRP_SEC

eco  " ------------------------------------------------ ------------------------ "
echo  " 4° - DANDO PERMISSÃO TOTAL A TODOS OS USUÁRIOS AO DIRETÓRIO 'PUBLICO'... "
eco  " ------------------------------------------------ ------------------------ "
eco  " "

chmod 777 publico/

eco  " ------------------------------------------------ "
echo  " 5° - ALTERANDO O GRUPO DOS DIRETÓRIOS CRIADOS... "
eco  " ------------------------------------------------ "
eco  " "

eco  " --------------- "
echo  " DIRETÓRIO 'ADM' "
eco  " --------------- "
eco  " "

chown root: GRP_ADM adm/

eco  " --------------- "
echo  " DIRETÓRIO 'VEN' "
eco  " --------------- "
eco  " "

chown root:GRP_VEN ven/

eco  " --------------- "
echo  " DIRETÓRIO 'SEC' "
eco  " --------------- "
eco  " "

chown root:GRP_SEC seg/

echo  " FINALIZANDO... "
echo  " FIM!!! "
