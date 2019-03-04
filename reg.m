%作业二，图像配准

unregimg = imread('Image B.jpg'); 
baseimg= imread('Image A.jpg'); 
figure, 
subplot(2,2,1),imshow(unregimg); title('unregimg');
subplot(2,2,2),imshow(baseimg); title('baseimg');

cpselect(unregimg,baseimg);
%记得保存到工作区，格式默认即可
%需要在此处加入断点

tform=cp2tform(movingPoints,fixedPoints,'affine'); 
Iout=imtransform(unregimg,tform); 

H=tform.tdata.T

subplot(2,2,3),imshow(Iout); title('reged');
subplot(2,2,4),imshow(baseimg); title('baseimg');

