clc;clear all;close all;
x=[1,2,3,4]
h=[1,2,3,4]
n=length(x) + length(h)-1
k = max(length(x) , length(h))
x=[x,zeros(1,k-length(x))]
h=[h,zeros(1,k-length(x))]
for i =1:1:n
  y(i)=0;
  
  
  for j=1:1:k
    if(i-j<0)
      y(i)=y(i)+0
    
    elseif(i>k)
    if (j+(i-k)<=k)
     #here we have write code to implement if yn>max of Both signals
     y(i) = y(i)+ x(j+(i-k))*h((i-j)-(i-(k+1)));
    
      endif
      
    else
      y(i) = y(i)+x(j)*h(i-j+1);
      
     endif
  endfor
  
endfor

y