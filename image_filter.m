%Remove noise with gaussian filtr 

% Load an image
im = imread('t1.png');
imshow(im);


% Add some noise to the image 
noise_sigma = 25;
noise = randn(size(im)).* noise_sigma;
noisey =cast(noise,'uint8');
noisy_im = im +  noisey;
imshow(noisy_im);

% Create a filter 
hsize = 31;
sigma = 5;
h = fspecial('gaussian',hsize,sigma);

surf(h);
imagesc(h);

% Apply it to remove noise 
outim = imfilter(im,h);

imshow(outim);


for sigma = 1:3:10
    h = fspecial('gaussian',hsize,sigma);
    out = imfilter(im,h);
    imshow(out);
    pause;
end