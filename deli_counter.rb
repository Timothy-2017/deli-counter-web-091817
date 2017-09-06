katz_deli = []

def line(line)
  if line.length == 0
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    line.each.with_index(1) do |person, i|
      current_line << " #{i}. #{person}"
    end
    puts current_line
  end
end

def take_a_number(current_line, next_customer)
  puts "Welcome, #{next_customer}. You are number #{current_line.length + 1} in line."
  current_line << next_customer
end

def now_serving(line)
  if line.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line[0]}."
  end
  line.shift
end
