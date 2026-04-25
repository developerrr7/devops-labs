#!/bin/bash

#chech for changes 

status=$(git status --porcelain)

if [-z "$status"]; then
	echo "No changes to commit 😎"
else
	echo "Enter Commit message:"
	read msg

	git add .
	git commit -m "$msg"
	git push origin main

	echo "Code pushed successfully 🚀"
fi
