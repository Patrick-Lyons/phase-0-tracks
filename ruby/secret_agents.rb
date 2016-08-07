#accept a string
#at each letter of the string, use LETTER.next
#use a loop to run through each letter, referencing the index
#print the result

def encrypt (string)
	limit = string.length
	count = 0	
	until count >= limit 
		string[count] = string[count].next
		count += 1
	end
	puts string
end
encrypt ("abc")
encrypt ("zed")

def decrypt (string)
	ref = "abcdefghijklmnopqrstuvwxyz"
	key = ref.reverse
	limit = string.length
	count = 0
	until count >= limit
		sletter = string[count]
		step1 = key.index(sletter)
		step2 = step1 + 1
		puts key[step2]
		count +=1
	end

end
decrypt ("bcd")
decrypt ("afe")

#Alex and I encountered problems with these encrypter and decrypter codes. Spent 4 1/2 hours trying out different methods. Can't figure out why encrypting "zed" returns "abfd". Seems as if it is incorrectly returning "ab" as the next value for z, and that issue cascades down. For the decrypter, not sure how to have all the letters appear as a string on one line, like we did for encrypter. The self referential line 10 doesn't seem to apply for the decrypter. Will have to research this further.

decrypt(encrypt("swordfish"))

#Release 4, while we could not get it to work, we can wager a guess as to why it should work. I believe it would work because the order of operations would complete  the referenced methods one by one.

#Give string asking the question for encryption or decryption
#Depending on reply, using a boolean statement, have the password input funnel into a method.

puts "Agent, do you have a password you would like to Decrypt [1] or Encrypt [2]?"

answer=gets.chomp

if answer == "1"
	puts "Enter the password for decryption here:"
	dec = gets.chomp
	decrypt (dec)
elsif answer == "2" 
	puts "Enter the password for encryption here:"
	enc = gets.chomp
	encrypt (enc)
else puts "Please use one of the options."
end
