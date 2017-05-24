# NLP_QA-System-Advanced

#Kyle Sutherland
#CMSC 416
#5/3/17
#Assignment 6

#This program runs in the format:
#     perl qa-system.pl mylogfile.txt
# where mylogfile.txt is an output log file

#This is a question answering system.  It uses wikipedia to search for topics
#and answer questions.  Questions should come in the format: 
#    "Who|What|When|Where _____________?"
#It then splits the question into pieces and polls wikipedia to return the 
#answer.  It captures the type of question to find out what to search the 
#wikipedia article for, comes up with an answer based on what the question type 
#and any extra information, then the answer is and then reformats the answer into 
#natural language.  The answer is then printed to STDOUT.  The question, search term, extras,
#wiki text, chosen sentence, concluded answer, and confidence are all recorded 
#in the log file.  Logic dictates that the most pertinent information in a 
#wikipedia article is found towards the beginning, so the first answer returned
#is chosen as the response.


#this qa system is designed to use enhancements to query reformulation and 
#answer composition as follows

#query
#1	Tokenize query after pulling the question word and the 'is' word
#2	backoff model for searching.  search for words and pop off the final
#		word until the search returns a hit;

#answer
#1	Sentence Detection through the articles
#2	NER to determine answers for question types, returning the
#		correct type of word as the answer

#The confidence of the answer is determined by how many words are popped off of
#the query and how far down the article the answer is found.  Answers found in
#the infobox are estimated at 90% confidence.

