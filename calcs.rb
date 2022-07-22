print "選択してください。a)追加　e)編集　v)閲覧 :"
input=gets.chomp
#print input
if input == "a" then
        print ("追加コマンド")
        print ("\n")
elsif input == "e" then
        print "編集コマンド"
        print "\n"
elsif input == "v" then
        print "閲覧コマンド"
        print "\n"
        result=`ruby sum.rb`
        puts result
else
        print "それ以外"
        print "\n"
end
~
