function [A] = RLE1_SGD(x)
%===========================Function Description==============================
% Author: Shivani Dhok
% Date of Creation: March 30, 2020
% Digital Image Processing
% Function for: Get number and counts for a value in the stream
% 
% The function Dec2Bin_SGD() converts a decimal number to binary pattern.
% 
% Input: 
%     x: Input sequence
% 
% Output:
%     A: Output (value,occurance) format
k = 1;
 count = 1;
 A = [];
 while k+1<=length(x)
     a= x(k);
     if x(k+1) == a
         count = count+1;
     else
         A = [A a count];
         count = 1;
     end
     k = k+1;
 end
 A = [A a count];