function f = plt_record(tab_record)

f = figure(); hold on;

% Geometries
plot(tab_record.t, tab_record.S); label1 = "Susceptible";
plot(tab_record.t, tab_record.I); label2 = "Infected";
plot(tab_record.t, tab_record.R); label3 = "Recovered";

% Tail
xlabel("Time (-)")
ylabel("Persons")
legend({label1, label2, label3})

end