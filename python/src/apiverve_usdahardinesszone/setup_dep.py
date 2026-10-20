from setuptools import setup, find_packages

setup(
    name='apiverve_usdahardinesszone',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='USDA Hardiness Zone looks up the plant hardiness zone by ZIP code, mapping any US ZIP code to its zone title and temperature range. Paid plans add the zone classification code, Celsius values, and plant survival recommendations.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/hardinesszone?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
