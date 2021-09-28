# 1. 
def has_a_lab(string)
  if /lab/i =~ string
    puts "Yes 'lab' exists in the word #{string}"
  else 
    puts "no 'lab' does not exist in the word #{string}."
  end
end

has_a_lab("laboratory")
has_a_lab("experiment")
has_a_lab("pans Labyrinth")
has_a_lab("elaborate")
has_a_lab("polar bear")

