w='程宇';
[pinyin,word] = FunDictionary;
dic=dictionary(pinyin,word);
quanpin = [];
for i = 1:length(w)
    quanpin = [quanpin,pinyin(find(contains(word, w(i))))];
end
