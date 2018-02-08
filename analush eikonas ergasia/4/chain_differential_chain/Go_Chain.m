function Go_Chain(I)

image=imread('1.jpg');
I=rgb2gray(image); 

BW=edge(I,'canny'); 

BW1=bwareaopen(BW,35);

L=bwlabel(BW1);

figure(1);
subplot(221);
imshow(I)
xlabel('input image(gray)');
axis equal;
subplot(222);
imshow(BW)
xlabel('Canny Filter');
axis equal;
subplot(223);
imagesc(L)
xlabel('Connected components larger than 35 Pixel');
axis equal;
 %---------------------------
figure(2);
imshow(BW);
hold on;%--------Do chain code------
k=max(max(L));
 
for i=1:k %gia kathe perioxi i
    [xc,yc]=find(L==i);
    cc=Chain_Code(L,xc(1),yc(1));%chain code
    dcc=Differential_Chain_Code(cc);
    plot(xc(1),yc(1),'-.r*');
	xlabel('Start point');
        
    disp(sprintf('Chain Code:')); cc
    disp(sprintf('Differential Chain Code:')); dcc
    disp(sprintf('\n----------------------------'));
    
end;
