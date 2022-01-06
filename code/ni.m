clc,clear
a=readcell("工作表 1.csv");
le=["Blues","Country","Folk","Jazz","Pop/Rock","Reggae","Vocal"];
le1=zeros(8,7);
for i=1:52
    for j=1:7
        if isequal(le(j),a(i,2))
            b=cell2mat(a(i,1));
            le1(b/10-192,j)=cell2mat(a(i,3));
        end
    end
end
bar(le1,'group');
legend(le)
xticklabels(1930:10:2000);
xlabel("Year");
ylabel("Number of influrncers")