#!/usr/bin/sh
cd malware &
python trojan.py
cd .. &
python detection.py
