function res = calc_error(func,num_ans,b)
n =numel(num_ans(:,1));
res = [num_ans(:,1) num_ans(:,2) zeros(n,2)];


for i=1:n
    res(i,3) = func(res(i,1));
    res(i,4) = abs(res(i,2)-res(i,3));
end
end

