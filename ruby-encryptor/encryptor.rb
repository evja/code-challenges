class Encryptor
  def cipher(rotation)
  	characters = (" ".."z").to_a
  	rotated_characters = characters.rotate(rotation)
  	Hash[characters.zip(rotated_characters)]
  end

  def encrypt_letter(letter,rotation)
  	cipher_for_rotation = cipher(rotation)
  	cipher_for_rotation[letter]
  end

  def encrypt(string,rotation)
  	letters = string.split("")

  	results = letters.collect do |letter|
  		encrypted_letter = encrypt_letter(letter,rotation)
  	end

  	results.join
  end
  	
  def decrypt(string,rotation)
  	minus = (rotation).to_i - ((rotation).to_i * 2)
  	letters = string.split("")

  	results = letters.collect do |letter|
  		encrypted_letter = encrypt_letter(letter,minus)
  	end
  	results.join
  end

  def encrypt_file(filename,rotation)
    
    # Create the file handle to the input file
    into = File.open("secret.txt", "r")

    # Read the text of the input file
    read_message = into.read

    # Encrypt the text
    encrypt_text = encrypt(read_message,rotation)

    # Create a name for the output file
    secret_txt_encrypted = encrypt_text

    # Create an output file handle
     out = File.open("secret.txt.encrypted", "w")
    # Write out the text
      out.write(secret_txt_encrypted)
    # Close the file
    out.close

  end

  def decrypt_file(filename,rotation)

    # Create the file handle to the encrypted file
    into = File.open("secret.txt.encrypted", "r")

    # Read the encrypted text
    read_mesage = into.read

    # Decrypt the text by passing in the text and rotation
    decrypt_text = decrypt(read_mesage,rotation)

    # Create a name for the decrypted file
    secret_txt_decrypted = decrypt_text

    # Create an output file handle
    out = File.open("secret.txt.decrypted","w")

    # Write out the text
    out.write(secret_txt_decrypted)

    # Close the file
    out.close
  end

  def supported_characters
    (' '..'z').to_a
  end

  def crack(message)
    supported_characters.count.times.collect do |attempt|
      decrypt(message,attempt)
    end
  end
end





















