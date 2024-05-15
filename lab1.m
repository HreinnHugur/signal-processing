%1.Завантажити зображення
im1 = imread("sherlock.jpg")
im2 = imread("kobi.png")
im3 = imread("pout.tif")

%2.Завантажити з довыльного каталогу
image_directory = 'C:\Users\User\Desktop\matlab\lab1\images';
image_filename = 'autumn.jpg';

im4_path = fullfile(image_directory, image_filename);

im4 = imread(im4_path);

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

figure;
imshow(im1);
hold on;
imshow(im2);
imshow(im3);
hold off;
title('All images');

imshow (im4)
title ("Image 4")

%3.Одержати інформацію про зображення
image_size = size(im1);
disp(['Image 1 size: ' num2str(image_size(1)) ' x ' num2str(image_size(2))]);

image_class = class(im2);
disp(['Image 2 class: ' image_class]);

min_pixel_value = min(im3(:));
max_pixel_value = max(im3(:));
disp(['Image 3 min pixel value: ' num2str(min_pixel_value)]);
disp(['Image 3 max pixel value: ' num2str(max_pixel_value)]);


%Зберегти зображення
output_directory = 'C:\Users\User\Desktop\matlab\lab1\images';
output_image1_path = fullfile(output_directory, 'sherlock.jpg');
output_image2_path = fullfile(output_directory, 'kobi.png');
output_image3_path = fullfile(output_directory, 'pout.tif');

imwrite(im1, image1_path);
imwrite(im2, image2_path);
imwrite(im3, image3_path);

disp(['Image 1 saved at: ' image1_path]);
disp(['Image 2 saved at: ' image2_path]);
disp(['Image 3 saved at: ' image3_path]);

%5.Гістограма яскравостей
I = imread('C:\Users\User\Desktop\matlab\lab1\images\pout.tif');
[histogram, bins] = imhist(I);
figure;
bar(bins, histogram);
title('Гістограма розподілу яскравостей');
xlabel('Значення пікселів');
ylabel('Частота');

%6-7. Контрастування зображення з виведенням на екран
image = imread('C:\Users\User\Desktop\matlab\lab1\images\autumn.jpg');
adjusted_image = imadjust(image);
figure;
subplot(1, 2, 1);
imshow(image);

%8. Негатив зображення
[rows, cols, channels] = size(im1);
negative_I = 255 - im1;
imshow(negative_I);