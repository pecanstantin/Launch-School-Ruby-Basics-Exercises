s = 'abc def ghi,jkl mno pqr,stu vwx yz'
# puts s.split.inspect
# ["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"]
# regular .split splits on white space

# puts s.split(',').inspect
# ["abc def ghi", "jkl mno pqr", "stu vwx yz"]
# splits on comma

puts s.split(',', 2).inspect
["abc def ghi", "jkl mno pqr,stu vwx yz"]
# gives limit on [no more than limit values are returned], so 2 element array 