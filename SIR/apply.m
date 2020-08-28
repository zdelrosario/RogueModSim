function tab_output = apply(fun, tab_input)
% apply Apply a function to all columns of a table
%
% This is a simple wrapper for the Matlab built-in function `varfun` that
% strips the added prefix to column names.
%
% Usage
%   tab_output = apply(fun, tab_input)
% 
% Arguments
%   fun = function to apply to each column
%   tab_input = table to operate upon
%
% Returns
%   tab_output = modified table

tab_output = varfun(fun, tab_input);
tab_output.Properties.VariableNames = regexprep(tab_output.Properties.VariableNames, '^\w+_', '');

end