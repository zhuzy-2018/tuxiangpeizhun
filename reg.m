%��ҵ����ͼ����׼

unregimg = imread('Image B.jpg'); 
baseimg= imread('Image A.jpg'); 
figure, 
subplot(2,2,1),imshow(unregimg); title('unregimg');
subplot(2,2,2),imshow(baseimg); title('baseimg');

cpselect(unregimg,baseimg);
%�ǵñ��浽����������ʽĬ�ϼ���
%��Ҫ�ڴ˴�����ϵ�

tform=cp2tform(movingPoints,fixedPoints,'affine'); 
Iout=imtransform(unregimg,tform); 

H=tform.tdata.T

subplot(2,2,3),imshow(Iout); title('reged');
subplot(2,2,4),imshow(baseimg); title('baseimg');

