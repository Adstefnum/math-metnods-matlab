function res = calc_error_methods(nums_a,nums_b)
n = numel(nums_a(:,1));
res = [nums_a(:,1) nums_a(:,2) nums_b(:,2)];
for i=1:n
    res(i,4) = abs(res(i,2)-res(i,3));
end
end

