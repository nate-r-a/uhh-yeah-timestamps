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

item_json = []
for item in items:
  item_dict = {}
  episode_name = item.find("title").get_text()[:11]
  item_dict["number"] = int(episode_name[-3:])
  item_dict["datestring"] = item.find("title").get_text()[12:]
  item_dict["url"] = item.find("enclosure")["url"]
  item_dict["archived"] = False
  item_dict["live"] = False

  duration = item.find("itunes:duration").get_text()
  print(duration)
  hours = 0
  if len(duration) == 7:
    hours = int(duration[0]) * 3600
  elif len(duration) == 8:
    # Weird edge case where a duration was listed improperly
    hours = int(duration[0:2]) * 3600

    
  minutes = int(duration[-5:-3]) * 60
  seconds = int(duration[-2:])
    

  duration = hours + minutes + seconds

  item_dict["duration"] = duration
  item_json.append(item_dict)

print(item_json)

with open('episodes.json', 'w') as outfile:  
    json.dump(item_json, outfile)


# description = items[0].find("itunes:subtitle").get_text().split("\n")[0]
# print(description)

# duration = items[0].find("itunes:duration").get_text()
# print(duration)
# hours = 0
# if len(duration) == 7:
#   hours = int(duration[0]) * 3600

# minutes = int(duration[2:4]) * 60
# seconds = int(duration[-2:])
# duration = hours + minutes + seconds
# print(duration)

# url = items[0].find("enclosure")["url"]
# print(url)

# episode_name = items[0].find("title").get_text()[:11]
# print(episode_name)

# episode_number = int(episode_name[-3:])
# print(episode_number)

# date = items[0].find("title").get_text()[12:] # unformatted
# print(date)

# filename = items[0].find

# This is good to go:
# text_in_items = [item.find("itunes:subtitle").get_text() for item in items]
# [print(text.split("\n")[0]) for text in text_in_items]