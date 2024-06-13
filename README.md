<h1 align=center> Setup MkDocs on IBMi</h1>
 
<p align = center> Practical Guide </p>
       
><h3> Table of Contents 
</h3>

```bash
#PROMPT_COMMAND='__posh_git_ps1 "${VIRTUAL_ENV:+(`basename $VIRTUAL_ENV`)}\[\e[32m\]\u\[\e[0m\]@\h:\[\e[33m\]\w\[\e[0m\] " "\\\$ ";'$PROMPT_COMMANDexport PATH=/QOpenSys/pkgs/bin:/QOpenSys/pkgs/bin:/QOpenSys/usr/bin:/usr/ccs/bin:/QOpenSys/usr/bin/X11:/usr/sbin:.:/usr/bin
```
# Pre-Requisites
- Install gcc*, python and it's related packages using the below command
  ```bash
  yum install gcc* python3-devel python3-pip -y
  ```
  <br>

- 

# Install MkDocs in a python virtual environment
- It is better to install MkDocs inside a python virtual environment. Why? Because MkDocs needed some extra python packages to run and we don't want to install them on a system level. For that purpose we'll create our own Python Sandbox a.k.a virtual environment to happily install and run MkDocs without any issues. 
  
- Create a new directory called `mkdocs` in your root folder (If you don't have access to root folder, then remove the '/' so that the directory will be created in your home folder itself) and navigate into it.
  ```bash
  mkdir /mkdocs && cd /mkdocs
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

1)	Installed gcc* via yum
2)	Installed python3-devel python3-pip
3)	Installed mkdocs via pip
4)	Installed material theme (via pip) and did customization
Installation - Material for MkDocs (squidfunk.github.io)
Pip3 install mkdocs-material
5)	Check the mkdocs.yml file 
6)	ADDENVVAR ‘QIBM_MULTI_THREADED’ ‘Y’

cd /

mkdocs new docproject

cd /docproject && mkdocs serve --dev-addr=0.0.0.0:8556
	source /docproject/python-modules/bin/activate
	nohup cd /docproject && nohup mkdocs serve --dev-addr=0.0.0.0:8555

source /home/RAVISANKAR/mydoc/pyfiles/bin/activate && cd /home/RAVISANKAR/mydoc/docproject && 


- 




# Start MkDocs

# Configure your MkDocs website

# Footnotes/References

