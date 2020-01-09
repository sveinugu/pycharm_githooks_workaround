#!/usr/bin/env python

from __future__ import print_function
import os
import re
import xml.etree.ElementTree as ET

try:
    project_dir = os.environ['PWD']
    misc_xml_path = os.path.join(project_dir, '.idea', 'misc.xml')

    tree = ET.parse(misc_xml_path)
    root = tree.getroot()
    python_ver = root.find("./component[@name='ProjectRootManager']").attrib['project-jdk-name']
    conda_env = re.findall('[\w ]+\((\w+)\)', python_ver)[0]

    print(conda_env)
except:
    pass
