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

print()

description = items[0].find("itunes:subtitle").get_text().split("\n")[0]
print(description)

duration = items[0].find("itunes:duration").get_text()
print(duration)
hours = 0
if len(duration) == 7:
  hours = int(duration[0]) * 3600

minutes = int(duration[2:4]) * 60
seconds = int(duration[-2:])
duration = hours + minutes + seconds
print(duration)

url = items[0].find("enclosure")["url"]
print(url)

episode_name = items[0].find("title").get_text()[:11]
print(episode_name)

episode_number = int(episode_name[-3:])
print(episode_number)

date = items[0].find("title").get_text()[12:] # unformatted
print(date)

# This is good to go:
# text_in_items = [item.find("itunes:subtitle").get_text() for item in items]
# [print(text.split("\n")[0]) for text in text_in_items]