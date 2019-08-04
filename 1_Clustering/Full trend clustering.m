clc;
% 计算斜率
for i=1:15037
    for j=2:13
    shuju1(i,j)=shuju(i,j+1)-shuju(i,j);
%     shuju1(i,1)=shuju(i,1);
    end
end
% 计算趋势相同
s=1;
for m=1:15036
    if(shuju1(m,1)==0)         
          for n=m+1:15037
             if((shuju1(m,2)*shuju1(n,2)>0&&shuju1(m,3)*shuju1(n,3)>0&&shuju1(m,4)*shuju1(n,4)>0&&shuju1(m,5)*shuju1(n,5)>0&&shuju1(m,6)*shuju1(n,6)>0&&shuju1(m,7)*shuju1(n,7)>0&&shuju1(m,8)*shuju1(n,8)>0&&shuju1(m,9)*shuju1(n,9)>0&&shuju1(m,10)*shuju1(n,10)>0&&shuju1(m,11)*shuju1(n,11)>0&&shuju1(m,12)*shuju1(n,12)>0&&shuju1(m,13)*shuju1(n,13)>0)==1)
                shuju1(m,1)=s;
                shuju1(n,1)=s;                  
             end  
          end
            if(shuju1(m,1)>0)   
                  s=s+1;
            end
    else
           continue;
     end
end
               
               
                
                
                
            