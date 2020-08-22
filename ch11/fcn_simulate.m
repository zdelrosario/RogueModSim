function record = fcn_simulate(system, update_func)

state = system.init;
record = table();

for t = linspace(system.t0, system.tf)
    state = update_func(state, t, system);
    
    record_new = state;
    record_new.t = t;
    
    record = [record; record_new];
end

end