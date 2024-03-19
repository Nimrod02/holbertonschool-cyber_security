#!/bin/bash
lsb_release -s -i | awk '{print $1}'
