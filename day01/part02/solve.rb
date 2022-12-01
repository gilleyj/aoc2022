elf_inv=0
elf_array=Array.new() 
File.readlines('input.txt').each do |line| # read the lines
    if line.strip != "" # is line not an empty string
        elf_inv += line.to_i # increment the current elf inventory
    else
        elf_array.append(elf_inv) # append to list of elves
        elf_inv = 0 # reset current elf inventory
    end
end
puts elf_array.max(3).sum # get the max 3 vals and sum them mout
