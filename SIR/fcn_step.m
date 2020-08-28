function tab_state = fcn_step(tab_state, tab_system)
% fcn_step Advance an SIR model one timestep
%
% Usage
%   tab_state = fcn_step(tab_state, tab_system)
% 
% Arguments
%   tab_state = current state of SIR system, but have [s, i, r] attributes
%   tab_system = system parameters, must have [beta, gamma] attributes
%                beta = infection rate
%                gamma = recovery rate
% 
% Returns
%   tab_state = updated state

% compute new infections and recoveries
infected = tab_system.beta * tab_state.i * tab_state.s;
recovered = tab_system.gamma * tab_state.i;
    
% Update state
tab_state.s = tab_state.s - infected;
tab_state.i = tab_state.i + infected - recovered;
tab_state.r = tab_state.r + recovered;
    
end