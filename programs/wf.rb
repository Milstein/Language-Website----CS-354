#!/usr/bin/ruby                                        

# author: Said Barrero
# usage: ruby wf.rb < <textfile> < | sort -n -k2 >

#Declare a hash to store the number of word counts. If there is a non-existant entry in the
#hash that is referenced, it will automatically have a default value of 0.
word_counts = Hash.new(0)


# ARGF is an IO object that will contain the concatenation of all of the files
# listed in ARGV, or STDIN if ARGV is empty.
while line = ARGF.gets do
	  line.downcase!     # make the entire line lowercase
      line.chomp!        # remove the trailing newline

	# Split the line into words and increment their frequency counts in the hash. 
	for word in line.split(/[-,.;:'"&!?_ \t\n]+/)
        word_counts[word] += 1
    end
end

# Print out each word and its frequency in a list sorted by frequency count.
for word,count in word_counts.sort{|a,b| a[1] <=> b[1]}
    printf("%-20s %d\n", word, count)
end
