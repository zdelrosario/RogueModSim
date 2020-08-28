function tab_res = describe(tab_data)
% describe Create a six-number summary of a table
%
% This simple helper function computes a six-number summary of a table,
% and returns the results in table form. The six summaries are a
% five-number summary (Quantiles 0%, 25%, 50%, 75%, 100%) and the mean.
% These results are returned in "tidy" table form.
%
% Usage
%   tab_res = describe(tab_data)
% 
% Arguments
%   tab_data = a table of data
% 
% Returns
%   tab_res = a six-number summary of the data

% Get numeric columns
ind_numeric = varfun(@isnumeric, tab_data, 'output', 'uniform');

% Build summaries
tab_min = varfun(@min, tab_data(:, ind_numeric));
tab_q25 = varfun(@(x) quantile(x, 0.25), tab_data(:, ind_numeric));
tab_q50 = varfun(@(x) quantile(x, 0.50), tab_data(:, ind_numeric));
tab_mean = varfun(@mean, tab_data(:, ind_numeric));
tab_q75 = varfun(@(x) quantile(x, 0.75), tab_data(:, ind_numeric));
tab_max = varfun(@max, tab_data(:, ind_numeric));

% Fix variable names
tab_min.Properties.VariableNames = regexprep(tab_min.Properties.VariableNames, 'min_', '');
tab_q25.Properties.VariableNames = regexprep(tab_q25.Properties.VariableNames, 'Fun_', '');
tab_q50.Properties.VariableNames = regexprep(tab_q50.Properties.VariableNames, 'Fun_', '');
tab_mean.Properties.VariableNames = regexprep(tab_mean.Properties.VariableNames, 'mean_', '');
tab_q75.Properties.VariableNames = regexprep(tab_q75.Properties.VariableNames, 'Fun_', '');
tab_max.Properties.VariableNames = regexprep(tab_max.Properties.VariableNames, 'max_', '');

% Add labels
tab_min.stat = "Min";
tab_q25.stat = "Q1";
tab_q50.stat = "Median";
tab_mean.stat = "Mean";
tab_q75.stat = "Q3";
tab_max.stat = "Max";

% Combine
tab_res = [tab_max; tab_q75; tab_mean; tab_q50; tab_q25; tab_min];

end