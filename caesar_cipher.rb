#Ruby Terminal Caesar Cipher
#Prompts user to enter in a message and a letter shift amount
#Returns the encrypted message
#Uses ASCII text to shift the characters based on the
# letter shift amount.
#
# Created by Sam Barton
#

#Method for getting the message in plain text
def get_user_input_message
    puts "Enter in your message..."
    message = gets.chomp
    return message
end

#Method for getting amount to shift
def get_shift_amount
    puts "Enter letter shift amount..."
    shift = gets.chomp
    shift = shift.to_i
    return shift
end


#Method for encrypting message
def caesar_cipher(plain_message, amt_to_shift)
    puts "ENCRYPTING... "
    encrypted_message = ""

    #loop through plain_message
    for i in 0..plain_message.length
        if(plain_message[i] != nil)
            ascii_value = plain_message[i].ord
            #lower case
            if ascii_value >= 97 && ascii_value <= 122
                ascii_value -= amt_to_shift
                if ascii_value < 97
                    ascii_value += 26
                elsif ascii_value > 122
                    ascii_value -=26
                end
            elsif ascii_value >= 65 && ascii_value <= 90
                #uppercase
                ascii_value -= amt_to_shift
                if ascii_value < 65
                    ascii_value += 26
                elsif ascii_value > 90
                    ascii_value -=26
                end
            end
            encrypted_message += ascii_value.chr
        end
    end
    puts "Encrypted message: " + encrypted_message
end

#Start of Program
puts "CAESAR CIPHER"
caesar_cipher(get_user_input_message, get_shift_amount)
