clc,clear
a=readmatrix("data_by_year.csv");
danceab=a(:,2)';
ener=a(:,3)';
valence=a(:,4)';
tempo=a(:,5)';
loud=a(:,6)';
acou=a(:,9)';
inst=a(:,10)';
live=a(:,11)';
spee=a(:,12)';
year=[1921:1:2020];
subplot(3,3,1)
plot(year,danceab);
xlabel("Year");
ylabel("danceability")
ylim=get(gca,'Ylim');
hold on
plot([1956,1956],ylim,'--','LineWidth',1);

subplot(3,3,2)
plot(year,ener);
xlabel("Year");
ylabel("energy")
ylim=get(gca,'Ylim');
hold on
plot([1956,1956],ylim,'--','LineWidth',1);

subplot(3,3,3)
plot(year,valence);
xlabel("Year");
ylabel("valence")
ylim=get(gca,'Ylim');
hold on
plot([1956,1956],ylim,'--','LineWidth',1);

subplot(3,3,4)
plot(year,tempo);
xlabel("Year");
ylabel("tempo")
ylim=get(gca,'Ylim');
hold on
plot([1956,1956],ylim,'--','LineWidth',1);

subplot(3,3,5)
plot(year,loud);
xlabel("Year");
ylabel("loudness")
ylim=get(gca,'Ylim');
hold on
plot([1956,1956],ylim,'--','LineWidth',1);

subplot(3,3,6)
plot(year,acou);
xlabel("Year");
ylabel("acousticness")
ylim=get(gca,'Ylim');
hold on
plot([1956,1956],ylim,'--','LineWidth',1);

subplot(3,3,7)
plot(year,inst);
xlabel("Year");
ylabel("instrumentalness")
ylim=get(gca,'Ylim');
hold on
plot([1956,1956],ylim,'--','LineWidth',1);

subplot(3,3,8)
plot(year,live);
xlabel("Year");
ylabel("liveness")
ylim=get(gca,'Ylim');
hold on
plot([1956,1956],ylim,'--','LineWidth',1);

subplot(3,3,9)
plot(year,spee);
xlabel("Year");
ylabel("speechiness")
ylim=get(gca,'Ylim');
hold on
plot([1956,1956],ylim,'--','LineWidth',1);

