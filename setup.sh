#!/QOpenSys/usr/bin/bash
# ------------------------------------------------------------------------- #
# Program       : setup.sh
# Author        : Ravisankar Pandian
# Company       : Programmers.io
# Date Written  : 24/05/2024
# Copyright     : Programmers.io
# ------------------------------------------------------------------------- #

# Function to print the progress bar characters.
progress_bar() {
    # $1 is the total work
    # $2 is the work done so far
    local total_work=$1
    local work_done=$2
    local progress=$((work_done*20/total_work))  # 20 because 100/5=20
    local filled_part=$(printf "%${progress}s" "")
    local empty_part=$(printf "%$((20-progress))s" "")  # 20 because 100/5=20
    printf "|%s%s| %s%%\r" "${filled_part// /#}" "${empty_part}" "$((work_done*100/total_work))"
}

# Function to show the progress bar
show_progress(){
  total_work=$1
  echo "doing it at $1 %"
  for i in $(seq 1 $total_work); do
      # Simulate some work with sleep
      sleep 0.005
      progress_bar $total_work $i
  done
  echo ""  # Newline after progress bar

}


######################################################################
########## MAIN LOGIC ###########################################
######################################################################

# Set bash as the default shell.
/QOpenSys/pkgs/bin/chsh -s /QOpenSys/pkgs/bin/bash $USER
echo "Changed the default shell to bash..."

# create a .profile file in your home folder to store the environment variables.
echo "Setup the environment variables..."
show_progress 5
cd ~
echo "export PATH=/QOpenSys/pkgs/bin:$PATH" >> .profile
echo "export JAVA_HOME=/QOpenSys/QIBM/ProdData/JavaVM/jdk17/64bit" >> .profile
echo "export JENKINS_HOME=/home/$USER/jenkins" >> .profile
echo "export GITBUCKET_HOME=/home/$USER/gitbucket" >> .profile
source ~/.profile
echo "source ~/.gitprompt.sh" >> .profile

###############-------------- >>> Need to add the PS1 variable change here

# Download the Git Prompt from GitHub
echo "Download the Git Prompt from GitHub..."
wget --show-progress https://raw.githubusercontent.com/ravisankar-PIO/gitonibmi/blob/main/gitprompt.sh
mv gitprompt.sh .gitprompt.sh


# Update and upgrade the open source packages
echo "update the yum repository and existing packages..."
yum update -y  && yum upgrade -y 


# Install GIT
echo "Install GIT..."
yum install git -y
git config --global user.name 'Ravisankar Pandian' 
git config --global user.email ravisankar.pandian@programmers.io
ssh-keygen -t ed25519 -C "ravisankar.pandian@programmers.io" -f ~/.ssh/id_ed25519 -N ""

# Download Jenkins
mkdir -p ~/jenkins
cd ~/jenkins
echo "Download Jenkins..."
wget --show-progress http://mirrors.jenkins.io/war-stable/latest/jenkins.war

# Download GitBucket
mkdir -p ~/gitbucket
cd ~/gitbucket
wget --show-progress https://github.com/gitbucket/gitbucket/releases/download/4.40.0/gitbucket.war

# Install Service Commander
echo "Install Service Commander..."
yum install service-commander -y


echo -e '|============================================================|'
echo -e '| Initial setup for Bash Prompt, Git, Service-commander and  |'
echo -e "|                    GitBucket are completed!                |"
echo -e '|============================================================|'