# make directories based on an array of items

dir_array=("public" "src" "tests")
for dir in ${dir_array[@]}; do
  mkdir $dir
done


# make array of components in src folder
cd src
component_array=("Expense" "NewExpense" "UI")
for component in ${component_array[@]}; do
  mkdir -p components/$component
done

# go up one level
cd ..

# hash/dictionary in bash: declare associative array first
# if you need to create filenames specific to file type
# i.e., all names with Foo, Bar, Doo with .js extension
# and Bee, Bum, Boo with .py extension

# example below
# declare -A animals=( ["moo"]="cow" ["woof"]="dog")
# echo "${animals[moo]}"
# for sound in "${!animals[@]}"; do echo "$sound - ${animals[$sound]}"; done

# now create files with EOF

cat <<\EOF >> test.py
import requests
from lxml import html

USERNAME = "test@gmail.com"
PASSWORD = "test"

LOGIN_URL = "https://www.codecademy.com/login"
URL = "https://www.codecademy.com/learn/paths/machine-learning"

payload = {
	"user[password]": "<USER NAME>",
	"user[password]": "<PASSWORD>",
}
session_requests = requests.session()
result = session_requests.get(login_url)
tree = html.fromstring(result.text)
EOF