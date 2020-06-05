//
//  ViewController.swift
//  AP CSP Quiz
//
//  Created by Pranav Teegavarapu on 2/25/20.
//  Copyright © 2020 Pranav Teegavarapu. All rights reserved.
//

var secondsPassed = 0
var questionNumber = 0

import UIKit

class ViewController: UIViewController {
    let quizQuestions = [
        ["An image represented via a data structure which relies on individual pixels is a:","Vector Image","Raster Image","Lossless Compression","Lossy Compression","Raster Image"],
        ["A broad term for datasets so large or complex that traditional data processing applications are inadequate:","Algorithms","Databases","Big Data","Metadata","Big Data"],
        ["An encryption algorithm which works by aligning two alphabets against one another and offsetting them by a number of positions:","Caesar Cipher","Vigenere","Public Key Encryption","Letter Wheel","Caesar Cipher"],
        ["A function which finds the remainder of a division problem:","Modulus Operator","Heuristics","Remainder()","None of the above","Modulus Operator"],
        ["Securing information so that it is inaccessible to third parties.","Nesting","Cryptology","Compilation","Encryption","Encryption"],
        ["What are the three types of Computers","Personal Computers","Servers","Embedded Systems","All of the Above","All of the Above"],
        ["What is a characteristic of a good algorithm","it is unambiguous","it produces a result and stops","it is computable","All of the above","All of the above"],
        ["Which is NOT one of the three types of algorithms:","Sequencial Operations","Iterative Operations","Selection Operations","Conditional Operations","C"],
        ["Which of the following languages is NOT a high level programming language","Ada","Python","Assembly Code","Scratch","Selection Operations"],
        ["Which of the following problems can be solved within reasonalbe time?","Computing a GPA based on grades","Sorting a list","Moving Sprites in a video game","All of the Above","All of the Above"],
        ["Which of the following cannot be solved within reasonable time?","Password Cracking","Finding the square of a given number","Solving an equation with one variable","All of the above","Password Cracking"],
        ["Which of the following is an  unsolvable problem?","Password Cracking","Dividing by Zero","Finding the Distance between two points","Finding the surface area of the Earth","Dividing by Zero"],
        ["Convert 57 to binary","00110001","00111001","00011001","1111100000","00111001"],
        ["Convert 69 to binary","01000110","10000101","00011001","01000101","01000101"],
        ["How many bits are in one byte","2","8","16","64","B"],
        ["How many bytes are in a terabyte","1 trillion","1 billion","2^40","2^50","2^40"],
        ["Which is not one of the four steps of computational thinking?","Pattern Recognition","Algorithm Design","Abstraction","Simplification","Simplification"],
        ["What is the difference between WANs and LANs","WANs connect devices that are far apart, while LANs connect devices that are close together","LANs connect devices that are far apart, while WANs connect devices that are close together","WANs are faster than LANs","None of the above","WANs connect devices that are far apart, while LANs connect devices that are close together"],
        ["A node is:","anything connected to the network","They must have an address","They are used very often in networking","All of the above","All of the above"],
        ["How do you address computers?","Always be polite :)","IP Addresses","WAN username","LAN GeoLocation","IP Addresses"],
        ["What is true about Public Key Encryption?","Public Keys are available publicly","Public Key encryption connects people who haven't shared a code prior","Public Key Encryption uses prime numbers with 75+ digits","All of the above","All of the above"],
        ["What is (64 MOD 3)","0","1","2","3","1"],
        ["A programming language with many commands and features designed to make common tasks easier to program.","Top Down Design","Low Level Programming Language","Public Key Encryption","High Level Programming Language","High Level Programming Language"],
        ["A placeholder for a piece of information that can change.", "Variable","Parameter","Constant","None of the above","Variable"],
        ["A type of computer that forwards data across a network","PC","Embedded System","Server","Router","Router"],
        ["A process that reverses encryption, taking a secret message and reproducing the original plain text","Plaintext","Ciphertext","Decryption","Encryption","Decryption"],
        ["A base-16 number system that uses sixteen distinct symbols 0-9 and A-F to represent numbers from 0 to 15.","16-ary","Trinary","Hexadecimal","Binary","Hexadecimal"],
        ["A generic term for a technique (or algorithm) that performs encryption","Caesar Cipher","Ciphertext","Encryption","Cipher","Cipher"],
        ["A way of representing information using only two options.","Boolean","Bytes","Bits","Binary","Binary"],
        ["The universally recognized raw text format that any computer can understand","Hexadecimal","Bit","ASCII","SSL/TLS","ASCII"],
        ["The number of bits that are conveyed or processed per unit of time. e.g. 8 bits/sec.","Algorithm","Bit rate","Latency","None of the Above","Bit rate"],
        ["Time it takes for a bit to travel from its sender to its receiver","Bit rate","Byte rate","Latency","None of the above","Latency"],
        ["To repeat in order to achieve, or get closer to, a desired goal.","Sequencing","Conditional","Iteration","Selection","Iteration"],
        ["What is (2 MOD 7)*(5 MOD 7)*(13 MOD 7))","7","130","10","None of the above","10"],
        ["A process of encoding messages to keep them secret, so only authorized parties can read it.","CipherText","Cipher","Encryption","Plaintext","Encryption"],
        ["Any sequence of characters between quotation marks (ex: 'hello', '42')","Float","Double","String",
         "Char","String"],
        ["In programming, an expression that evaluates to True or False.","Boolean","Binary","Bit","Byte","Boolean"],
        ["They develops and promotes voluntary Internet standards and protocols, in particular the standards that comprise the Internet protocol suite","TCP/IP", "HTTP","TCP","College Board","IETF","IETF"],
        ["An easy-to-remember address for calling a web page (like www.code.org).","Library", "URL","IP address","DNS","URL"]
    ]
    

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var dButton: UIButton!
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let actualAnswer = quizQuestions[questionNumber][5]

        if userAnswer == actualAnswer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        Timer.scheduledTimer(timeInterval: 0.2, target: self,selector: #selector(updateUI), userInfo: nil, repeats:false)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionLabel.text = (quizQuestions[questionNumber][0])
        aButton.setTitle((quizQuestions[questionNumber][1]), for: .normal)
        bButton.setTitle((quizQuestions[questionNumber][2]), for: .normal)
        cButton.setTitle((quizQuestions[questionNumber][3]), for: .normal)
        print((quizQuestions[questionNumber]))
        dButton.setTitle((quizQuestions[questionNumber][4]), for: .normal)
    }

    @objc func updateUI(){
        
        questionLabel.text = quizQuestions[questionNumber][0]
        aButton.backgroundColor = UIColor.clear
        bButton.backgroundColor = UIColor.clear
        cButton.backgroundColor = UIColor.clear
        dButton.backgroundColor = UIColor.clear
        nextQuestion()
    }
    func nextQuestion() {
        questionNumber = Int.random(in: 0...38)
        questionLabel.text = (quizQuestions[questionNumber][0])
        aButton.setTitle((quizQuestions[questionNumber][1]), for: .normal)
        bButton.setTitle((quizQuestions[questionNumber][2]), for: .normal)
        cButton.setTitle((quizQuestions[questionNumber][3]), for: .normal)
        dButton.setTitle((quizQuestions[questionNumber][4]), for: .normal)
        print(questionLabel.text)
    }
}
