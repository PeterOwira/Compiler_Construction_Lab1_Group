# Function to split a sentence into words
def split_sentence(sentence):
    words = []
    current_word = []
    
    for char in sentence:
        ## Split the sentence using space
        if char== " ":
            if current_word:
                words.append(''.join(current_word))
                current_word = []
        else:
            current_word.append(char)
    
    if current_word:
        words.append(''.join(current_word))

    return words

# Input sentence
input_sentence = input("Enter an English sentence: ")

# Split the sentence into words
words = split_sentence(input_sentence)

# Output individual words on separate lines
for word in words:
    print(word)
