question-1:
	cat questions/question-1.md | openssl enc -base64 -e -aes-256-cbc -nosalt -pbkdf2 -A -k $(ENCRYPTION_KEY)

question-2:
	cat questions/question-2.md | openssl enc -base64 -e -aes-256-cbc -nosalt -pbkdf2 -A -k $(ENCRYPTION_KEY)

submit:
	git add .
	git commit -m "Submit"
	git push origin main

build:
	cat answers/question-1.md | openssl enc -base64 -e -aes-256-cbc -nosalt -pbkdf2 -A -k $(ENCRYPTION_KEY)
	cat answers/question-2.md | openssl enc -base64 -e -aes-256-cbc -nosalt -pbkdf2 -A -k $(ENCRYPTION_KEY)
