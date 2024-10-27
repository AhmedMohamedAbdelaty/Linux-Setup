#!/usr/bin/env python3

import requests
import json
from datetime import datetime, timedelta

def fetch_prayer_times():
    url = "http://api.aladhan.com/v1/timingsByCity?city=Cairo&country=Egypt&method=2"
    response = requests.get(url)
    data = response.json()
    return data['data']['timings']

def time_until_next_prayer(prayer_times):
    now = datetime.now()
    for prayer, time_str in prayer_times.items():
        prayer_time = datetime.strptime(time_str, "%H:%M") + timedelta(hours=now.hour, minutes=now.minute)
        if prayer_time > now:
            return prayer, prayer_time - now
    return "Fajr", datetime.strptime(prayer_times["Fajr"], "%H:%M") + timedelta(days=1) - now

def main():
    prayer_times = fetch_prayer_times()
    next_prayer, time_remaining = time_until_next_prayer(prayer_times)
    output = {
        "text": f"{next_prayer} in {time_remaining}",
        "class": "custom-prayertimes",
        "alt": "prayertimes"
    }
    print(json.dumps(output))

if __name__ == "__main__":
    main()
