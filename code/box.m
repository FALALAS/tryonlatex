for i=1:7
    n=AAAA(:,i);
    for xx=1:size(n)
        if(n(xx)==0)
            n(xx:end)=[];
            break;
        end
    end
    h=boxplot(n,'Positions',i:i,'Widths',0.5);
    set(gca,'XTickLabel',{' '})
    hold on;
end
