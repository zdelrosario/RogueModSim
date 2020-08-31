function tab_record = fcn_simulate(tab_state, tab_system, num_steps)
% fcn_simulate Simulate a SIR model
%
% Usage
%   tab_record = fcn_simulate(tab_state, tab_system, num_steps)
%
% Arguments
%   tab_state = current state of SIR system, must have [s, i, r] attributes
%   tab_system = system parameters, must have [beta, gamma] attributes
%                beta = infection rate
%                gamma = recovery rate
%
% Returns
%   tab_record = record of simulation state at each timestep

tab_record = tab_state;
tab_record.week = 0;

for i = 1 : num_steps
    tab_state = fcn_step(tab_state, tab_system);
    tab_state.week = i;
    tab_record = [tab_record; tab_state];
end

end