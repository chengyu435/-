%手机发送微信"姓名+成绩"的语音消息，自动识别为文字，通过微信截图提取文字组成voice_list数组,默认成绩为A
% 自动匹配姓名并添加成绩

function score=main_process(voice_list)
load('list.mat');
B=read_list(voice_list);
score=cell(length(list),1);
score(:) = {''};
for i=1:length(B)
    [~, minIndex]=list_match(list,char(B(1,i)));
    score{minIndex,1}=char(B(2,i));
end
end