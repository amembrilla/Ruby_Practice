#begin
  # perform some dangerous operation
#rescue
  # do thisi iis operation fails
  #for example, log error
#end


names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin 
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end

