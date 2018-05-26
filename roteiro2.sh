Referencias

http://www.odooerpnews.com.br/2016/11/11/instalar-o-odoo-10/
https://github.com/Trust-Code/Tutorial-Instalacao
http://cleber95.wixsite.com/cleberianes/single-post/2017/03/13/Instalar-o-ERP-Odoo-10-no-Ubuntu-Server
https://odoobrasil.wordpress.com/2016/10/31/instalando-odoo-erp-localizacao-brasileira-linux/


odoo 10 br OCA - TrustCode

sudo apt-get update

export LANGUAGE=pt_BR.UTF-8

export LANG=pt_BR.UTF-8

sudo locale-gen pt_BR pt_BR.UTF-8

sudo dpkg-reconfigure locales

reboot


Instalar o postgresql

sudo apt-get install postgresql

Criar user odoo

sudo adduser --system --home=/opt/odoo --group odoo

Criar banco e dar permissão

sudo su postgres
psql

  Alterar a senha do usuário postgres que é o usuário padrão.

        postgres=#  alter user postgres with password 'definer_senha';
		
 Criar o usuário Odoo com os privilégios necessários e definir senha:

        postgres=# create user odoo superuser inherit createdb createrole noreplication;

        postgres=#  alter user postgres with password 'definer_senha';

        postgres=# \q

        exit
		
		
 Alterar o arquivo pg_hba.conf e o postgresql.conf para que seja possível o acesso remoto ao banco
 
   $ sudo su

   # vim /etc/postgresql/9.5/main/pg_hba.conf

Adicione, ao final do arquivo, a linha:

     host    all             all             0.0.0.0/0                md5
 * Mas essa linha deve ser alterada no caso de sistema em produção para restringir a sua rede.
 
 # vim /etc/postgresql/9.5/main/postgresql.conf

    Troque a linha:

  #listen_addresses = 'localhost'
          Por:
   listen_addresses = '*'

     Reinicialize o postgresql

# service postgresql restart

exit

Instalar as dependências do Sistema Operacional.


$ sudo apt-get install python-pip libxml2-dev libxslt-dev libevent-dev libsasl2-dev libldap2-dev libpq-dev libjpeg-dev nodejs npm

$ sudo apt-get install python-libxml2 libxmlsec1-dev python-openssl python-cffi

$ sudo apt-get install zlib1g-dev fontconfig libfreetype6 libfreetype6-dev libx11-6 libxext6 libxrender1 libjpeg-turbo8
$ sudo apt-get install git
$ sudo apt-get install build-essential autoconf libtool pkg-config python-opengl python-imaging python-pyrex python-pyside.qtopengl idle-python2.7 qt4-dev-tools qt4-designer libqtgui4 libqtcore4 libqt4-xml libqt4-test libqt4-script libqt4-network libqt4-dbus python-qt4 python-qt4-gl libgle3 python-dev libpq-dev 

$ sudo apt-get install subversion git bzr bzrtools python-pip postgresql python-all-dev python-dev python-setuptools libxml2-dev libxslt1-dev libevent-dev libsasl2-dev libldap2-dev pkg-config libtiff5-dev libjpeg8-dev libjpeg-dev zlib1g-dev libfreetype6-dev liblcms2-dev liblcms2-utils libwebp-dev tcl8.6-dev tk8.6-dev python-tk libyaml-dev fontconfig

$ sudo apt-get install python-dev python-yaml python-feedparser python-geoip python-imaging python-pybabel python-unicodecsv wkhtmltopdf libxml2-dev libxmlsec1-dev python-argparse python-babel python-cups python-dateutil python-decorator python-docutils python-feedparser python-gdata python-gevent python-greenlet python-jinja2 python-libxslt1 python-lxml python-mako python-markupsafe python-mock python-openid python-passlib python-psutil python-psycopg2 python-pychart python-pydot python-pyparsing python-pypdf python-ldap python-yaml python-reportlab python-requests python-simplejson python-six python-tz python-unittest2 python-vatnumber python-vobject python-webdav python-werkzeug python-wsgiref python-xlwt python-zsi python-dev libpq-dev poppler-utils python-pdftools antiword

Instalar e atualizar as dependências do python

sudo pip install --upgrade pip
sudo pip install -U setuptools 
sudo easy_install greenlet   
sudo easy_install gevent
sudo apt-get install -y python-matplotlib
sudo apt-get install -y font-manager

sudo apt-get install apache2

sudo apt-get install python-pip
	
sudo apt-get install python-setuptools

sudo pip install pyserial==2.7

sudo pip install psycogreen==1.0

sudo pip install pyusb==1.0.0b1

sudo pip install qrcode==5.0.1
    
sudo pip install Pillow==2.5.1

sudo pip install boto==2.38.0

sudo pip install oerplib==0.8.4

sudo pip install jcconv==0.2.3

sudo pip install pytz==2014.4
	
sudo pip install pysftp
	
sudo pip install num2words
	
sudo pip install suds

sudo pip install signxml
	
sudo pip install pyboleto

	
	
cd ~/
criar pasta para download de dependencias

mkdir dependencias
cd dependencias

vim pip-requirements

copiar e colar dentro do arquivo pip-requirements

Babel==1.3
Jinja2==2.7.3
Mako==1.0.1
MarkupSafe==0.23
Pillow==2.7.0
Python-Chart==1.39
PyYAML==3.11
Werkzeug==0.9.6
argparse==1.2.1
decorator==3.4.0
docutils==0.12
feedparser==5.1.3
gdata==2.0.18
gevent==1.0.2
greenlet==0.4.7
jcconv==0.2.3
lxml==3.4.1
mock==1.0.1
ofxparse==0.14
passlib==1.6.2
psutil==2.2.0
psycogreen==1.0
psycopg2==2.5.4
pyPdf==1.13
pydot==1.0.2
pyparsing==2.0.3
pyserial==2.7
python-dateutil==2.4.0
python-ldap==2.4.19
python-openid==2.2.5
pytz==2014.10
pyusb==1.0.0b2
qrcode==5.1
reportlab==3.1.44
requests==2.6.0
six==1.9.0
suds-jurko==0.6
vobject==0.6.6
wsgiref==0.1.2
XlsxWriter==0.7.7
xlwt==0.7.5
openpyxl==2.4.0-b1
boto==2.38.0
odoorpc
suds_requests
pytrustnfe
python-boleto
python-cnab
http://labs.libre-entreprise.org/frs/download.php/897/pyxmlsec-0.3.1.tar.gz



vim apt-requeriments
copiar e colar dentro do apt-requeriments

##### Dependências Odoo #####
python-pip
libxml2-dev
libxslt-dev
libevent-dev
libsasl2-dev
libldap2-dev
libpq-dev
libjpeg-dev
nodejs
npm

##### Dependências da Localização Brasileira #####
python-libxml2
libxmlsec1-dev
python-openssl
python-cffi

##### Dependências do WKHTMLTOX #####
zlib1g-dev
fontconfig
libfreetype6
libx11-6
libxext6
libxrender1
libjpeg-turbo8


##### Ferramentas Extras #####
git



sudo apt-get install -y --no-install-recommends $(grep -v '^#' apt-requeriments)
sudo pip install -r pip-requirements
sudo npm install -g less
sudo ln -s /usr/bin/nodejs /usr/bin/node

wget http://download.gna.org/wkhtmltopdf/0.12/0.12.1/wkhtmltox-0.12.1_linux-trusty-amd64.deb #Altere o download se necessário

sudo dpkg -i wkhtmltox-0.12.1_linux-trusty-amd64.deb

sudo cp /usr/local/bin/wkhtmltopdf /usr/bin

sudo cp /usr/local/bin/wkhtmltoimage /usr/bin
wkhtmltopdf --version # Se a versão for 0.12.1, está correta.

sudo su - odoo -s /bin/bash
git clone https://github.com/odoo/odoo.git --branch 10.0 .
exit

sudo cp /opt/odoo/odoo/debian/odoo.conf /etc/odoo-server.conf
sudo chown odoo: /etc/odoo-server.conf
sudo chmod 640 /etc/odoo-server.conf

vim /etc/odoo-server.conf

[options]
; This is the password that allows database operations:
; admin_passwd = PASSWORD
db_host = False
db_port = False
db_user = odoo
db_password = False
addons_path = /opt/odoo/addons,/opt/odoo/odoo/addons
;Log Settings
logfile = /var/log/odoo/odoo.log
log_level = error

criar pasta para os logs do odoo

sudo mkdir /var/log/odoo

dar permissão para o oddo em var/log/odoo

sudo chown -R odoo:root /var/log/odoo

download do arquivo para que o odoo inicialize no boot

cd /etc/init.d
sudo wget https://raw.githubusercontent.com/odoo/odoo/10.0/debian/init -O odoo-server
sudo chmod 755 /etc/init.d/odoo-server
sudo chown root: /etc/init.d/odoo-server

sudo vim /etc/init.d/odoo-server

DAEMON=/usr/bin/odoo mudar para diretório /opt/odoo/odoo-bin 
CONFIG=/etc/odoo/odoo.conf mudar para /etc/odoo-server.conf

sudo update-rc.d odoo-server defaults

sudo /etc/init.d/odoo-server start
ps aux | grep odoo

http://IP_ou_domain:8069

sudo /etc/init.d/odoo-server stop

sudo su - odoo -s /bin/bash

criar pasta para os arquivos da localização OCA e Trustcode

mkdir localizacao

cd localizacao

git clone https://github.com/oca/account-fiscal-rule.git --branch 10.0 --depth 1

git clone https://github.com/odoo-brazil/odoo-brazil-eletronic-documents.git --branch 10.0 --depth 1

git clone https://github.com/OCA/server-tools --branch 10.0 --depth 1

cd ..

mkdir trust

cd trust

git clone https://github.com/Trust-Code/odoo-brasil.git --branch 10.0 --depth 1

git clone https://github.com/Trust-Code/trustcode-addons.git --branch 10.0 --depth 1

exit

cd ~/dependencias

git clone https://github.com/odoo-brazil/PySPED.git --branch 8.0

cd PySPED

sudo python setup.py install

cd ~/dependencias

git clone https://github.com/odoo-brazil/pyxmlsec --branch master

cd pyxmlsec

sudo python setup.py install

editar o arquivo odoo-server.conf e inserir o local dos arquivos da localização brasileira OCA e Trustcode

sudo vim /etc/odoo-server.conf

addons_path = /opt/odoo/odoo/addons,/opt/odoo/odoo/odoo/addons,/opt/odoo/localizacao/l10n-brazil,/opt/odoo/localizacao/account-fiscal-rule,/opt/odoo/localizacao/odoo-brazil-eletronic-documents,/opt/odoo/localizacao/server-tools,/opt/odoo/trust/odoo-brasil,/opt/odoo/trust/trustcode-addons


criar pastas onde serão armazenados os arquivos de NFe

cd /opt

sudo mkdir nfe
sudo mkdir nfe/import
sudo mkdir nfe/export
sudo mkdir nfe/backup
sudo chown -R odoo:odoo nfe

sudo /etc/init.d/odoo-server start
acessar o oddo pelo endereço web do servidor e criar a base de dados

http://IP_ou_domain:8069
