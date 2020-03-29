
puts "いらっしゃいませ"

puts "ジュースを何本買いますか?(3本ごとに１本おまけ。一回の購入は100本まで)"

input = gets.to_i

	if input >= 0 && input <= 100

		if input%3 == 0


			b = input/3

			puts "あなたは#{input+b}本飲めます。"

		elsif input < 3 

			puts "あなたは#{input}本飲めます。"

		else

			b = input/3

			puts "あなたは#{input+b}本飲めます。"

		end

	else
		puts "一回の購入は100本まで"
	end







