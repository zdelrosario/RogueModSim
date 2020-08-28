function tab_output = apply(fun, tab_input)

tab_output = varfun(fun, tab_input);
tab_output.Properties.VariableNames = regexprep(tab_output.Properties.VariableNames, 'Fun_', '');

end