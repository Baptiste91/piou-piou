ALPHABET_OISEAU = {
  "A"=>"piou",
  "B"=>"ioup",
  "C"=>"poup",
  "D"=>"iiou",
  "E"=>"ioui",
  "F"=>"pipp",
  "G"=>"ouip",
  "H"=>"poui",
  "I"=>"ppou",
  "J"=>"ipip",
  "K"=>"oupi",
  "L"=>"pouu",
  "M"=>"piiu",
  "N"=>"piui",
  "O"=>"uiui",
  "P"=>"opui",
  "Q"=>"pupu",
  "R"=>"iupi",
  "S"=>"piuu",
  "T"=>"piup",
  "U"=>"piop",
  "V"=>"ipou",
  "W"=>"oupu",
  "X"=>"uopu",
  "Y"=>"iupu",
  "Z"=>"iupp",
  "!"=>"iipu",
  ","=>"iupo",
  "."=>"ipuu",
  "?"=>"ppip"
}

# piou-piou to human
def decode(phrase)
  phrase.split("  ").map do |word|
    word.split.map { |w| ALPHABET_OISEAU.key(w) }.join
  end.join(" ").capitalize
end

# human to piou piou
def encode(phrase)
  phrase.split(" ").map do |word|
    word.chars.map { |char| ALPHABET_OISEAU[char.upcase] }.join(" ")
  end.join("  ")
end

# Allow to call the method directly from terminal command with argument
method_name = ARGV[0]
argument = ARGV[1]
puts send(method_name, argument) if method_name
