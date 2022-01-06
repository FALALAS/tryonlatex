influencedata=readtable('H:\我的云端硬盘\2021_ICM_Problem_D_Data\influence_data.csv');
x=table2struct(influencedata);
a=[x(1:end).influencer_id];
an={x(1:end).influencer_id};
b=[x(1:end).follower_id];
bn={x(1:end).follower_id};
e=[x(1:end).influencer_active_start];
d=[x(1:end).follower_active_start];
f={x(1:end).influencer_main_genre};
g={x(1:end).follower_main_genre};
an=cellfun(@num2str,an,'UniformOutput',false);
bn=cellfun(@num2str,bn,'UniformOutput',false);
current=0;
li=[];
c=[];
te={};
de=[];
fg={};
num=0;
for x=1:42770
    if(find(li==b(x)))
        b(x)=c(1,find(li==b(x)));
    else
        current=current+1;
        li=[li [b(x)]];
        b(x)=current;
        num=num+1;
        te{num}=bn{x};
        fg{num}=g{x};
        de=[de [d(x)]];
        c=[c [current]];
    end
end
for x=1:42770
    if(find(li==a(x)))
        a(x)=c(1,find(li==a(x)));
    else
        current=current+1;
        li=[li [a(x)]];
        a(x)=current;
        num=num+1;
        de=[de [e(x)]];
        fg=[fg [f(x)]];
        te{num}=an{x};
        fg{num}=f{x};
        c=[c [current]];
    end
end
xs=digraph(a,b,[],te);
xs.Nodes.var2(1:5603,1)=de;
xs.Nodes.Properties.VariableNames{2} = 'Year';
xs.Nodes.var3(1:5603,1)=fg;
xs.Nodes.Properties.VariableNames{3} = 'Genre';
w=[];
for i=1:5603
    for j=1:5603
        if(isempty(allpaths(xs,i,j,'MaxPathLength',1))||i==j)
            w(i,j)=0;
        else
            if(strcmp(xs.Nodes.Genre{i},xs.Nodes.Genre{j}))
                s=0;
            else
                s=1;
            end
            if(abs(xs.Nodes.Year(i)-xs.Nodes.Year(j))>20)
                y=1;
            else 
                y=0;
            end
            w(i,j)=(1+s+y)/3;
        end
    end
end

