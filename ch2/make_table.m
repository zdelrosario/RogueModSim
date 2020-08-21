function t = make_table(varargin)
% make_table Create a table object
% 
% Usage
%   table = make_table(col1, value1)
%   table = make_table(col1, value1, col2, value2)
%
% Arguments
%   colN = name of column; string
%   valueN = values to assign to colN; scalar or array
%
% Notes:
%   - You can create tables with the `table()` function; 
%     make_table() just provides convenient syntax.
%
% Examples
%   state = make_table("olin", 10, "wellesley", 3)
%   t_data = make_table("x", [1, 2, 3], "y", [4, 5, 6])

% Create an empty table
t = table();

% Parse the argument pairs
if (nargin > 0) && (mod(nargin, 2) == 0)
    for i = 1 : nargin / 2
        ind = (i - 1) * 2 + 1;
        if isa(varargin{ind}, "string")
        % Add property
            t.(varargin{ind}) = varargin{ind + 1};
        elseif ~isempty(last_param)
            error("`var` arguments must be strings")
        end
    end
else
    error("Must provide arguments in `var, value` pairs")
end

end