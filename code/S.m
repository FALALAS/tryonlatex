l1;
for i=1:5603
    WDC(i)=sum(w(i,:))/5603;
    EC(i)=w(i,:)*outdeg/5603;
    S(i)=(DC(i)/max(DC)+WDC(i)/max(WDC)+EC(i)/max(EC))/3;
    
end


