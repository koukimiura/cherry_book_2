require "date"


#strftimeを使って西暦と月を英語に
mon_and_year = Date.today.strftime("%B %Y")  # 今日の月と西暦を取得

t = Date.today

month = t.month

year = t.year

week = %(Su Mo Tu We Th Fr Sa)

firstDate = Date.new(year, month, +1) #月初日
lastDate = Date.new(year, month, -1) #月末日

firstWday = firstDate.wday
lastWday = lastDate.wday

dates = (firstDate..lastDate).to_a


puts mon_and_year.center(20)

puts week

#firsWdayで"   "(1日よりも前の空白)を何個作るか決めている。
print "   " * firstWday


dates.each do |date|

	#putsとprintは出力後改行するかしないか
	#" "はカレンダーの余白合わせ
	print date.day.to_s.rjust(2, "*") + " "

	#wdayは0-6の数字
	wday = date.wday + 1

	if wday%7 == 0
		print "\n"
	end
end

lastW = 6 - lastWday

print "   " * lastW




