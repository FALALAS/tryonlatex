a=readcell("influence_data.csv");

a(1,:)=[];
b=a(:,4);
b=cell2mat(b);
c=zeros(1,9);
for i=1:42770
    if isequal(a(i,3),"Electronic")
        c(1,b(i,1)/10-192)=c(1,b(i,1)/10-192)+1;
    end
    i
end
plot(c)
xlim([1930,2010])