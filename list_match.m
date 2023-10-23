function [minValue, minIndex]=list_match(list,name)
distance_list=[];
pinyin1 = FunPinyin(name);
for i=1:length(list)
    distance = levenshtein(pinyin1, list(i));
    distance_list=[distance_list,distance];
end
[minValue, minIndex] = min(distance_list);
end