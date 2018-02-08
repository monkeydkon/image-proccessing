function Shirai
tic
55
Al=imread('eikona1.bmp');
Bl=imread('eikona2.bmp');
A=double(Al);
B=double(B1);
Aedge = edge(A,'canny'); 
load('Calib_Results_stereo');
imshow(B l);
[leftyl,leftxl] = ginput(l);
lefty=round(leftyl);
g=0; 
for x=255:255+578; 
for y=435:435+404 
if Aedge(x,y)==l 
MatA=[A(x-3,y-3),A(x-3,y-2),A(x-3,y-l),A(x-3,y),A(x-3,y+l),A(x-3,y+2),A(x-3,y+3);
A(x-2,y-3),A(x-2,y-2),A(x-2,y-l),A(x-2,y),A(x-2,y+l),A(x-2,y+2),A(x-2,y+3); A(x-l,y3),A(x-l,y-2),A(x-l,y-l),A(x-l,y),A(x-l,y+l),A(x-l,y+2),A(x-l,y+3);
A(x,y-3),A(x,y2),A(x,y-l),A(x,y),A(x,y+l),A(x,y+2),A(x,y+3);
A(x+l,y-3),A(x+l,y-2),A(x+l,yl),A(x+l,y),A(x+l,y+l),A(x+l,y+2),B(x+l,y+3);
A(x+2,y-3),A(x+2,y-2),A(x+2,yl),A(x+2,y),A(x+2,y+l),A(x+2,y+2),A(x+2,y+3);
A(x+3,y-3),A(x+3,y-2),A(x+3,yl),A(x+3,y),A(x+3,y+l),A(x+3,y+2),A(x+3,y+3)];
Average=mean(mean(MatA));
k=3;
56
Var1=0;
for i=-k:1:k
for j=-k: 1 :k
Var1=Var1+(A(x+i,y+j)-Average)^2,
end
end
Variance=Varl/((2*k+1)^2);
for Y=lefty:1:y
so starting from pixel 4
n=0;
SE=0;
for Xl=x-1:1:x+1
for i=-k:1:k
for j=-k:1:k
SE=SE+((A(x+i,y+j)-B(Xl+i,Y+j))^(2));
end
end
n=n+1;
SIMILARITY(n,Y)= SE/(Variance+1);
end
end
end
57
SEsize=size(SIMILARITY);
v=var(SIMILARITY);
vmin=min(min(v(:,lefty:end))); 
because the first 4 colomns are zero.
[p,Ypos]=find(v==vmin);
xR=[x;Ypos(l)];
xL=[x;y];
g=g+l;
BrecPos(g,l)=x; 
BrecPos(g,2)=Ypos(l);
[XL,XR] =
stereo_triangulation(xL,xR,om,T,fc_left,cc_left,kcieft,alpha_c_left,fc_right,cc_right,kc_
right,alpha_c_right);
ZA(x-254,y-434)=XL(3,l); 
starts from (x-214,y-514) which is (l,l)
ZB(x-254,y-434)=XR(3,l);
end
end
save(DepthofA&B)
display('elapsed time is:')
toc