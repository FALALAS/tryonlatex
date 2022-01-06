influencedata=readtable('H:\我的云端硬盘\2021_ICM_Problem_D_Data\influence_data.csv');
re=[];
a=zeros(1,10017);
for i=1:42770
    if(string(influencedata.influencer_main_genre(i))==string(influencedata.follower_main_genre(i)))
        re=[re [i]];
    end
end
influencedata(re,:)=[];
writetable(influencedata,'dif.csv');
