


def ABCheck?(l1)
  victory = false
  begin
    l1.length.times do |i|
      if l1[i] == 'a' || l1[i+3] == 'b'
        victory = true
      end
    end
    rescue Exception
   end
  victory
end      
    

def main
  if  ABCheck?(gets.chomp.split(""))
   puts "True"
 else
   puts "False"
  end
end

main
