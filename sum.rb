#足し算をする　ファイルを読み込むTSV
require "csv"
sum=0
CSV.foreach("out.dat", col_sep: "\t", headers: false) do |row|
    # 行に対する処理
    p row
        sum=sum+row[1].to_i
end
print "合計："
print sum
print "\n"
in01=250000
sa01=in01-sum
print sa01
print " 一日あたり:"
day=sa01/(31*2)
print day
print "\n"

sum02=0
CSV.foreach("in01.dat", col_sep: "\t", headers: false) do |row|
    # 行に対する処理
    p row
        sum02=sum02+row[1].to_i
end
print "合計："
print sum02
print "\n"

d = Date.today
d1 =Date.new(2022, 8 ,15)
sa03=d1-d
print "残日数:"
print sprintf("%d",sa03)
sa05=sum02/sa03
print " 一日あたり:"
print sprintf("%d",sa05)
print "\n"
