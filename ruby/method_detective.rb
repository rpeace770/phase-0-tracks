# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(2, "o")
"zom".replace("zoom")
# => “zoom”

"enhance".center(15)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(9, " suspects")
"the usual" << " suspects"
#=> "the usual suspects"

" suspects".prepend("the usual")
" suspects".insert(0, "the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".delete("T")
"The mystery of the missing first letter".slice(1, 38)
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".delete("  ")
# => "Elementary, my dear Watson!"

"z".bytesize
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# The letter z has a label of 122 in the American Standard Code for Information Interchange (ASCII)
# 122 represents the z characted in the ASCII code.

"How many times does the letter 'a' appear in this string?".count("a")
# => 4


