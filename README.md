# 🖼️ Image Collection Script for Sick Dataset

This PowerShell script is designed to **gather all image files** from multiple subdirectories (e.g., `Directory_1` to `Directory_16`) located in the `Sick` dataset folder and consolidate them into a single directory called `Sick_Collected`.

## 📁 Directory Structure

Dataset/
│
├── Sick/
│ ├── Directory_1/
│ ├── Directory_2/
│ ├── ...
│ └── Directory_16/
│
└── Sick_Collected/ <-- This will be created by the script if not already present

## 📜 Script Overview

- **Source Directory:**  
  `C:\Users\hp\OneDrive\Desktop\sebele_mihiretu_project\Dataset\Sick`

- **Destination Directory:**  
  `C:\Users\hp\OneDrive\Desktop\sebele_mihiretu_project\Dataset\Sick_Collected`

- **Supported Image Formats:**  
  `.jpg`, `.jpeg`, `.png`, `.bmp`, `.gif`

## ✅ What the Script Does

1. **Checks if the destination folder exists** — creates it if not.
2. **Recursively searches** all subdirectories in the source path.
3. **Finds all image files** with supported extensions.
4. **Copies** them into the destination folder.
5. **Overwrites** existing files with the same name (`-Force`).

## 🚀 How to Run

1. Open **PowerShell**.
2. Copy and paste the script into your PowerShell terminal or save it as `collect-images.ps1`.
3. Run the script.

> ⚠️ Make sure to run PowerShell with the necessary file access permissions.

## 🛠️ Notes

- If multiple files across different directories share the **same filename**, the script will overwrite them in the destination.
- Customize the `$sourceDir` and `$destinationDir` variables if your folder paths differ.

---

### 📌 Example Use Case

This script is useful when you're preparing a dataset for machine learning or deep learning training and need to organize all images into a flat structure.

---

### 👨‍💻 Author

Yonas Fikadie  
Computer Engineering | Addis Ababa University  
