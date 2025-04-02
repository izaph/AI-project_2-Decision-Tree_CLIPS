# 🌿 AI Project 2 – Decision Tree in CLIPS

This project implements a basic **decision tree** in the **CLIPS expert system language** to identify different types of raspberry plants based on user input.

---

## 🧠 Overview

The system interacts with the user by asking a series of yes/no questions about plant characteristics like:

- Stem waxiness
- Leaf surface texture
- Hair type on the plant
- Fruit color

Based on the answers, the system identifies the plant species (e.g., *Wineberry*, *Black Raspberry*, *Red Raspberry*, etc.).

---

## 📁 Files

- `raspberry-classifier.clp` – The main CLIPS program with templates and rules
- `README.md` – This documentation file

---

## 🚀 How to Run the System

1. Open CLIPS
2. Load the file:
   ```clips
   (load "raspberry-classifier.clp")
   (reset)
   (run)
