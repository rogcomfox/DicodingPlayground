//
//  Motor.swift
//  SwiftPlayground
//
//  Copyright © 2020 Nusantarian. All rights reserved.
//

import Foundation
class Motor {
    
    func getInput(message: String) -> String?{
        print(message, terminator: " : ");
        return readLine()
    }
     
    func getInputInt(message: String) -> Int?{
        if let inputString = getInput(message: message){
            return Int(inputString)
        } else{
            return nil
        }
    }
     
     
    // speedTotal untuk menampung variabel speed
    var speedTotal = 0
    // closure untuk menambah kecepatan
    func makeIncrementer(_ amount: Int) -> () -> Int {
        func incrementer() -> Int {
            speedTotal += amount
            return speedTotal
        }
        return incrementer
    }
     
     
    // closure untuk mengurangi kecepatan
    func makeDecrementer(_ amount: Int) -> () -> Int {
        func decrementer() -> Int {
            speedTotal -= amount
            return speedTotal
        }
        return decrementer
    }
     
    // menyalakan mesin motor listrik
    func turnOnEngine() {
        print("Hidupkan mesin.........")
        print("Selamat datang di Motor Listrik Dicoding")
        print("Brem brem brem brem")
    }
     
    // mematikan mesin motor listrik
    func turnOffEngine(){
        print("Ciiiiiiiitttttt......")
        print("Motor berhenti!!!!")
    }
     
    // menampilkan kecepatan saat ini
    func showSpeed(){
        print("Kecepatan saat ini : \(speedTotal)")
        print("Ngeeeeengggggggg")
    }
     
    // memberikan aksi ke motor listrik
    func action(){
        let incrementByTen = makeIncrementer(10)
        let decrementByTen = makeDecrementer(10)
        print("----------------------------------------")
        print("Ayo beraksi:")
        print("[1] Tambahkan kecepatan")
        print("[2] Kurangi kecepatan")
        print("[3] Matikan mesin")
        if let state = getInputInt(message: "Masukkan aksi Anda"){
            switch state {
            case 1:
                speedTotal = incrementByTen()
                showSpeed()
                action()
            case 2:
                if speedTotal >= 0 {
                    speedTotal = decrementByTen()
                    showSpeed()
                    action()
                }else{
                    turnOffEngine()
                    break
                }
            case 3:
                turnOffEngine()
                break
                default:
                break
            }
        }else{
            print("Input tidak valid")
        }
    }
    func run(){
        turnOnEngine()
        action()
    }
}
