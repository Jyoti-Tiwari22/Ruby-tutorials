s = "racecar"
puts "the string '#{s} is nonempty." unless s.empty?
puts s.length
puts "it is a palindrome" if s == s.reverse
g = s == s.reverse
puts g

def string_message(str = '')
    return "it's an empty" if str.empty?
    return "nonempty"
end
:string_message
puts string_message("")

def palindrome_tester(s ='')
    return "it is a palindrome!" if s == s.reverse
    return "not a palindrome"
end
puts palindrome_tester("racecar")
puts palindrome_tester("onomatopoeia")

def wrap &b
    print "santa says: "
    3.times(&b)
    print "\n"
end
wrap { print "Ho! " }