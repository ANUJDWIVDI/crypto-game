extends StaticBody2D

var plaintext_box = null
var key_box_e = null
var encrypted_text_out = null
var encrypted_text_in = null
var key_box_d = null
var decrypted_text_box = null
var button_encrypt = null
var button_decrypt = null

# Called when the node enters the scene tree for the first time.
func _ready():
	plaintext_box = get_node("Path/To/Plaintext")
	key_box_e = get_node("Path/To/Key")
	encrypted_text_out = get_node("Path/To/EncryptedText")
	encrypted_text_in = get_node("Path/To/EncryptedTextIn")
	key_box_d = get_node("Path/To/Key2")
	decrypted_text_box = get_node("Path/To/DecryptedText")
	button_encrypt = get_node("Path/To/Button-Encrypt")
	button_decrypt = get_node("Path/To/Button-Decrypt")

	if button_encrypt != null:
		button_encrypt.connect("pressed", self, "_on_button_encrypt_pressed")
	if button_decrypt != null:
		button_decrypt.connect("pressed", self, "_on_button_decrypt_pressed")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_button_encrypt_pressed():
	var plaintext = plaintext_box.text
	var key = key_box_e.text
	var encrypted_text = encrypt_text(plaintext, key)
	encrypted_text_in.text = encrypted_text

func _on_button_decrypt_pressed():
	var encrypted_text = encrypted_text_in.text
	var key = key_box_d.text
	var decrypted_text = decrypt_text(encrypted_text, key)
	decrypted_text_box.text = decrypted_text

func encrypt_text(plaintext, key):
	# Replace with your encryption logic
	return "Encrypted " + plaintext

func decrypt_text(encrypted_text, key):
	# Replace with your decryption logic
	return "Decrypted " + encrypted_text
