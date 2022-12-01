elf_id=0
elf_inv=0
elf_max=0
elf_max_id=0
File.readlines('input.txt').each do |line| # read the lines
    if line.strip != "" # is line not an empty string
        elf_inv += line.to_i # increment the current elf inventory
    else
        if elf_inv > elf_max # is it the biggest inventory we've seen?
            elf_max_id = elf_id # biggest elf
            elf_max = elf_inv # biggest elves inventory
        end
        elf_id += 1 # increment elf id
        elf_inv = 0 # reset current elf inventory
    end
end
puts elf_max.to_s # max calories ya I solved this like a C dev sorry