function res = coin(p)
% coin Return 1 or 0 with a given probability
%
% Usage
%   res = coin(p)
%
% Arguments
%   p = probability of returning the value 1; 
%       `p` between 0 and 1, inclusive
%
% Returns
%   res = 0 or 1

if rand < p
    res = 1;
else
    res = 0;
end

end
