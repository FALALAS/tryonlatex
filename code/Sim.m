musicdata=readtable('H:\我的云端硬盘\2021_ICM_Problem_D_Data\data_by_artist.csv');
temp=[musicdata.danceability(1:end) musicdata.energy(1:end) musicdata.valence(1:end) musicdata.tempo(1:end) musicdata.loudness(1:end) musicdata.mode(1:end) musicdata.key(1:end) musicdata.acousticness(1:end) musicdata.instrumentalness(1:end) musicdata.liveness(1:end) musicdata.speechiness(1:end)];
temp=zscore(temp);
r=cov(temp);
[ei1,ei2]=eig(r);
ei1=ei1(:,5:11);
Y=temp*ei1;
for i=1:5854
    for j=1:5854
        t1=[(Y(i,1:end)-Y(j,1:end)).^2];
        Sim(i,j)=1/((sum(t1)).^0.5);
    end
end
