a=[VarName1,VarName2];%购物篮算法结果
b=[VarName3,VarName4,VarName5,VarName6,VarName7];%序号 类号 offid 数量 proid
c=[VarName8,VarName9];%已有库
d=[VarName10,VarName11];%已有库
c=[c;d];

column = 2;%指定列VarName4
num = unique(b(:,column));%找到该列所有不相同的值
B = cell(1,length(num)); %将所有相同的分组
for i=1:length(num)
  row_index = b(:,column) == num(i);
  B{i} = b(row_index,:);
end

qqq=zeros(1,7);
for i=1:size(a,1)
  sum=0;
  summ=0;
  %len1=length(B{a(i,1)}(:,5));
  %len2=length(B{a(i,2)}(:,5));
  clear sjmn1;
  clear sjmn2;
  len1=size(B{a(i,1)},1);
  len2=size(B{a(i,2)},1);
  sjmn1=randsrc(len1,1,b(:,3)');
  sjmn2=randsrc(len2,1,b(:,3)');
  mz=0;
  mzz=0;
  flag=0;
  flagg=0;
  
  for j=1:size(B{a(i,1)},1)
    for k=1:size(B{a(i,2)},1)  %B{a(i,1)}(j,3)  B{a(i,2)}(k,3) 
	  kkk=[B{a(i,1)}(j,3),B{a(i,2)}(k,3)];
	  [flag ppp] = ys(c,kkk);
	    if(flag>0&&flag<3)
		  sum=sum+1;
		  mz=sum/(len1*len2);
		end
		
	  lll=[sjmn1(j),sjmn2(k)];
	  [flagg pppp] = yss(c,lll);
	  if(flagg>0&&flagg<3)
	    summ=summ+1;
		mzz=summ/(len1*len2);
	  end
		
    end
  end
  qqq=[qqq;i,B{a(i,1)}(j,2),B{a(i,2)}(k,2),len1,len2,mz,mzz];% i 类号1 类号2 类1数量 类2数量 命中数
end