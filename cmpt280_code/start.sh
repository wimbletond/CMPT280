#!/bin/bash

cd malware &
python 3 trojan.py
cd .. &
python 3 detection.py
