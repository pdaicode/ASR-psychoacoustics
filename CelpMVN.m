function c=CelpMVN(a)
% execute Cepstral Mean Normalization(CMN)
snow=size(a,2);
for i=1:snow
    u(i)=mean(a(:,i));
    sigma(i)=std(a(:,i));
end
for i=1:snow
    for j=1:snow(1)
        c(j,i)=(a(j,i)-u(i))/sigma(i);
    end
end