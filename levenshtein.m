function distance = levenshtein(str1, str2)
% 计算两个字符串之间的Levenshtein距离

% 初始化距离矩阵
m = length(str1);
n = length(str2);
d = zeros(m+1, n+1);
for i = 1:m+1
    d(i,1) = i-1;
end
for j = 1:n+1
    d(1,j) = j-1;
end

% 计算距离矩阵
for j = 2:n+1
    for i = 2:m+1
        if str1(i-1) == str2(j-1)
            d(i,j) = d(i-1,j-1);
        else
            d(i,j) = min([d(i-1,j), d(i,j-1), d(i-1,j-1)]) + 1;
        end
    end
end

% 返回距离
distance = d(m+1,n+1);
end