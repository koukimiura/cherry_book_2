
def bingo_card
	b = (1..15).to_a.sample(5)
	i = (16..30).to_a.sample(5)
	n = (31..45).to_a.sample(5)
	n[2] = nil
	g = (46..60).to_a.sample(5)
	o = (61..75).to_a.sample(5)

	# puts b.class

	bingo = " B |  I |  N |  G |  O\n"


	5.times do |index|
		#二次元配列
		[b,i,n,g,o].each do |number|

			bingo += number[index].to_s.rjust(2) + " | "

		end
        # 一列作ったらケツの要素を短絡に書き換え
        #array[負のインデック部番号は半角スペースも含めている。]
		bingo[-3..-1] = "\n"
	end
	# 戻し
	return bingo
end

puts bingo_card

