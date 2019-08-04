clc;
% 计算斜率
for i=1:15037
%         for j=2:13
         shuju1(i,2)=atand((shuju(i,3)-shuju(i,2))/0.5);
         shuju1(i,3)=atand((shuju(i,4)-shuju(i,3))/0.5);
         shuju1(i,4)=atand((shuju(i,5)-shuju(i,4))/0.5);
         shuju1(i,5)=atand((shuju(i,6)-shuju(i,5))/2);
         shuju1(i,6)=atand((shuju(i,7)-shuju(i,6))/2);
         shuju1(i,7)=atand((shuju(i,8)-shuju(i,7))/2);
         shuju1(i,8)=atand((shuju(i,9)-shuju(i,8))/4);
         shuju1(i,9)=atand((shuju(i,10)-shuju(i,9))/6);
         shuju1(i,10)=atand((shuju(i,j+1)-shuju(i,j))/6);
         shuju1(i,11)=atand((shuju(i,12)-shuju(i,11))/12);
         shuju1(i,12)=atand((shuju(i,13)-shuju(i,12))/12);
         shuju1(i,13)=atand((shuju(i,14)-shuju(i,13))/24);
%         end
end
% % 计算角度在10以内相同
s=1;
for m=1:15036
    if(shuju1(m,1)==0)         
          for n=m+1:15037
             if((shuju1(m,2)*shuju1(n,2)>0&&shuju1(m,3)*shuju1(n,3)>0&&shuju1(m,4)*shuju1(n,4)>0&&shuju1(m,5)*shuju1(n,5)>0&&shuju1(m,6)*shuju1(n,6)>0&&shuju1(m,7)*shuju1(n,7)>0&&shuju1(m,8)*shuju1(n,8)>0&&shuju1(m,9)*shuju1(n,9)>0&&shuju1(m,10)*shuju1(n,10)>0&&shuju1(m,11)*shuju1(n,11)>0&&shuju1(m,12)*shuju1(n,12)>0&&shuju1(m,13)*shuju1(n,13)>0)==1)
                if(40>shuju1(m,2)-shuju1(n,2)&&shuju1(m,2)-shuju1(n,2)>-40&&40>shuju1(m,3)-shuju1(n,3)&&shuju1(m,3)-shuju1(n,3)>-40&&40>shuju1(m,4)-shuju1(n,4)&&shuju1(m,4)-shuju1(n,4)>-40&&40>shuju1(m,5)-shuju1(n,5)&&shuju1(m,5)-shuju1(n,5)>-40&&40>shuju1(m,6)-shuju1(n,6)&&shuju1(m,6)-shuju1(n,6)>-40&&40>shuju1(m,7)-shuju1(n,7)&&shuju1(m,7)-shuju1(n,7)>-40&&40>shuju1(m,8)-shuju1(n,8)&&shuju1(m,8)-shuju1(n,8)>-40&&40>shuju1(m,9)-shuju1(n,9)&&shuju1(m,9)-shuju1(n,9)>-40&&40>shuju1(m,10)-shuju1(n,10)&&shuju1(m,10)-shuju1(n,10)>-40&&40>shuju1(m,11)-shuju1(n,11)&&shuju1(m,11)-shuju1(n,11)>-40&&40>shuju1(m,12)-shuju1(n,12)&&shuju1(m,12)-shuju1(n,12)>-40&&40>shuju1(m,13)-shuju1(n,13)&&shuju1(m,13)-shuju1(n,13)>-40)
                 shuju1(m,1)=s;
                 shuju1(n,1)=s;  
                end
             end  
          end
              if(shuju1(m,1)>0)   
                  s=s+1;
              end
    else
           continue;
     end
end
           