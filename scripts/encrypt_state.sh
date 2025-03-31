#!/bin/bash
rm -f *.gpg
gpg --batch --symmetric --passphrase-file ~/.ssh/mtcazurekey terraform.tfstate
gpg --batch --symmetric --passphrase-file ~/.ssh/mtcazurekey terraform.tfstate.backup
