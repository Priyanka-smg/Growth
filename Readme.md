# 🚀 Growth - Automation Framework for CI/CD

![Java](https://img.shields.io/badge/Java-17-orange)
![Maven](https://img.shields.io/badge/Maven-Build-blue)
![TestNG](https://img.shields.io/badge/TestNG-Testing-green)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

---

## 📌 Problem Statement  
Modern QA and DevOps teams often struggle with:  
- Consistent environment setup  
- Repeatable builds  
- Automated test execution  

Manual steps cause errors, delays, and reduce CI/CD reliability.  

---

## ✅ Solution - This Framework  
This project provides a **self-contained automation framework** that:  
- Automates environment setup (Java & Maven validation)  
- Ensures reliable builds with Maven (`clean → compile → test → package`)  
- Integrates unit & smoke testing with detailed reports  
- Produces ready-to-deploy artifacts for CI/CD pipelines  
- Maintains a scalable structure for **UI / API / DB testing**  

---

## ⚙️ Tech Stack  
- **Language** → Java 17  
- **Build Tool** → Maven  
- **Testing Framework** → TestNG  
- **Version Control** → Git & GitHub  
- **OS** → Ubuntu  

---

## 🛠️ Project Structure  
automation/
│-- build.sh # Build automation script
│-- setup.sh # Setup script (Java, Maven checks)
│-- my-app/ # Sample app with tests
│ ├── pom.xml
│ ├── src/
│ │ ├── main/java
│ │ └── test/java
│-- logs/ # Build & test logs
│-- README.md # Project documentation


---
---

## 📊 Future Enhancements  
- Integrate with Jenkins for CI/CD  
- Add Selenium UI automation module  
- Add API testing module with RestAssured  

---

## 📄 License  
This project is licensed under the **MIT License** – free to use and modify.  

---

## ▶️ How to Run
```bash
# Clone the repo
git clone https://github.com/Priyanka-smg/Growth.git
cd Growth/automation

# Setup environment
./setup.sh

# Run build & tests
./build.sh
```


Designed & Developed by Priyanka Sannamarigowda (QA & Automation Engineer)

