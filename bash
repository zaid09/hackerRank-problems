1.Given N lines of input, print the 3rd character from each line as a new line of output. It is guaranteed that each of the n lines of input will have a 3rd character.
-> cut -c3

2.Display the 2nd and 7th character from each line of text.
-> cut -c2,7

3.Display a range of characters starting at the 2nd position of a string and ending at the 7th position (both positions included).
-> cut -c2-7

4.Display the first 20 lines of an input file.
-> head -n 20 [filename] 

5.Display the first 20 characters of an input file.
-> head -c 20 [filename]

6.Display the last 20 lines of an input file.
-> tail -n 20 [filename]

7.Display the last 20 characters of an input file.
-> tail -c 20 [filename]

8.In a given fragment of text, replace all parentheses ( ) with box brackets [ ].
-> tr "()" "[]"

9.In a given fragment of text, delete all the lowercase characters a−z.
-> tr -d a-z

10.Sort Options
 - The vanilla sort command simply sorts the lines of the input file in lexicographical order.
 - The -n option sorts the file on the basis of the numeric fields available if the first word or column in the file is a number.
 - The -r option reverses the sorting order to either the reverse of the usual lexicographical ordering or descending order while sorting in 	numerical mode.
 - The -k option is useful while sorting a table of data (tsv, csv etc.) based on a specified column (or columns).
 - The -t option is used while specifying a delimiter in a particular file where columns are separated by tabs, spaces, pipes etc.

11.The uniq command replaces the consecutive repetitions with only one line in each case.
   Uniq with counts : uniq -c
   The -d option only prints those lines that are followed by one or more repetitions immediately after them : uniq -d
   The -u option only prints those lines that are succeeded and preceded by different lines : uniq -u
   Limit comparison only to the first N characters (using the -w option).
   Avoid comparing the first N characters (using the -s option).
   Ignore variations in case between lines (using the -i option).
   Avoid comparing the first N fields (using the -f option). 

12.Given a text file, count the number of times each line repeats itself. Only consider consecutive repetitions. Display the space separated count and line, respectively. There shouldn't be any leading or trailing spaces. 
-> uniq -c|cut -c7-

13.You are given a CSV file where each row contains the name of a city and its state separated by a comma. Your task is to replace the newlines in the file with semicolons as demonstrated in the sample.
-> paste -d ';' -s

14.You are given a CSV file where each row contains the name of a city and its state separated by a comma.
   Restructure the file so that three consecutive rows are folded into one line and are separated by semicolons.
-> paste -d ';' - - -

15.Given a text file that will be piped into your command through STDIN. Use grep to display all the lines that contain the word 'the' in them. The search should be sensitive to case. Display only those lines of the input file that contain the word 'the'.
-> grep -w "the"

16.Given a text file that will be piped into your command through STDIN. Use grep to display all those lines that contain the word the in them.  The search should NOT be sensitive to case. Display only those lines of the input file that contain the word 'the'.
-> grep -w -i 'the'

17.Given a text file that will be piped into your command through STDIN. Use grep to remove all those lines that contain the word 'that'. The search should NOT be sensitive to case.
-> grep -wiv 'that'

18.For each line in a given input file, transform the first occurrence of the word 'the' with 'this'. The search and transformation should be strictly case sensitive.
-> sed -e "s/\bthe\b/this/"

19.For each line in a given input file, transform all the occurrences of the word 'thy' with 'your'. The search should be case insensitive, i.e. 'thy', 'Thy', 'tHy' etc. should be transformed to 'your'.
-> sed 's/thy/your/ig'

20.You are given a file with four space separated columns containing the scores of students in three subjects. The first column contains a single character (A−ZA−Z), the student identifier. The next three columns have three numbers each. The numbers are between 00 and 100100, both inclusive. These numbers denote the scores of the students in English, Mathematics, and Science, respectively.
Your task is to identify those lines that do not contain all three scores for students.
-> awk '{ if ($2 =="" || $3 == "" || $4 == "") 
print "Not all scores are available for",$1;
}'$1 ; 

21.Your task is to identify whether each of the students has passed or failed. 
A student is considered to have passed if (s)he has a score 5050 or more in each of the three subjects.
-> awk '{ if ($2 >=50 && $3 >= 50 && $4 >= 50) 
print $1,": Pass";
else print  $1,": Fail";
}'$1 ;

22.You are given a list of countries, each on a new line. Your task is to read them into an array and then transform them in the following way: The first capital letter (if present) in each element of the array should be replaced with a dot ('.'). Then, display the entire array with a space between each country's names.
->arr=()
while read i; do
arr=("${arr[@]}" "$i")
done	

24.Given a list of countries, each on a new line.Task is to read them into an array and then filter out (remove) all the names containing the letter 'a' or 'A'.
-> grep -iv -e [Aa]

25. Detect Palindromes
-> while read word; do
drow=`echo $word | rev | tr -d "\r"`
if [ $(echo $word | tr -d "\r") == $drow ]; then
echo "$word"
fi
done

26.Compute the factorial
-> awk '{ if(NR != 1){ a = 1; for(i=$1;i>=1;i--){ 
a = a * i; } print a; } 
}'
