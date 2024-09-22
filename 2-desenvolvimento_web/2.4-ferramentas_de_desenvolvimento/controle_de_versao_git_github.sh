git --version # git version x.xx.x

# install git
sudo apt update
sudo apt upgrade
sudo apt install git
sudo apt install curl

# git config
git config --global user.name "name"
git config --global user.email "address@email.com"
git config --global credential.helper cache
git config --list # git config --global user.name/email
nano ~/.gitconfig # user info edit

# new repository
cd ~/<file_directory>
echo "#" >> README.md
git init
git add . # git add README.md
git commit -m "Commit changes"
# sudo snap install curl
curl -u <user_name>:<personal_token> https://api.github.com/user/repos -d '{"name":"<repository_name>"}' # [https://github.com/settings/tokens/new](https://docs.github.com/pt/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#como-criar-um-personal-access-token-classic)
git branch -M main
git remote add origin https://github.com/<user_name>/<repository_name>.git
git push -u origin main

# existing repository
git remote add origin https://github.com/<user_name>/<repository_name>.git
git branch -M main
git push -u origin main

# clone repository
git clone https://github.com/<user_name>/<repository_name>.git
Username: OWN_USERNAME
Password: PERSONAL_ACCESS_TOKEN
git config --global credential.helper cache

# creating new branch
cd ~/<file_directory>
git init

# shorthand:
git checkout -b '<user_name>/<branch_name>' # get out of main branch and goes to the new branch

# repository status
cd ~/<file_directory>
git status

# add file working tree
## git add <file_name>.<type_file>

# commit file in branch
## git commit -m "Commit changes"

# shorthand:
git commit -am "Commit changes"

# push file in branch
git push -u origin <branch_name>

# update branch changes
git pull origin <branch_name>

# file version
git diff

# commit history
git log # git shortlog
# clear
git show <value_hash>

# undo
git reset <value_hash>
git checkout <file_name>

.gitignore
#/dir
#/dir/*.file
#.file
