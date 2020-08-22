function state = fcn_update(state, t, system)

% Compute changes
dI = system.beta * state.I * state.S;
dR = system.gamma * state.I;

% Update the state
state.S = state.S - dI;
state.I = state.I + dI - dR;
state.R = state.R + dR;

end