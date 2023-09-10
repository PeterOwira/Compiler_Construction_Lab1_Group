# Function to split a sentence into words
def split_sentence(sentence):
    words = sentence.split()
    return words

# Input sentence
input_sentence = input("Enter an English sentence: ")

# Split the sentence into words
words = split_sentence(input_sentence)

# Output individual words on separate lines
for word in words:
    print(word)
