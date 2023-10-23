function B=read_list(A)

% 去除标点符号
A = regexprep(A, '[^\w\s]' , '');

% 将小写字母转化为大写字母
A = upper(A);

B=[];
for i=1:length(A)
    [name,score]= voice_read(char(A(i)));
    B=[B,string(name),string(score)];
end
B=reshape(B,2,length(A));
end

function [name,score]= voice_read(A)

% 使用正则表达式将A中的汉字和字母加符号分成两个部分
letter_pattern = '[a-zA-Z+\-]+'; % 匹配字母加符号的正则表达式
score = regexp(A, letter_pattern, 'match'); % 提取A中的字母加符号
name=erase(A, score);
if ~isempty(score)
    score=score{1};
else
    score='s';
end

end