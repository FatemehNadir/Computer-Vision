clc;close all; clear;

prompt = 'please enter your image path  \n';
user_entry = input(prompt, 's');

I_BEE=im2double(imread(user_entry));

R_BEE=I_BEE(: ,:,1 );G_BEE=I_BEE(: ,:,2 );B_BEE=I_BEE(: ,:,3 );


%BEE

subplot(2,3,1);
imshow(I_BEE,[]);
title('original =>5');


R_BEERESIZE=My_Imresize_NN(R_BEE,5);
G_BEERESIZE=My_Imresize_NN(G_BEE,5);
B_BEERESIZE=My_Imresize_NN(B_BEE,5);
FINAL_NN1=cat(3,R_BEERESIZE,G_BEERESIZE,B_BEERESIZE);
subplot(2,3,4);
imshow(FINAL_NN1,[]);
title('Nearset-Neribor');


R_BEERESIZE1=My_Imresize_BL(R_BEE,5);
G_BEERESIZE1=My_Imresize_BL(G_BEE,5);
B_BEERESIZE1=My_Imresize_BL(B_BEE,5);
FINAL_B1=cat(3,R_BEERESIZE1,G_BEERESIZE1,B_BEERESIZE1);
subplot(2,3,5);
imshow(FINAL_B1,[]);
title('Bilinear');

K_2= imresize(I_BEE,5,'Bicubic');
subplot(2,3,6);
imshow(K_2,[]);
title('Bicubic');

%imwrite(,'myImage.jpeg','JPEG');


