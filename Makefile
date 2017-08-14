prerequisites:
	mkdir -p ~/.envs/
	virtualenv --python=python2.7 PATH=~/bin:$PATH --no-site-packages

install_ansible:
	~/.envs/ansible-backup/bin/pip install -r requirements.txt

install_roles:
	~/.envs/ansible-backup/bin/ansible-galaxy install -r roles.txt -v -p ./vendor/roles/
