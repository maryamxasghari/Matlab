
%Load and display an image
img1 = imread('Feelings Chart.png');
imshow(img1);

%Image size:
disp(size(img1));
%hight width 3: color

%Image class or data type:
disp(class(img1));
% u : un signed 
%int  integer

%value at a given location (row,col):
disp(img1(50,100));

%value from entire row
disp(img1(50,:));

%plot the values
plot(img1(50,:));

% a slice of the image 
% (range rows , range of cols)
disp(img1(101:103,201:203));

%crop an image
disp(size(img1));
cropped = img1(100:310,200:420);
imshow(cropped);
disp(size(cropped));

img_red = img(:,:,1);
disp(size(img_red)); % this is a 2d array 

plot(img_red(150,:));

%add two images - size should be the same
%img1 = imread("image1.png");
%img2 = imread("image2.png");

%imshow(img1);
%disp("image 1 size:");
%dsp(size(img1));

%imshow(img2);
%disp("image 2 size:");
%dsp(size(img2));

%same size
%summed = img1 +img2;
%imshow(summed);

%lower the intensity in images 
%average = img1 /2 + img2 /2;
%imshow(average);

%183/2 = 92 , 152/2  = 76 =>  183/2 + 152/2 = 168

%average2 = (img1  + img2) /2;
%imshow(average2);

% unit8 : [0,255]
% (183+152)/2 =>   335 > max = 255 => 255/2 = 128 

% this is why the above two method are not the same 

% img /2 = 0.5 *img => half the indensity = darker
% 1.5 * ig => increase the intensity => brighter 

% writing a function 
% multiply by a scalar 

img1 = imread('Feelings Chart.png');

function result = scale(input_image,value)
    result = value .* input_image;
end

% 
res = scale(img1 ,1.5);
imshow(res);

% lend two image 
%img1 = imread("image1.png");
%img2 = imread("image2.png");

%result = 0.85 * img1 + 0.15 * img2;

function output = blend( a, b , alpha)
    output = alpha * a + (1 - alpha) * b;
end

result =  blend(img1 , img2 , 0.85);
imshow(result)

function output = noise(im , sigma)
    noise = randn(size(im)).*sigma; % create random mean 0 , sd = 1
    output = im + noise;
end


diff = img1 - img2; % order matter 
abs_diff = abs(img1 - img2);

% these two are the same anything <  0 in uint will be 0 
%(img1-img2) +(img2-img1) this will reserve the vlue

% from image prossesing package 
abs_diff2 = imabsdiff(img1,img2) % order does not matter
imshow(abs_diff2)


some_number = randn();
disp(some_number); 

noise = randn([1 100]);
disp(noise)

[n,x] = hist(noise, [-3 -2 -1 0 1 2 3]);
disp([x;n]);
plot(x,n);


noise = randn([1 10]);
[n,x] = hist(noise, linspace(-3,3,21));
%disp([x;n]);
plot(x,n);

% apply gaussian noise to an image
noise = randn(size(img)) .* 2;





