status = :success
case status
when :success
  puts "Operation successful!"
when :error
  puts "An error occurred."
else
  puts "Unknown status."
end
