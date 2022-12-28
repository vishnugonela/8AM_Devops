#2. What is the command to find a 'string' in a file
#a.string must be a '6' digit word
   grep "^......" filename // displays lines containing six digit word
   grep -o "^......" filename // displays only the words
#b.string starts with 'V' and ends with 'U'
   grep "^V....U" filename 
#c. string contains like _B_D_   also, A_C_E
   grep  "^.B.D" filename
   grep "^A.C.E" filename
     or 
   grep  ".B.D" filename
   grep "A.C.E" filename
#d.a)Search a strings 'abc' and 'def'
	#	- OR ( abc or def)
	#	- AND (abc and def)

find -type f -exec grep -l abc {} \;| xargs grep -l def 
b) OR condition lookup 
 
$ find | xargs grep -E '(abc|def)' 
./a:abc 
./b:def 
./c:abc def 
 
:' If we want an AND condition rather than a OR condition, 
then we can switch grep to use PCRE. Where we can add as
 many conditions to the expression to find > 1 patterns 
 within a file.'
 
Try: $ find | xargs grep -P '^(?=.*abc)(?=.*def)'
