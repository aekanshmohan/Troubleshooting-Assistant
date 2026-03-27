#  Troubleshooting Assistant

##  Overview

This project is a rule-based troubleshooting system developed using Prolog. It helps users identify and resolve common issues related to laptops, internet connections, and mobile phones.

The system uses a menu-driven interface where users select a category and a specific issue, and the program provides possible causes along with suggested solutions.

---

## Features

* Interactive menu-based system
* Supports three categories:

  * Laptop Issues 
  * Internet Issues 
  * Mobile Phone Issues 
* Provides multiple solutions for each issue
* Simple and easy-to-understand rule-based logic
* Works completely offline

---

##  Concepts Used

* Rule-Based Reasoning
* Knowledge Representation
* Logical Inference

---

##  Technologies Used

* Prolog (SWI-Prolog)

---

##  How to Run the Project

1. Install SWI-Prolog on your system
2. Open the Prolog terminal
3. Navigate to the folder where your file is stored
4. Load the program using:

   ```prolog
   ['path/to/troubleshooting.pl'].
   ```
5. Start the system by typing:

   ```prolog
   start.
   ```
---

* After running `start.`, the main menu will appear
* The system will prompt you to choose a category

---

### 2. Select a Category

* Choose one of the available options:

  * Laptop Issues
  * Internet Issues
  * Mobile Phone Issues
  * Exit
* Enter the corresponding number (e.g., `1.` for Laptop)

---

### 3. Choose an Issue

* After selecting a category, a list of issues will be displayed
* Select the issue by entering its number
* Make sure to follow Prolog input format (end with `.`)

---

### 4. View Diagnosis and Solutions

* The system will process your selection
* It will display:

  * Possible causes of the issue
  * Suggested solutions to resolve it

---

### 5. Continue Using the System

* After displaying the solution, the program returns to the main menu
* You can:

  * Try another issue
  * Switch to a different category
  * Explore multiple cases

---

### 6. Exit the Program

* From the main menu, select the Exit option
* The program will terminate

---

##  Testing Instructions

* Test all categories (Laptop, Internet, Mobile)
* Try different issues within each category
* Provide both valid and invalid inputs
* Verify that:

  * Correct solutions are displayed
  * Invalid inputs are handled properly
* Run the program multiple times to ensure consistency

---

##  Limitations

* Works only with predefined rules
* Solutions are general recommendations and may vary in effectiveness

---

##  Future Improvements

* Add more categories and issues
* Improve interaction with deeper questioning
* Develop a graphical user interface
* Integrate learning-based approaches

---

