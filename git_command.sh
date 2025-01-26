#!/bin/bash

# Git 操作用ヘルパースクリプト
while true; do
    echo "==============================="
    echo " Git Helper Script"
    echo "==============================="
    echo "1. git status"
    echo "2. git add ."
    echo "3. git commit"
    echo "4. git push"
    echo "5. git pull"
    echo "6. git log"
    echo "7. git branch"
    echo "8. git checkout"
    echo "9. git merge"
    echo "0. Exit"
    echo "==============================="
    read -p "Choose an option: " choice

    case $choice in
        1)
            echo "Running: git status"
            git status
            ;;
        2)
            echo "Running: git add ."
            git add .
            ;;
        3)
            read -p "Enter commit message: " msg
            echo "Running: git commit -m \"$msg\""
            git commit -m "$msg"
            ;;
        4)
            echo "Running: git push"
            git push
            ;;
        5)
            echo "Running: git pull"
            git pull
            ;;
        6)
            echo "Running: git log"
            git log
            ;;
        7)
            echo "Running: git branch"
            git branch
            ;;
        8)
            read -p "Enter branch name: " branch
            echo "Running: git checkout $branch"
            git checkout $branch
            ;;
        9)
            read -p "Enter branch to merge: " branch
            echo "Running: git merge $branch"
            git merge $branch
            ;;
        0)
            echo "Exiting Git Helper"
            break
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac

    echo "" # 空行を挿入して見やすくする
done

