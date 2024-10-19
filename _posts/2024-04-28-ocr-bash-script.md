---
title: Automating Text Extraction from Screenshots with a Bash Script 
date: 2024-04-28 01:00:00 +/-TTTT
categories: [PROGRAMMING, BASH]
tags: [linux-automation, bash-script, ocr, gnome-screenshot, ubuntu, text-extraction, kid-friendly-guide, tesseract, clipboard-automation, productivity]
image:
    path: assets/img/Linux-Bash-Script.png
    alt: Bash Scripting
---

## Automating Text Extraction from Screenshots with a Bash Script

Imagine if you could take a picture of anything on your computer screen, and it would magically write down all the words from the picture. Cool, right? Well, today, we're going to learn how to make that magic happen with a little help from a script in your computer! 

The goal is to create a script that will take a screenshot, find the words in it, and copy those words to your clipboard. 

#### What You Need Before We Begin
Before we start, we need a couple of tools:

- **[Gnome Screenshot](https://help.gnome.org/users/gnome-help/stable/screen-shot-record.html.en)**: This is like the "camera" on your computer. It takes pictures of your screen.
- **[Tesseract OCR](https://github.com/tesseract-ocr/tesseract)**: This is the "reader" that reads the words from the picture.

To install them on Ubuntu 24.04 (the "Noble Wombat" version), open a terminal by pressing **Ctrl + Alt + T** and type the following:

```bash
sudo apt update
sudo apt install gnome-screenshot tesseract-ocr xclip
```

Just press **Enter** after each line, and your computer will do the rest!

#### Step 1: Open Your Text Editor
We're going to write a script, kind of like writing instructions for your computer to follow. We'll use a program called **[nano](https://www.nano-editor.org/)**. 

To start, type:

```bash
nano my_ocr_script.sh
```

This opens up a blank page called `my_ocr_script.sh`. 

#### Step 2: Writing the Script!

Let's also talk about the indentation! Indentation means adding spaces at the beginning of lines to make the structure clearer and easier to read. In this script, indentation helps to show which parts belong together, like steps in a recipe. 

For example, everything inside the if statements is indented to indicate that it only runs if the condition is met. This makes your code easier to understand, not just for you, but for anyone else who looks at it!

Here’s the bash integration that helps your computer read words from a picture:

```bash
#!/bin/bash -e

# Create a temporary directory
TMPDIR=$(mktemp -d)
trap 'rm -rf "$TMPDIR"' EXIT

# Take a screenshot of a selected area and save it as screenshot.png in the temporary directory
gnome-screenshot -a -f "$TMPDIR/screenshot.png"

# Ensure screenshot was taken
if [ ! -s "$TMPDIR/screenshot.png" ]; then
    echo "Screenshot failed to capture." >&2
    exit 1
fi

# Process the screenshot with Tesseract and save the result to a text file in the temporary directory
tesseract "$TMPDIR/screenshot.png" "$TMPDIR/output"

# Ensure OCR was performed
if [ ! -s "$TMPDIR/output.txt" ]; then
    echo "OCR failed to process any text." >&2
    exit 1
fi

# Copy the result to the clipboard, ignoring all non-ASCII characters
tr -cd '\11\12\15\40-\176' < "$TMPDIR/output.txt" | perl -pe 'chomp if eof' | xclip -selection clipboard
```

Let's break down what we just wrote:

- **#!/bin/bash -e**: `shebang` This tells the computer, "Hey, I’m about to write some instructions. Follow them very closely!"
- **TMPDIR=$(mktemp -d)**: This makes a temporary folder, like a secret hiding place for our screenshot.
- **trap 'rm -rf "$TMPDIR"' EXIT**: When the script finishes, it will clean up that secret folder to keep everything tidy.
- **gnome-screenshot -a -f "$TMPDIR/screenshot.png"**: This takes a picture of the part of the screen you select.
- **tesseract "$TMPDIR/screenshot.png" "$TMPDIR/output"**: This reads the words in the picture and saves them.
- **xclip -selection clipboard**: Finally, this copies the words to your clipboard, so you can paste them anywhere!

#### Step 3: Save the Script
To save what you’ve written, press **Ctrl + O**, then **Enter**. To exit nano, press **Ctrl + X**.

![OCR Bash Script]({{ 'assets/img/Screenshot from 2024-10-18 22-43-21.png' | relative_url }})

#### Step 4: Make It Magical (Executable!)
To make our script executable, which means telling the computer it’s okay to follow these instructions, type:

```bash
chmod +x my_ocr_script.sh
```

#### Step 5: Run the Script
Now just type:

```bash
./my_ocr_script.sh
```

When you do, your mouse will turn into a crosshair. Click and drag to select the part of your screen you want to capture, and… poof! The text will magically be copied to your clipboard!

#### Making It Even Easier: A Keyboard Shortcut
Let’s set it up!

1. **Open Settings**: Click on the gear icon (Settings) in your Ubuntu desktop.
2. **Keyboard Shortcuts**: Go to Keyboard Shortcuts.
3. **Add Custom Shortcut**:
   - Click on **Add Shortcut**.
   - **Name**: Let’s call it "OCR-Image2Text"
   - **Command**: Type the path to your script. If it’s in your home folder, it will look like: `/home/yourusername/my_ocr_script.sh`.
   - **Shortcut**: Click to set a new shortcut, and press **Ctrl + S** (or any keys you like).

Now, every time you press **Ctrl + S**, you can use your magic to copy text from your screen!

- **Error Handling**: In our script, we added checks to make sure both the screenshot and the text extraction worked properly. If they don’t, we tell the user what went wrong.
- **Temporary Directory**: We use a special folder that disappears automatically when we’re done—this keeps things neat and tidy.
- **Clipboard Clean-Up**: We make sure only clean, readable text is copied to the clipboard, filtering out all those funny characters computers sometimes see.

Now you have a script that takes a screenshot, reads the words, and copies them straight to your clipboard—all with just a few key presses. It’s like having a superpower on your computer!

Remember, this script is fully customizable. If you want to change the key shortcut or even what happens to the text, you can tweak it any way you like. And if you want more tips and tricks, you can always check out amazing resources like the ones we used, including the detailed guides on [Ian Baker's blog](https://ian-baker.net/using-bash-and-tesseract-for-efficient-ocr) and other links to make your scripts even more efficient!

Feel free to explore and enhance your magic. The world of Bash is limitless—and now, it’s your playground!

Why not try adding more features? Maybe you could save the extracted text to a document or even translate it! 
