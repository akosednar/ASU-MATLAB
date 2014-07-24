close all
clear

%%
% Exercise 1
A = [1,4,2;2,5,8;3,6,9];
B = [1,2,3;4,5,6;7,8,9];
b = [4;23;27];
c = [4,3,2];
d = [1;2;3];

% a
A.*B
B.*A
c*B
A*d

% b
C=[A,B]
D=[B;c]

% c
x=b\A

% d
A(2,3)=0

% e
A(3,:)

% f
B(3,:)=[]

%%
% Exercise 2


% a
lab2_ex2a(0.5,3,10)

% b
lab2_ex2b(0.5,3,10)


%%
% Exercise 3

% a
for i=1:20
    if i==1
        product = 1;
    elseif mod(i,2) 
        product = product*i;
    end
end
product

% b
prod(1:2:20)

%%
% Exercise 4
i = 2;
n=2;
vector = [];
while n < 100
    vector = [vector,n];
    n = 2^i;
    i = i+1;
end
vector

%%
% Exercise 5

lab2_ex5(1)
lab2_ex5(4)
lab2_ex5(7)
lab2_ex5(10)