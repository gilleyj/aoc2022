elf_inv=0
elf_max=0
File.readlines('input.txt').each do |line| # read the lines
    if line.strip != "" # is line not an empty string
        elf_inv += line.to_i # increment the current elf inventory
    else
        if elf_inv > elf_max # is it the biggest inventory we've seen?
            elf_max = elf_inv # set biggest elf inventory
        end
        elf_inv = 0 # reset current elf inventory
    end
end
puts elf_max.to_s # show the biggest elf inventory
