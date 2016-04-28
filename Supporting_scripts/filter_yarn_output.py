import csv
import sys

if __name__ == '__main__':
	
	if len(sys.argv) != 3:
		print("Usage: python filter_yarn_output.py <input data file> <filtered output file>")
		sys.exit(1)
	else:
		input_file = sys.argv[1]
		output_file = sys.argv[2]


	input_file = open(sys.argv[1],'r')
	output_file = open(sys.argv[2],'w')

	reader = csv.reader(input_file)
	writer = csv.writer(output_file)

	data_lines = list()
	header = None

	for line in reader:
		first_element = line[0]

		debug_line = first_element.startswith("2016")
		comm_line = "sending" in first_element

		if not debug_line and not comm_line:
			if first_element == "CU":
				header = line
			else:
				data_lines.append(line)

	modified_lines = list()
	for i in range(len(data_lines)):
		current_line = data_lines[i]
		if current_line[0].startswith("unit"):
			del current_line[8] # Gets rid of the "CONTENT SHORTENED" block
			next_line = data_lines[i+1]
			current_line.extend(next_line)
			modified_lines.append(current_line)

	writer.writerow(header)
	for line in modified_lines:
		writer.writerow(tuple(line))

	input_file.close()
	output_file.close()