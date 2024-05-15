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
%3-4 Зашумлення зображень і їх відображення.
white = imnoise(im1, 'gaussian', 0, 0.01); 
imshow(white);

impulse = imnoise(im1, 'salt & pepper', 0.05); 
imshow(impulse);

%5-6. Щось про фільтрацію, мені лінь писати
filter_size = [3, 3];

low_pass_filter = ones(filter_size) / prod(filter_size);

high_pass_filter = fspecial('laplacian');

smooth = imfilter(im2, low_pass_filter);
edges = imfilter(im2, high_pass_filter);

figure;
subplot(1, 3, 1);
imshow(im2);
title('Оригінальне зображення');

subplot(1, 3, 2);
imshow(smooth);
title('Розгладжене зображення');

subplot(1, 3, 3);
imshow(edges);
title('Зображення з виділеними гранями');

%7
mean_filter = fspecial('average', [3, 3]);
smoothed_image = imfilter(white, mean_filter);

median_filtered_image = medfilt2(white, [3, 3]);

figure;
subplot(1, 3, 1);
imshow(white);
title('Зашумлене зображення');

subplot(1, 3, 2);
imshow(smoothed_image);
title('Фільтрація усередненням');

subplot(1, 3, 3);
imshow(median_filtered_image);
title('Медіанний фільтр');

%8
denoised_image = wiener2(impulse, [5, 5]);

figure;
subplot(1, 2, 1);
imshow(impulse);
title('Зашумлене зображення');

subplot(1, 2, 2);
imshow(denoised_image);
title('Відновлене зображення за допомогою Вінерівського фільтра');

%9
denoised_image = medfilt2(white, [3, 3]);

figure;
subplot(1, 2, 1);
imshow(white);
title('Зашумлене зображення');

subplot(1, 2, 2);
imshow(denoised_image);
title('Відновлене зображення за допомогою медіанного фільтра');