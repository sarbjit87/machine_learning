% Basic Operations
2 + 2
2 * 3
4 / 2
4 % 2
2 ^ 3

% Logical Operations
2 ~= 3 % true
2 == 3 % false
1 && 0 % AND 
1 || 0 % OR

% Variables
age = "31"
name = "John"
printf("My name is %s and my age is %d\n", name, str2num(age))
class(age) % Type of variable

disp(name)

% Matrix - 3 by 2
A = [1 2; 3 4; 5 6]

% Row and Column Vector
V = [ 1 2 3 ]
V1 = [1; 2; 3]

% Start:Step:End
V2 = [1:0.1:2]

% Start:End
V3 = [1:6]

% All Ones or Zeros - row by columns
w1 = ones(1,3)
w2 = zeros(1,3)

% Random
rand(3,3)

% Matrix multiplication by constant
a1 = 2*ones(3,3)

% Histogram example
w = -6 + sqrt(10)*(randn(1,10000));
hist(w,30)

% Identity Matrix
I = eye(6)

% Size of matrix :  Returns row by column matrix

size(A)
size(A,1) % Row only
size(A,2) % Column only

% Length : Gives larget dimension value
length(A)
length(V)

% use load command to load file
% use who and whos command for existing variables
% use clear command to get rid of variables
% use save command to save a file (save hello.mat v) | -ascii

% Matrix slicing

A(1,2) % 1st row and 2nd column element

A(:,2) % All elements in 2nd column

A([1,3],:) % Only 1 and 3rd row elements

A(:,2) = [10; 11; 12]

A = [A, [100; 101; 102]] % Append column

A(:) % Transforms a matrix into column vector 

% Matrix arithemetic

A1 = [1  2; 3 4; 5 6]
B1 = [11 12; 13 14; 15 16]
C1 = [1 1; 2 2]

A1*C1 % Matrix Multiplication 

A1 .* B1 % Element wise multiplication

v = [1; 2; 3]
1 ./ v % Element wise division

log(v)
exp(v)
abs(v)

A = magic(3)

sum(A,1) % Sum along columns 
sum(A,2) % Sum along rows
pinv(A) % Inverse of matrix

% Plotting

t = [0:0.01:0.98];
y1 = sin(2*pi*4*t);
plot(t,y1);
y2 = cos(2*pi*4*t);
plot(t,y2); %use hold on; command to preserve the previous plot


subplot(1,2,1) % Plot in 1by2 grid, access first element
plot(t,y1);
subplot(1,2,2)
plot(t,y2);

A = magic(5);

imagesc(A);
imagesc(A), colorbar
imagesc(A), colorbar, colormap gray;

% For loop

v = zeros(10,1);
for i=1:10,
  v(i) = 2^i;
end

indices = 1:10;
for i=indices,
  disp(i);
end

i=1;
while true,
  v(i) = 999;
  i = i+1;
  if i==6,
    break;
  endif
endwhile
v
