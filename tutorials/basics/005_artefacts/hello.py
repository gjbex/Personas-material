#!/usr/bin/env python

import argparse

arg_parser = argparse.ArgumentParser(description='Say hello')
arg_parser.add_argument('name', help='Name to greet')
options = arg_parser.parse_args()

print(f'Hello {options.name}!')
