class Say
	def in_english(num)

    numTeens=num
    num = num.split("")
    firstrun=false
    total = ""

    if num.length >1

      if num[0].to_i > 1

        num.each do |x|
          #puts "#{x} "
          if firstrun==false

            x=x.gsub("2","twenty").gsub("3","thrity").gsub("4","forty").gsub("5","fifty").gsub("6","sixty").gsub("7","seventy").gsub("8","eighty").gsub("9","ninety")
    
            print x

           #puts "run one"
            firstrun=true
          else
            x=x.gsub("0","").gsub("1","-one").gsub("2","-two").gsub("3","-three").gsub("4","-four").gsub("5","-five").gsub("6","-six").gsub("7","-seven").gsub("8","-eight").gsub("9","-nine")
     
            print "#{x} \n"
          end
        end

      else
        num=numTeens.gsub("10","ten").gsub("11","eleven").gsub("12","twelve").gsub("13","thirteen").gsub("14","fourteen").gsub("15","fifteen").gsub("16","sixteen").gsub("17","seventeen").gsub("18","eighteen").gsub("19","nineteen")
        puts num
      end 

    else      
      #puts "its a single digit number"
      puts num[0].gsub("0", "zero").gsub("1","one").gsub("2","two").gsub("3","three").gsub("4","four").gsub("5","five").gsub("6","six").gsub("7","seven").gsub("8","eight").gsub("9","nine")
    end

	end
end

puts "Enter a number(0-99) we'll return the english:"
userNum = gets.chomp


while userNum.to_i>99 || userNum.to_i<0 do
  puts "Please enter a number(0-99):"
  userNum = gets.chomp
end

Say.new.in_english(userNum)