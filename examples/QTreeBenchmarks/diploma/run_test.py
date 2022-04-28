from posixpath import basename
import yaml
from pprint import pprint
import re

import os
import shutil

test_tcl = os.path.join(os.getcwd(), "test.tcl")

modulename = "mMapKron"

suffix = "not-distilled"

config = "test.yaml"

base_path = os.path.join(os.getcwd(), "verilog-bool-no-nnz-inlined")

module_path = os.path.join(base_path, modulename)

test_path = os.path.join(module_path,suffix)

results_path = os.path.join(base_path,"results")

os.chdir(module_path)

test_config = {}

with open(config) as f:
    test_config = yaml.load(f)

test_name = test_config['test_name']
test_name_yaml = os.path.join(results_path, test_name + "_" + suffix + ".yaml")

if(os.path.exists(test_name_yaml)):
    os.remove(test_name_yaml)

with open(test_name_yaml, 'w') as f:
    f.write("tests:\n")


def clear_folder(folder_path):
    
    for file_object in os.listdir(folder_path):
        file_object_path = os.path.join(folder_path, file_object)
        if os.path.isfile(file_object_path) or os.path.islink(file_object_path):
            os.unlink(file_object_path)
        else:
            shutil.rmtree(file_object_path)

os.chdir(os.path.join(test_path))

tmp_path = os.path.join(test_path,"tmp")

if (os.path.exists(tmp_path)): shutil.rmtree(tmp_path)
os.mkdir(tmp_path)

for entry in test_config['test_entries']:
    print(entry)
    
    matrices = list(map(lambda x : re.search('(\d+)',x).group(1), entry['test_matrices'])) if entry['test_matrices'] else []
    masks = list(map(lambda x : re.search('(\d+)',x).group(1), entry['test_masks'])) if entry['test_masks'] else []



    pprint(matrices)
    pprint(masks)

    # os.mkdir(tmp_path)
    with os.scandir(test_path) as it:
        for entry in it:
            if entry.is_file() and entry.name.endswith(".sv"):
                shutil.copy(entry, tmp_path)
    os.chdir(tmp_path)
    # os.chdir(os.path.join(os.getcwd(), os.path.dirname(path)))
    print("Running: ", 'C:/Xilinx/Vivado/2020.2/bin/vivado.bat -quiet -mode batch -source {} -tclargs -dump "{}" -module "{}" -matrix "{}" -mask "{}" > {}/sim.log 2>&1'.format(test_tcl,test_name_yaml,modulename," ".join(matrices)," ".join(masks),test_path))
    ret_code = (os.system('C:/Xilinx/Vivado/2020.2/bin/vivado.bat -quiet -mode batch -source {} -tclargs -dump "{}" -module "{}" -matrix "{}" -mask "{}" > {}/sim.log 2>&1'.format(test_tcl,test_name_yaml,modulename," ".join(matrices)," ".join(masks),test_path)))
    # shutil.rmtree(tmp_path)
    clear_folder(tmp_path)
    if (ret_code):
        exit("Testing failed, look at: {}".format(test_path + "/sim.log"))
    os.chdir(test_path)
