<h1 align=center> Setup MkDocs on IBMi</h1>
 
<p align = center> Practical Guide </p>
       
><h3> Table of Contents 
</h3>


# Pre-Requisites
- Install gcc*, python and it's related packages using the below command
  ```bash
  yum install gcc* python3-devel python3-pip -y
  ```
  <br>

- 

# Setup Python Virtual Environment folder
- Create a new directory called `mkdocs` in your root folder (If you don't have access to root folder, then remove the '/' so that the directory will be created in your home folder itself) and navigate into it.
  ```bash
  mkdir /mkdocs && cd/mkdocs
  ```
  <br>

- Enter below command to create a python virtual environment called `mkpy` in `/mkdocs` folder
  ```bash
  python -m venv --system-site-packages mkpy
  ```
  <br>

- Enter into the python virtual environment
  ```bash
  source mkpy/bin/activate
  ```
  <br>

- Upgrade the pip.
  ```bash 
  pip3 install --upgrade pip
  ```
  <br>

- Install MkDocs via pip
  ```bash
  pip3 install mkdocs
  ```
  <br>

- Install Material theme **(Optional)**
  ```bash
  pip3 install mkdocs-material
  ```
  <br>

- 




# Start MkDocs

# Configure your MkDocs website

# Footnotes/References

