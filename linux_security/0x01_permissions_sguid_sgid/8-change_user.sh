#!/bin/bash
find "$1" -type f -user user1 -exec chown user3
