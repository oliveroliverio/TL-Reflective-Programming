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
