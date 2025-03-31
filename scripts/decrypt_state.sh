#!/bin/bash
gpg --batch --decrypt -o terraform.tfstate --passphrase-file ~/.ssh/awskey terraform.tfstate.gpg
gpg --batch --decrypt -o terraform.tfstate.backup --passphrase-file ~/.ssh/awskey terraform.tfstate.backup.gpg
