from posixpath import basename
import yaml
from pprint import pprint

import os
import shutil

test_tcl = os.path.join(os.getcwd(), "test.tcl")
result_csv = os.path.join(os.getcwd(), "result_MAddAddAdd2.csv")

base_path = os.path.join(os.getcwd(), "VPT")

test_path = os.path.join(base_path,"MAddAddAdd2")


os.chdir(os.path.join(test_path))

test_config = {}

with open('sw_templates.yaml') as f:
    test_config = yaml.load(f)

if(os.path.exists(result_csv)):
    os.remove(result_csv)

with open(result_csv, 'w') as f:
    f.write("name, m1, m2, m3, m4, time, mem, m_name\n")

pprint(test_config)

def clear_folder(folder_path):
    
    for file_object in os.listdir(folder_path):
        file_object_path = os.path.join(folder_path, file_object)
        if os.path.isfile(file_object_path) or os.path.islink(file_object_path):
            os.unlink(file_object_path)
        else:
            shutil.rmtree(file_object_path)

tmp_path = "{}/tmp".format(test_path)

if (os.path.exists(tmp_path)): shutil.rmtree(tmp_path)

for path, module in test_config.items():
    print(path)
    
    # os.mkdir(tmp_path)
    shutil.copytree(os.path.join(os.getcwd(), os.path.dirname(path)), tmp_path, symlinks=False,dirs_exist_ok=True)
    os.chdir(tmp_path)
    # os.chdir(os.path.join(os.getcwd(), os.path.dirname(path)))
    print(os.system("C:/Xilinx/Vivado/2020.2/bin/vivado.bat -quiet -mode batch -source {} -tclargs {} {} {} {} {} {} {}> {}/sim.log 2>&1".format(test_tcl,result_csv,*module,path, test_path)))
    # shutil.rmtree(tmp_path)
    clear_folder(tmp_path)
    os.chdir(test_path)
