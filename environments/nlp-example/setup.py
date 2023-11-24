from setuptools import find_packages, setup

with open('requirements.txt') as f:
    required = f.readlines()

setup(
    name="nlp_example",
    packages=find_packages(exclude=["nlp_example_tests"]),
    install_requires=required,
    extras_require={"dev": ["dagster-webserver", "pytest"]},
)
