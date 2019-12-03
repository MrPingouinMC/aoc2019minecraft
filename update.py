import os
import sys
from datetime import date as date
from aocd.models import Puzzle
import json

INPUT_TEMPLATE = "input/%s_%s.mcfunction"
INPUT_NAME_TEMPLATE = "input/%s_%s"
STORAGE_LOAD_COMMAND_TEMPLATE = "data modify storage %s data set value %s"
STORAGE_NAME_TEMPLATE = "aoc_%d_day%d"

def get_lastest_year():
	current_year = date.today().year
	#This refer to the day advent of code starts this year.
	new_year = date(current_year, 12, 1)
	if date.today() < new_year:
		return current_year - 1
	return current_year

def get_input_data(year, day):
	puzzle = Puzzle(year=year, day=day)
	return puzzle.input_data


def input_name(year, day):
	return STORAGE_NAME_TEMPLATE % (year, day)

def data_to_command(data, sname):
	base = STORAGE_LOAD_COMMAND_TEMPLATE % (sname, list(map(list, data.split("\n"))))
	return base

def send_error(msg=""):
	print(get_help_str())
	if len(msg) > 0:
		print(msg)

def get_help_str():
	return "Command format : update.py <year> <day>"


def parse_num_argument(argv, index, vmin, vmax, default=None, name=""):
	val = default
	if len(argv) <= index:
		if default == None:
			send_error()
			exit(1)
	else:
		val = argv[index]
	
	if val == "*":
		return list(range(vmin, vmax+1))

	if not val.isnumeric():
		send_error("Please specify a valid %s" % name)
		exit(2)	
	val = int(val)
	if val < vmin or val > vmax:
		send_error("Please specify a valid %s number between %d and %d" % (name, vmin, vmax))
		exit(3)

	return [val]

def save_downloaded(data):
	data = list(set(data))
	print("saving", data)
	with open("downloaded.json", 'w') as json_out:
	    json.dump(data, json_out)

	with open("init_inputs.mcfunction", 'w') as mcout:
		mcout.write("\n".join(map(lambda d: "function aoc:%s" % d ,data)))

def load_downloaded():
	if not os.path.isfile("downloaded.json"):
		return []
	with open("downloaded.json") as json_file:
		return json.load(json_file)


def main():
	
	downloaded = load_downloaded()
	
	selected_years = parse_num_argument(sys.argv, 1, 2015, get_lastest_year(), default=None, name="year")
	selected_days = parse_num_argument(sys.argv, 2, 1, 25, default="*", name="day")
	


	print("Attempt to download year=", selected_years[0], "day=", selected_days[0])
	print("...")


	if not os.path.isdir("input"):
		os.mkdir("input")
	for year in selected_years:
		for day in selected_days:
			data = get_input_data(year, day)
			with open(INPUT_TEMPLATE % (year, day), "w") as f:
				sname = input_name(year, day)
				f.write(data_to_command(data, sname))
				downloaded.append(INPUT_NAME_TEMPLATE % (year, day))

	save_downloaded(downloaded)


main()