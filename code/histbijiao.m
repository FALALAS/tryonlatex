a=xlsread("sim.xlsx");
histogram(a(1,:))
hold on;
histogram(a(2,:))
legend("Within Genre","Between Genre")
xlabel("Similarity")
ylabel("Artist Count")