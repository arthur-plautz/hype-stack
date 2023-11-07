from setuptools import find_packages, setup

with open('requirements.txt') as f:
    required = f.readlines()

setup(
    name="hype_dagster",
    packages=find_packages(exclude=["hype_dagster_tests"]),
    install_requires=required,
    extras_require={"dev": ["dagster-webserver", "pytest"]},
)
