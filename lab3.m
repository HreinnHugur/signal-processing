im1 = imread("sherlock.jpg")
im2 = imread("kobi.png")
im3 = imread("pout.tif")

figure;
subplot(1,3,1);
imshow(im1);
title ("Image 1");

subplot (1,3,2);
imshow(im2);
title ("Image 2");

subplot (1,3,3);
imshow (im3);
title ("Image 3")

%3-4. Перекручування і відображення перекрученого зображення.
LEN = 10;
THETA = 30;
rotated_im = imrotate(im3, THETA, 'bilinear', 'crop');
imshow(rotated_im), title('Перекручене зображення');

%5-6. Відновлення та відображення відновленного зображення.
restored_im = imrotate(rotated_im, -THETA, 'bilinear', 'crop');
imshow(restored_im), title('Відновлене зображення');

%7. Пункти 2-6 з зашумленим зображенням.
white = imnoise(im1, 'gaussian', 0, 0.01); 
imshow(white);

LEN = 10;
THETA = 30;
rotated_white = imrotate(white, THETA, 'bilinear', 'crop');
imshow(rotated_white), title('Перекручене зашумлене зображення');

restored_white = imrotate(rotated_white, -THETA, 'bilinear', 'crop');
imshow(restored_white), title('Відновлене зашумлене зображення');