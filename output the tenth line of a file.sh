#How to output tenth line of a text file:

#Original thinking:

cat file.txt | head -10 | tail -1
head -10 #从第十行开始
tail -1 #倒着输出最后一行
#即是第十行 但是9行时 会输出最后一行 所以不对

cat file.txt | tail -n+10 | head -1
tail -n+10 #表示从第十行开始输出
head -1 #输出第一行
# 正解！ 因为从第十行开始的第一行输出没问题，如果没有第十行(e.g 第九行) 则输出空(Null)
