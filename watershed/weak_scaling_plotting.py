
import sys
import pandas as pd
import matplotlib.pyplot as plt


if len(sys.argv)<4:
	print "Usage python %s <files to plot> <name of the plot>"
	print "You need to give at least two .csv files file for plotting!"
	sys.exit(-1)

else:

	data = {'Dataset_size': ['8GB', '16GB', '32GB'], 'queue_time_and_RP_overhead': [], 'exec': []}
	
	for j in range(1, len(sys.argv) - 1):

		df = pd.read_csv(sys.argv[j], sep=',', header=None)
		array = df.values
		#print array

		i=1
		sum_StageIn = sum_Done = 0.0
	  
		while array[i+1][0] != 'TTC':
			sum_StageIn += float(array[i][2])
			sum_Done += float(array[i][6])
			i += 1

		i -= 1

		sum_StageIn_Allocate_Exec_StageOut = (sum_Done - sum_StageIn) / i 

		TTC = 60.0*float(array[i+2][1])
		queue_time_and_RP_overhead = TTC - sum_StageIn_Allocate_Exec_StageOut

		data['queue_time_and_RP_overhead'].append(queue_time_and_RP_overhead)
		data['exec'].append(sum_StageIn_Allocate_Exec_StageOut)   
		

	print data

	f, ax1 = plt.subplots(1, figsize=(10,5))
	bar_width = 0.5
	bar_l = [i+1 for i in range(len(data['Dataset_size']))]
	position = [i+(bar_width/2) for i in bar_l] 

	ax1.bar(bar_l, data['queue_time_and_RP_overhead'], width=bar_width, label='Queue_time_and_RP_overhead', color='r')
	ax1.bar(bar_l, data['exec'], width=bar_width, bottom=data['queue_time_and_RP_overhead'], label='StageIn_Allocate_Exec_StageOut', color='b')
	
	plt.xticks(position, data['Dataset_size'])

	ax1.set_ylabel('Mean TTC (s)')
	ax1.set_xlabel('Dataset Size (GB)')
	#plt.legend(loc='upper right')

	plt.xlim([min(position)-bar_width, max(position)+bar_width])
	plt.savefig(sys.argv[len(sys.argv)-1] + '.png')
	plt.show()
