
puts "最初はグー、じゃんけん..."

puts "[0]:グー\n[1]:チョキ\n[2]:パー"


 player = gets.to_i

 me =  rand(0..2)

case player

	when 0
	# グーーーー
			 if me == 1

			 	puts "あなたの手:グー、相手の手:チョキ"

			 	puts "あなたの勝ちです"

			 elsif  me == 2

				puts "あなたの手:グー、相手の手:パー"

			 	puts "あなたの負け"

			 elsif me == 0

				puts "あなたの手:グー、相手の手:グー"

			 	puts "あいこです"
			 end

		when 1
		# チョキ
			if  me == 2

			 	puts "あなたの手:チョキ、相手の手:チョキ"

			 	puts "あなたの勝ちです"

			 elsif me == 0

				puts "あなたの手:チョキ、相手の手:パー"

			 	puts "あなたの負け"

			 elsif  me == 1

			 	puts "あなたの手:チョキ、相手の手:チョキ"

			 	puts "あいこです"
			 end

		# パー

		when 2

			 if me == 0

			 	puts "あなたの手:パー、相手の手:グー"

			 	puts "あなたの勝ちです"

			 elsif  me == 1

				puts "あなたの手:パー、相手の手:チョキ"

			 	puts "あなたの負け"

			 elsif me == 2

				puts "あなたの手:パー、相手の手:ぱー"

			 	puts "あいこです"

			end
		else

			puts "入力された値が無効です"
end