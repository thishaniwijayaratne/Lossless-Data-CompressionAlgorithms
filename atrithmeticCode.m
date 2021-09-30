clc;
clear all;
close all;
format long

p = [0.1, 0.1, 0.05, 0.05, 0.2, 0.1, 0.05, 0.05, 0.05, 0.25];
sequence = [1 7 0 6 9 8];
% sequence = [1 7 0 5 0 2];

% p = [0.8, 0.02, 0.18];
% sequence = [1 3 2 1];

global Fx
global upperLimit
global lowerLimit

upperLimit = 1;
lowerLimit = 0;
generateFx(p)

global Tx2
getTag(sequence);

decimalPart = Tx2-fix(Tx2);
global CODE
CODE = [];
convertBinary(decimalPart)

global INCREMENTAL_CODE
global MSB
global incrementalUpperLimit
global incrementalLowerLimit
global incrementalTag

incrementalUpperLimit = 1;
incrementalLowerLimit = 0;
MSB = '';
sequence2 = [1 7 0];
getIncrementalTag(sequence2)
incrementalTag
Tx2


upperLimit
lowerLimit
incrementalUpperLimit
incrementalLowerLimit
MSB
