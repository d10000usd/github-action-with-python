# -*- coding: utf-8 -*-
#
#  test.py
#  project
#
#  Created by hg on 2022-11-30.
#  Copyright 2022 hg. All rights reserved.
#
#  d10000usd@gmail.com

import json
import os
import pandas as pd
import numpy as np
import sys
import pickle
# import tqdm.tqdm_notebook as tqdm
# import warnigs
# warnings.filterwarnings(action='ignore') # Warning Message 안보이게
pd.set_option('display.max_columns', None)
pd.set_option('display.max_rows', None)
# pd.set_option('display.width', 1000)
# pd.set_option('display.max_colwidth', -1
class nameproject:
    """ docstring
    """
    def __init__(self, var,var1):
        self.var = var
        self.var1 = var1
    def __str__(self):
        return 'name@{:#x}: {}'.format(id(self), self.var)
    def name_1(self,project, docstring):
        """
        docstring
        :param1 : par - 
        :param2 : par - 
        :param3 : par - 
        :Returns ret -  
        """
        self.val = 1 
        return self.val
    def name_2(self,project, docstring):
        """
        docstring
        :param1 : par - 
        :param2 : par - 
        :param3 : par - 
        :Returns ret -  
        """
        self.val = 1 
        return self.val
    @property
    def name_3(self):
        return self.name
    @name.setter
    def name_4(self, value):
        self.name = value
    @name.deleter
    def name_4(self, value):
        del self.name
if __name__ == "__main__":
    classmethod = nameproject('classmethod')
    classmethod.name_1()