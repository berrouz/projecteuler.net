def diag_left_top_right_bottom(array, length=4)
	big=[]
	row_length = Math.sqrt(array.length).to_i
	row_length.times do |column_initial|
		diags=[]
		puts "initial is #{column_initial}"
		(column_initial+1).times do |q|
			diags << array[column_initial+(row_length-1)*q]
			puts "it's array #{diags}"
		end
		big << diags
	end	
	big
end

array=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

def find_for_string(string, length_combination=4)
	position=0
		max=0
		until position+length_combination == string.length 
					s = string[position..position+length_combination].inject{|i,s| s*=i}					
					max = s if s > max
					position+=1
		end
		max_row= max if max > max_row
end

puts find_for_string(array).inspect

