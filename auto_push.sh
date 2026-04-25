#!/bin/bash

echo "Enter Commit message:"
read msg

git add .
git commit -m "$msg"
git push origin main

echo "Code pushed successfully 🚀"
