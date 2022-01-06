musicdata=readtable('H:\我的云端硬盘\2021_ICM_Problem_D_Data\data_by_artist.csv');
temp=[musicdata(:,3:15)];
temp=table2array(temp);
temp=zscore(temp);
temp=array2table(temp);
temp(:,14)=musicdata(:,17);
temp=table2cell(temp);
coun=0;
kind={ };
for i=1:5854
    if(isempty(find(string(kind)==musicdata.kind(i))))
        coun=coun+1;
        kind{coun}=musicdata.kind(i);
    end
end
kind(find(string(kind)=="Unknown"))=[];
for i=1:19
    for j=2:15
    kind{j,i}=0;
    end
end
kv=[];
for n=1:5854
    [~,a]=find(string(kind)==temp{n,14});
    if(isempty(a))
        continue;
    end
    kind{2,a}=kind{2,a}+1;
    for i=1:13
        kind{i+2,a}=kind{i+2,a}+temp{n,i};
    end
end
for i=1:19
    for j=3:15
        kv(j-2,i)=kind{j,i}/kind{2,i};
    end
end
for i=1:19
    for j=1:19
        t1=(sum([(kv(1:13,i)-kv(1:13,j)).^2])).^0.5;
        Simnew(i,j)=1/t1;
    end
end
%for i=1:5854
    %for j=1:5854
        %t1=sum([(temp(i,1:end)-temp(j,1:end)).^2]);
        %Simnew(i,j)=1/(t1.^0.5);
    %end
%end