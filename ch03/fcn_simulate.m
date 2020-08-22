function tab_record = fcn_simulate(tab_state, p_o2w, p_w2o, num_steps)
% simulate_bikeshare Run a bikeshare simulation
%
% Usage
%   state = simulate_bikeshare(state, p_o2w, p_w2o, num_steps)
%
% Arguments
%   state = bikeshare state
%   p_o2w = probability of bicycle going from Olin to Wellesley
%   p_w2o = probability of bicycle going from Wellesley to Olin
%   num_steps = number of steps to simulate
%
% Examples
%   % Create an initial state
%   tab_state = fcn_make_table("olin", 10, "wellesley", 3);
%   % Simulate 60 steps with p_o2w = 0.3, p_w2o = 0.2
%   tab_record = fcn_simulate(tab_state, 0.3, 0.2, 60);

% Copy the state
tab_record = tab_state;

for i = 1 : num_steps
    tab_state = fcn_step(tab_state, p_o2w, p_w2o);
    tab_record = [tab_record; tab_state];
end

end