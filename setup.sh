#!/bin/bash
set -e
echo "🔧 Setting up environment..."

# quick checks
if ! command -v mvn &>/dev/null; then
  echo "Maven not found. Install Maven (sudo apt install -y maven) and retry."
  exit 1
fi

if ! command -v java &>/dev/null; then
  echo "Java not found. Install JDK (sudo apt install -y openjdk-11-jdk) and retry."
  exit 1
fi

# clean old logs
[ -f build.log ] && rm build.log

echo "================================Environment ready (Java & Maven found).========================================================="
java -version
mvn -version

