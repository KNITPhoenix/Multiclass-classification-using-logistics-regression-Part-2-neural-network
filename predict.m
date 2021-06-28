function p = predict(Theta1, Theta2, X)
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

X=[ones(m,1) X];

temp=sigmoid(X*Theta1');
temp=[ones(m,1) temp];

temp1=sigmoid(temp*Theta2');
[prob ind] = max(temp1');

p=ind';
end
