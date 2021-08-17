
%add two images - size should be the same
img1 = imread('img1.png');
img2 = imread('img2.png');

%same size
summed = img1 +img2;
%imshow(summed);

%lower the intensity in images 
average = img1 /2 + img2 /2;
%imshow(average);

average2 = (img1  + img2) /2;
%imshow(average2);

% writing a function 
% multiply by a scalar 

diff = img1 - img2; % order matter 
abs_diff = abs(img1 - img2);



res = scale(img1 ,1.5);
%imshow(res);



result =  blend(img1 , img2 , 0.85);
%imshow(result)


diff = img1 - img2; % order matter 
abs_diff = abs(img1 - img2);

% these two are the same anything <  0 in uint will be 0 
%(img1-img2) +(img2-img1) this will reserve the vlue

% from image prossesing package 
%abs_diff2 = imabsdiff(img1,img2) % order does not matter
%imshow(abs_diff2)

some_number = randn();
disp(some_number); 

noise = randn([1 100]);
%disp(noise)

[n,x] = hist(noise, [-3 -2 -1 0 1 2 3]);
disp([x;n]);
plot(x,n);

noise = randn([1 10000]);
[n,x] = hist(noise, linspace(-3,3,21));
%disp([x;n]);
plot(x,n);

% apply gaussian noise to an image
noise1 = randn(size(img2)) .* 1;
%imshow(noise1)

imgx = imread('img2.png');
imshow(imgx);
noisex = randn(size(imgx)).* 100;
noisey =cast(noisex,'uint8');
outputx = imgx + noisey;
imshow(outputx);




function result = scale(input_image,value)
    result = value .* input_image;
end

function output = blend( a, b , alpha)
    output = alpha * a + (1 - alpha) * b;
end

