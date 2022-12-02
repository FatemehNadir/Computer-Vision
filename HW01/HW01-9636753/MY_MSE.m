function output = MY_MSE(I_1,I_2)
output = (sum(sum((I_1-I_2).^2))/(numel(I_1)));
end