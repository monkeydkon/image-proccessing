function code=Chain_Code(x,i,j)    

[M,N]=size(x);
di=[0 -1 -1 -1 0 1 1 1];
dj=[1 1 0 -1 -1 -1 0 1];
first=1
val=x(i,j);  
n=0; 
h1=0; 
w1=0;  
q = i;  
r = j;
lastdir = 4; 
 
flag=1;
while ((q~=i) || (r~=j) || (flag==1)) 
       first=0;
       m = 0;
       dii = -1;    
  for ii=lastdir+1:lastdir+7 
        jj = mod(ii,8); 
        if ((di(jj+1)+q)<=M) && ((dj(jj+1)+r)<=N) && (di(jj+1)+q>0) && (dj(jj+1)+r)>0  
            if ( x(di(jj+1)+q,dj(jj+1)+r) == val)  
            dii = jj;   
			m = 1;
            break; 
			end;
		end;
   end;
   if m==1
		if n<200 
			n=n+1;
			c(n) = dii; 
			q =q+ di(dii+1);  
			r =r+ dj(dii+1);
			lastdir = mod(dii+4,8);
		end;
    else break;
    end;
    if n>=200 break; 
	end;
end;

if(n>0)
   code=c;
else error(sprintf('Μήκος Αλυσίδας: 0'));
end;
