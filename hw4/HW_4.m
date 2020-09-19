user_input=input('select 1 if you would like to solve a set of linear expressions\n or choose 2 if you would like to solve only one expression\n by substituting')
if user_input==1 
    exp_solver
elseif user_input==2
    lin_exp_solver
else input('please input either a 1 or 2 to start this function.')
end

function answer=exp_solver(user_input)
exp=input('please put in the number of variables in the expression');
num_vara=input('please put in the number of variables in the expression.');
cell_array={};
for ii=1:num_vars
    cell_array(ii)=input('please enter one variable at a time.','a');
end
reg_array=[];
for ii=1:num_vars
    reg_array(ii)=input('please enter the values you would like substituted for each variable,inorder.');
end
answer=subs(exp,cell_array,reg_array);
fid=fopen('section2.txt','wt');
fprintf(fid,'Single Expression.\n');
fprintf(fid,'Expression inputted:%s.\n',exp);
fprintf(fid,'Values entered: %d\n',reg_array);
fprintf(fid,'Answer: %d',answer);


function [x, y, z]=lin_exp_solver(user_input)
syms x y z;
all_array=[];
all_array(1,1)=input('Please input the first coefficient.');
all_array(1,2)=input('Please enter a value for the exponent.');
all_array(2,1)=input('Please input the second coefficient.');
all_array(2,2)=input('Please enter a value or the second exponent');
all_array(3,1)=input('Please input the third coeffiient.');
all_array(3,2)=input('Please enter a value for the exponent.');
sol_for=input('Please enter the solution for the equation (For example: x+y+z=10<--this number.');
expl=all_array(1,1)*^all_array(1,2);
expl=expl+all_array(2,1)*x^all_array(2,2);
exp1=expl+all_array(3,1)*x^all_arra(3,2)==sol_for;
exp2=all_array(1,1)*y^all_array(1,2);
exp2=exp2+all_array(2,1)*y^all_array(2,2);
exp2=exp2+all_array(3,1)*y^all_array(3,2)==sol_for;
exp3=all_array(1,1)*z^all_array(1,2);
exp3=exp3+all_array(2,1)*z^all_array(2,2);
exp3=exp3+all_array(3,1)*z^all_array(3,2)==sol_for;
x=solve(exp1,x);
y=solve(exp2,y);
z=solve(exp3,z);
fid=fopen('output_file.txt','wt');
fprintf(fid,'Linear Expression\n');
fprintf(fid,'equation one: %s\n',exp1);
fprintf(fid,'equation two: %o\n',exp2);
fprintf(fid,'equation three: %s\n',exp3);






