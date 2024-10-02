import subprocess
import os
import importlib
import sys
from vendors import ModuleMap,VersionMap

def dirpath():
	
	selfpath = os.path.abspath(__file__)
	path = os.path.dirname(selfpath)
	
	return(path)

def De_unluac(ifile, ofile, version):
	
	unluac_path = dirpath() + "/Decompiler/unluac.jar"
	
	cmd = ["java", "-jar", unluac_path, ifile, "--output", ofile]
	
	ret = subprocess.run(cmd)
	
	return ret.returncode
	
def De_luadec(ifile, ofile, version):

	dec_name = VersionMap[version.upper()]["dec"]
	
	luadec_path = dirpath() + "/Decompiler/" + dec_name
	
	cmd = [luadec_path, ifile]
	
	with open(ofile, 'w') as f:
		ret = subprocess.run(cmd, stdout=f, stderr=f)
	
	return ret.returncode
	
def choose_module(vendor):

	modules_path = dirpath() + "/luamods/"
	sys.path.append(modules_path)
	
	module_name = ModuleMap[vendor.upper()]
	
	return importlib.import_module(module_name)
	
def get_stdmod(version):
	
	mod_name = VersionMap[version.upper()]["mod"]
	
	modules_path = dirpath() + "/luamods/"
	sys.path.append(modules_path)
	
	return importlib.import_module(mod_name)
	
def IsVendorMatch(mod, data):
	
	length = len(mod.Header)
	
	header = data[:length]
	
	return header == mod.Header
	
def call_optimizer(input_file):
	
	selfpath = dirpath()
	
	optimizer = selfpath + "/optimizer"
	
	cmd = [optimizer, input_file]
	
	ret = subprocess.run(cmd)
	
	return ret.returncode
