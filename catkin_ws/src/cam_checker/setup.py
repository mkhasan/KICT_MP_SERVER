from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup

# fetch values from package.xml

setup(**generate_distutils_setup(
    packages=['cam_checker'],
    package_dir={'': 'src'}
))
