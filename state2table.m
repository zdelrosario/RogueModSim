function t = state2table(state)
% state2table Convert a State object to a 1-row Table
%
% Usage
%   t = state2table(state)
%
% Arguments
%   state = a State object
% 
% Returns
%   t = a Table object
%
% Examples
%   bikeshare = State("olin", 10, "wellesley", 3);
%   t = state2table(bikeshare)

t = table();
c = properties(state);

for i = 1 : length(c)
    s = c{i};
    t.(s) = state.get(s);
end

end