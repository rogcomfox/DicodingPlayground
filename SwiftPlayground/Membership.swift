//
//  Membership.swift
//  SwiftPlayground
//  Copyright © 2020 Nusantarian. All rights reserved.
//

import Foundation

func getInput(message: String) -> String{
    print(message, terminator: " : ")
    return readLine() ?? ""
}

func getInputInt(message: String) -> Int{
    return Int(getInput(message: message)) ?? 0
}

protocol PersonProtocol {
    var firstName: String{set get}
    var lastName: String{set get}
    var address: String {set get}
    func fullName() -> String
}

protocol StudentProtocol {
    var school: String {set get}
    func getInformation() -> String
}

class Student: StudentProtocol{
    var school: String = " "
    func getInformation() -> String {
        return "perkenalkan nama saya \(fullName()), saya sekolah di \(school).\nMari belajar bersama!"
    }
}

class Person: PersonProtocol{
    var firstName: String
    var lastName: String
    var address: String
    init(firstName: String, lastName: String, address: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
    }
    
    func fullName() -> String {
        var parts: [String] = []
        parts += [firstName]
        parts += [lastName]
        return parts.joined(separator: " ")
    }
}

func run(){
    let firstName = getInput(message: "Masukkan nama depan kamu")
    let lastName = getInput(message: "Masukkan nama belakang kamu")
    let address = getInput(message: "Masukkan alamat kamu")
    let school = getInput(message: "Masukkan asal sekolah kamu")
    
    let member = Student(firstName: firstName, lastName: lastName, address: address)
    member
    
    print("")
}
