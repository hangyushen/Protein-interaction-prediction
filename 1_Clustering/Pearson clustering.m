clc;
% x=shuju(2,2:14);
% y=shuju(3,2:14);
% [r,p]=corr(x',y')
for i=1:15037
     shuju(i,1)=0;
end
s=1;
for m=1:15036
    if(shuju(m,1)==0) 
        for n=m+1:15037
            if(corr((shuju(m,2:14))',(shuju(n,2:14))')>0.97)
                shuju(m,1)=s;    
                shuju(n,1)=s;  
            end  
        end
    if(shuju(m,1)>0)   
         s=s+1;
    end
    else
           continue;
    end   
end
                
                
                
            