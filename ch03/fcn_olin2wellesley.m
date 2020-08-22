function tab_state = fcn_olin2wellesley(tab_state)

if tab_state.olin == 0
    return
    tab_state.olin_empty = tab_state.olin_empty + 1;
%     return
end

tab_state.olin = tab_state.olin - 1;
tab_state.wellesley = tab_state.wellesley + 1;

end