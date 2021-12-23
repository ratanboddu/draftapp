# -*- coding: utf-8 -*-

import setuptools
from setuptools import find_packages

with open("README.md", "r", encoding="utf-8") as fh:
    long_description = fh.read()

setuptools.setup(
    name="draftapp-ratanboddu",
    version="0.0.2",
    author="Ratan Boddu",
    author_email="ratanboddu@gmail.com",
    description="Build adaptable, scalable and production-grade web applications within seconds",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/ratanboddu/draftapp",
    project_urls={
        "Bug Tracker": "https://github.com/ratanboddu/draftapp/issues",
    },
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    python_requires=">=3.6",
    scripts=["bin/draftapp"],
    packages=find_packages(),
    include_package_data=True,
)
