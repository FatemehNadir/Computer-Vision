clc;close all; clear;

prompt = 'please enter your image path  \n';
user_entry = input(prompt, 's');

I_CAT=im2double(imread(user_entry));

subplot(2,3,1);
imshow(I_CAT,[]);
title('original =>0.2');

R_CAT=I_CAT(: ,:,1 );G_CAT=I_CAT(: ,:,2 );B_CAT=I_CAT(: ,:,3 );

R_CATRESIZE=My_Imresize_NN(R_CAT,0.2);
G_CATRESIZE=My_Imresize_NN(G_CAT,0.2);
B_CATRESIZE=My_Imresize_NN(B_CAT,0.2);
FINAL_NN=cat(3,R_CATRESIZE,G_CATRESIZE,B_CATRESIZE);
subplot(2,3,4);
imshow(FINAL_NN,[]);
title('Nearset-Neribor');


R_CATRESIZE1=My_Imresize_BL(R_CAT,0.2);
G_CATRESIZE1=My_Imresize_BL(G_CAT,0.2);
B_CATRESIZE1=My_Imresize_BL(B_CAT,0.2);
FINAL_B=cat(3,R_CATRESIZE1,G_CATRESIZE1,B_CATRESIZE1);
subplot(2,3,5);
imshow(FINAL_B,[]);
title('Bilinear');

K_2= imresize(I_CAT,0.2,'Bicubic');
subplot(2,3,6);
imshow(K_2,[]);
title('Bicubic');




