import os

path = os.getcwd()
files = os.listdir(path)

for afile in files:
    number = int(afile.split('.')[1])
    number+=1
    new_name = 'producer-' + str(number)
    os.rename(os.path.join(path, afile), os.path.join(path,new_name))

