include:
    - requirements

/home/vagrant/learning-salt/venv:
    virtualenv.managed:
        - no_site_packages: True
        - runas: vagrant
        - requirements: salt://django/requirements.txt
        - require:
            - pkg: python-virtualenv

create Django project:
    cmd.run: 
        - user: vagrant 
        - name: ". venv/bin/activate && django-admin.py startproject
      --template=https://github.com/twoscoops/django-twoscoops-project/zipball/master
--extension=py,rst,html icecream && pip install -Ur
icecream/requirements/local.txt && python icecream/icecream/manage.py
syncdb --noinput"
        - cwd: /home/vagrant/learning-salt/
        - require:
            - virtualenv: /home/vagrant/learning-salt/venv
            - pkg: python-dev
