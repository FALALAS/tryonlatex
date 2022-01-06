influencedata=readtable('H:\我的云端硬盘\2021_ICM_Problem_D_Data\influence_data.csv');
influencedata=sortrows(influencedata,"influencer_active_start","ascend");
sum=[influencedata.influencer_name(1:end)];
sum=string(sum);
writecell([keys(m).' values(m).'],'1.csv');
a=zeros(1,42770);
m=containers.Map(sum(1:end),int8(a(1:end)),'ValueType','int8');
time=1930;
for i=1:42770
    if(influencedata.influencer_active_start(i)~=double(time))
        time
        writecell([keys(m).' values(m).'],strcat(string(time),'i.csv'));
        m=containers.Map(sum(1:end),int8(a(1:end)),'ValueType','int8');
        time=time+10;
    end
    m(string(influencedata.influencer_name(i)))=m(string(influencedata.influencer_name(i)))+1;
end
writecell([keys(m).' values(m).'],'2010i.csv');

