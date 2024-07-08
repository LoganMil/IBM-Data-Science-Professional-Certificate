givenstring = "Lorem ipsum dolor! diam amet, consetetur Lorem magna. sed diam nonumy eirmod tempor. diam et labore? et diam magna. et diam amet."

# create class
class TextAnalyzer(object):
    # constructor
    def __init__(self, text):
        formattedText = text.replace(".","").replace("!","").replace(",","").replace("?","")
        formattedText = text.lower()
        self.fmtText = formattedText
    
    def freqAll(self):
        wordList = self.fmtText.split(' ')
        wordFreq = {}
        for word in set(wordList):
            wordFreq[word] = wordList.count(word)
        
        return wordFreq
    
    def freqOf(self, word):
        freqDict = self.freqAll()
        if word in freqDict:
            return freqDict[word]
        else:
            return 0

practice = TextAnalyzer(givenstring)
print(practice.freqAll())