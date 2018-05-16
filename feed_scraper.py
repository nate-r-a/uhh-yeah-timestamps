from __future__ import print_function
from bs4 import BeautifulSoup
import requests
import re
import json

page = requests.get("https://feeds.feedburner.com/uhhyeahdude/podcast.html")
soup = BeautifulSoup(page.content, 'html.parser')
# print(soup)
items = soup.findAll("item")
print(items[0])
text = items[0].find("itunes:subtitle").get_text()
url = items[0].find("enclosure")["url"]
print(url)

# This is good to go:
# text_in_items = [item.find("itunes:subtitle").get_text() for item in items]
# [print(text.split("\n")[0]) for text in text_in_items]