#!/usr/bin/env python

from setuptools import find_packages, setup

setup(name='virtualenvwrapperhack',
      version='0.1.2',
      description='Python virtualenvwrapper hacks',
      long_description = open('README.md', 'rt').read(),
      author='Diogo Munaro Vieira',
      author_email='diogo.mvieira@gmail.com',
      packages=find_packages(),
      include_package_data=True,
      install_requires=['virtualenv',
                        'virtualenvwrapper'],
      data_files = [ ('/usr/local/bin/', ['virtualenvwrapperhack.sh']) ]
     )
