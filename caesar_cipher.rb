def caesar_cipher(string, shift)
  # get the ascii character codes for each letter into an array with .bytes
  num_array = string.bytes

  shift_array = num_array.map do |num|
    if num.between?(97, 122)
      # if the num is greater than 122, loop it back around to the beginning
      num + shift > 122 ? (num + shift) - 26 : num + shift
    elsif num.between?(65, 90)
      num + shift > 90 ? (num + shift) - 26 : num + shift
    else
      num
    end
  end

  # join the array back together using .pack('c*')
  shift_array.pack('c*')
end

# tests
puts caesar_cipher("What a string!", 5)
puts caesar_cipher("dCode Caesar", 3)
puts caesar_cipher("Omae wa mou shindeiru. -NANI!?!!", 21)