function tab_state = fcn_wellesley2olin(tab_state)

if tab_state.wellesley == 0
    tab_state.wellesley_empty = tab_state.wellesley_empty + 1;
    return
end

tab_state.olin = tab_state.olin + 1;
tab_state.wellesley = tab_state.wellesley - 1;

end