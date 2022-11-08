function res = calc_error_sys(func,num_ans)
n =numel(num_ans(:,1));
res = [num_ans(:,1) num_ans(:,2) num_ans(:,3) zeros(n,4)];


for i=1:n
    res(i,4:5) = func(res(i,1),res(i,2));
    res(i,6) = abs(res(i,2)-res(i,4));
    res(i,7) = abs(res(i,3)-res(i,5));
    
end
end

