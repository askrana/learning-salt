Using this repo as a place to put code for a blog series on learning Salt
Stack. Using Django (since that is what I use it for) project. 

Initially starting out deploying Two Scoops of Django's project layout.
https://github.com/twoscoops/django-twoscoops-project

Will then add support for Postgresql, Memcache, Nginx, and uWSGI.

The block below is a tree output as of 2013/03/12


.. code-block:: shell

    .
    ├── django
    │   ├── init.sls
    │   └── requirements.txt
    ├── minion.conf
    ├── README.rst
    ├── requirements
    │   └── init.sls
    ├── top.sls
    └── Vagrantfile

