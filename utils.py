import subprocess
import os
import importlib
import sys
from vendors import ModuleMap

def dirpath():
	
	selfpath = os.path.abspath(__file__)
	path = os.path.dirname(selfpath)
	
	return(path)

def java_unluac(ifile,ofile):
	
	
	unluac_path = dirpath() + "/unluac/unluac.jar"
	
	cmd = ["java", "-jar", unluac_path, ifile, "--output", ofile]
	
	ret = subprocess.run(cmd)
	
	return ret.returncode
	
def choose_module(vendor):

	modules_path = dirpath() + "/luamod/"
	sys.path.append(modules_path)
	
	module_name = ModuleMap[vendor.upper()]
	
	return importlib.import_module(module_name)
	
def get_std51():
	
	modules_path = dirpath() + "/luamod/"
	sys.path.append(modules_path)
	
	return importlib.import_module("stdmod51")
	
def IsVendorMatch(mod,data):
	
	length = len(mod.Header)
	
	header = data[:length]
	
	return header == mod.Header
