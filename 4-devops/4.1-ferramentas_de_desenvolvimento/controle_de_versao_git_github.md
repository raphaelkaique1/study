```Shell
git --version # git version x.xx.x

# install git
sudo apt update upgrade -y
sudo apt install git curl -y

# git config
git config --global user.name "<name>"
git config --global user.email "<address@email.com>"
git config --global credential.helper cache-store # cache: stores credentials in memory for a default period of 15 minutes. To configure the cache duration, you must use the --timeout flag and assign the desired time in seconds, example: cache --timeout=3600 || store: permanently stores credentials in a plain text file on disk. Because the file is plain, the credentials are visible in clear text, so caution should be taken when using this method on shared systems or in less secure environments.
git config --list # git config --global user=name/email & +
nano ~/.gitconfig # user info edit

# new repository
cd ~/<file_directory>
echo > .gitkeep
git init
# touch .gitignore
git add .
git commit -m "Commit changes"
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
Username: OWNER_USERNAME
Password: PERSONAL_ACCESS_TOKEN
git config --global credential.helper cache

# creating new branch
cd ~/<file_directory>
git init

# shorthand:
git checkout -b <branch_name> # get out of main branch and goes to the new branch
git checkout <branch_name> # goes to the branch especified

# repository status
cd ~/<file_directory>
git status
git remote add upstream <original_repository_url> # keeps the local repository up to date with changes from the original remote repository

# add file working tree
## git add <file_name>.<type_file>

# commit file in branch
## git commit -m "Commit changes"

# shorthand:
git commit -am "Commit changes"

# push file in branch
git push -u origin <branch_name>

# update branch changes
git pull <remote_branch> <actual_local_branch>
git pull origin <branch_name> # git pull = git fetch (download the remote/main branch) {+ git diff = shows old and new changes} + git merge (includes downloaded changes in local files)

# branches
git branch --help
git branch -v
git branch -M main
git branch -d <branch_name> # deletes especified branch

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
```
<a href="https://github.com/raphaelkaique1/study/blob/main/4-devops/4.1-ferramentas_de_desenvolvimento/progit.pdf">progit</a>

<a href="https://github.com/raphaelkaique1/study/blob/main/3-bancos_de_dados/3.2-nosql/mongodb_redis_neo4j.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#ferramentas_de_desenvolvimento">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/4-devops/4.1-ferramentas_de_desenvolvimento/ambientes_virtuais_venv_virtualenv.md">next</a>
<!--  -->