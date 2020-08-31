function tab_state = fcn_step(tab_state, tab_system)
% fcn_step Advance an SIR model one timestep
%
% Usage
%   tab_state = fcn_step(tab_state, tab_system)
% 
% Arguments
%   tab_state = current state of SIR system, but have [s, i, r] attributes
%   tab_system = system parameters, must have [beta, gamma, epsilon] attributes
%                beta = infection rate
%                gamma = recovery rate
%                epsilon = immunity decay period
% 
% Returns
%   tab_state = updated state

% compute new infections and recoveries
infected = tab_system.beta * tab_state.i * tab_state.s;
recovered = tab_system.gamma * tab_state.i;
decayed = tab_system.epsilon * tab_state.r;
    
% Update state
tab_state.s = tab_state.s - infected + decayed;
tab_state.i = tab_state.i + infected - recovered;
tab_state.r = tab_state.r + recovered - decayed;

% Enforce invariants; necessary since we're doing a discrete approx.
tab_state.s = max(tab_state.s, 0);
tab_state.i = max(tab_state.i, 0);
tab_state.r = max(tab_state.r, 0);
    
end