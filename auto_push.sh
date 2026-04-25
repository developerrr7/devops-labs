#!/bin/bash

status=$(git status --porcelain)

if [ -z "$status" ]; then
    echo "No changes to commit 😎"
else
    echo "Enter commit message:"
    read msg

    git add .
    git commit -m "$msg"
    git push origin main

    echo "Code pushed successfully 🚀"
fi
