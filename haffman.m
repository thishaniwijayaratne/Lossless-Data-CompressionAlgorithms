% Assignment 1 – Lossless Data Compression

% A. Developing a Function for Huffman Coding Algorithm

% 1. Study the program given and write the ‘makecode’ recursive function.

clc;
clear all;
close all;
% format float;
sig = [1 2 3]; % row matrix
p = [ 0.4 0.5 0.1];
tempProbabilities1 = p;

global CODE 
CODE = cell(length(p),1);
s = cell(length(p),1);
s = {1,2,3};


[p,i] = sort(p); % Sort Ascending
p(2) = p(1) + p(2);
p(1) = []; % remove smallest

s = s(i) ;
s{2} = {s{1},s{2}}; 
s(1) = [];

makecode(s, []);

CODE

% 2. Extend this program to generate Huffman code for a discrete source 
%    of any number of symbols. Only for 2-array codes.

sig2 = [1, 2, 3, 4, 5];
p2 = [0.25, 0.1, 0.3, 0.2, 0.15];

s2 = combineProbabilities(p2);

makecode(s2, []);
%CODE


% 3. Generate a Huffman code for the English alphabet using your program. 
%    Discuss on the codewords assigned for the different letters. 
%    Comment on the efficiency of the code.
% load('pAplhabet.mat')
pAplhabet = [8.16, 1.492, 2.782, 4.153, 13.004, 2.228, 2.015, 6.094, 6.966, 0.153, 0.778, 4.025, 2.406, 6.749, 7.507, 1.929, 0.095, 5.787, 6.327, 9.056, 2.758, 0.978, 2.360, 0.150, 1.974, 0.074];
pAplhabet = pAplhabet./100;
tempProbabilities2 = pAplhabet;

sigAlphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i',  'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];

sAplhabet = combineProbabilities(pAplhabet);

makecode(sAplhabet, []);
CODE

% name = 'ranaweera'; 
name = 'wijayaratne';
encoded = encodeHaffman(sigAlphabet, name);

encoded

[Efficiency, H, L, R] = findEfficiency(tempProbabilities2, name, encoded)
%outputs===============================================
%(s(1))
%(s{2})

%(s{1})
%s

%CODE
%======================================================
% makecode({{[4],[5]},{{[2],[5]},[3]}}, [])
% CODE