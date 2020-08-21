function step(state, p_o2w, p_w2o)
% step Advance an Olin-Wellesley bikeshare system one timestep
% 
% Usage
%   step(state, p_o2w, p_w2o)
%
% Arguments
%   state = bikeshare state; must have variables `olin` and `wellesley`
%   p_o2w = probability of a cyclist going Olin to Wellesley
%   p_w2o = probability of a cyclist going Wellesley to Olin
%
% Examples
%   bikeshare = State("olin", 10, "wellesley", 3)
%   step(bikeshare)

if coin(p_o2w)
    bike_olin_to_wellesley(state);
end

if coin(p_w2o)
    bike_wellesley_to_olin(state);
end

end