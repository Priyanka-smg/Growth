package com.example;

import java.util.Random;

public class App {
    public static void main(String[] args) {
        System.out.println("====================================");
        System.out.println(" Automation Framework Starter ");
        System.out.println("====================================");

        // Environment info
        System.out.println("Java Runtime : " + System.getProperty("java.runtime.version"));
        System.out.println("OS : " + System.getProperty("os.name") + " " + System.getProperty("os.version"));
        System.out.println("Arch : " + System.getProperty("os.arch"));
        System.out.println("------------------------------------");

        System.out.println("Running Smoke Tests...\n");

        int total = 3;
        int passed = 0;

        if(runTest("Login Page Loads")) passed++;
        if(runTest("API Health Check")) passed++;
        if(runTest("Database Connection")) passed++;

        System.out.println("\n------------------------------------");
        System.out.println("Test Summary: " + passed + "/" + total + " Passed");
        if (passed == total) {
            System.out.println(" All tests green. System is healthy!");
        } else {
            System.out.println("Some tests failed. Needs attention.");
        }
        System.out.println("------------------------------------");

        System.out.println("Build + Tests complete. Ready for CI/CD integration!");
    }

    // Simulated test runner
    private static boolean runTest(String testName) {
        System.out.print("Running: " + testName + " ... ");
        boolean result = new Random().nextBoolean(); // random pass/fail
        if(result) {
            System.out.println("PASS");
        } else {
            System.out.println("FAIL");
        }
        return result;
    }
}

