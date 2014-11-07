#!/usr/bin/ruby

## Demonstrate usage of regular expressions

## Jimmy Wang

string1 = "We have a big big world"
print "g.*g found", "\n" if string1 =~ /g.*g/
print "i.*i found", "\n" if string1 =~ /i.*i/
print "h.*h found", "\n" if string1 =~ /h.*h/

print "===========================\n"

string2 = "I will drill for a well in walla walla washington."
target = Regexp.new(/w.ll/)
matchword = target.match(string2)

while matchword != nil
	puts matchword[0]
	string2 = matchword.post_match
	matchword = target.match(string2)
end
