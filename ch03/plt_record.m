function f = plt_record(tab_record)

% Preamble
f = figure(); hold on;
% Geometries
for i = 1 : size(tab_record, 2)
    plot(tab_record.(tab_record.Properties.VariableNames{i}));
end
% Tail
xlabel("Time (minutes)")
ylabel("Bikes")
legend(tab_record.Properties.VariableNames)