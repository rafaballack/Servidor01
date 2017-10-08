

echo "Clonando repositório oficial Odoo no GitHub. Isso pode demorar um bom tempo."
echo "Se sua internet é lenta, recomenda-se tomar um café enquanto aguarda."
git clone https://github.com/odoo/odoo.git opt/Servidor01/odoo

echo "Terminando o arquivo de configuração, quase lá."
rm opt/Servidor01/odoo/odoo-config
echo ""
echo "[options]" >> opt/Servidor01/odoo/odoo-config
echo "addons_path = addons,odoo/addons,opt/Servidor01/odoo-brasil" >> opt/Servidor01/odoo/odoo-config
echo "admin_passwd = admin" >> opt/Servidor01/odoo/odoo-config
echo "auto_reload = False" >> opt/Servidor01/odoo/odoo-config
echo "csv_internal_sep = ," >> opt/Servidor01/odoo/odoo-config
echo "db_host = localhost" >> opt/Servidor01/odoo/odoo-config
echo "db_maxconn = 64" >> opt/Servidor01/odoo/odoo-config
echo "db_name = False" >> opt/Servidor01/odoo/odoo-config
echo "db_port = False" >> opt/Servidor01/odoo/odoo-config
echo "db_template = template0" >> opt/Servidor01/odoo/odoo-config
echo "db_user = odoo" >> opt/Servidor01/odoo/odoo-config
echo "db_password = 123" >> opt/Servidor01/odoo/odoo-config

echo "Clonando repositório oficial dos módulos Odoo Brasil no GitHub."
echo "Agora falta pouco."
git clone https://github.com/Trust-Code/odoo-brasil.git opt/Servidor01/odoo-brasil

echo "==== Instalação e configuração Odoo Brasil completa ===="
echo "---- PostgreSQL ---- "
echo ">> Usuário: odoo -- Senha: 123"
echo ">> Usuário: postgres -- Senha = 123"
echo "---- Instância Odoo ----"
echo "Pasta de instalação: ~/odoo"
echo "Pasta de Addons: addons, ~/odoo/addons, ~/odoo-brasil"
echo "========================================================"
echo "A instalação está completa !"
echo "Obrigado por usar este script !!!"
