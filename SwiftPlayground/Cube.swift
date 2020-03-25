//
//  Cube.swift
//  SwiftPlayground
//
//  Created by Joe G on 25/03/20.
//  Copyright © 2020 Nusantarian. All rights reserved.
//

import Foundation

class Cube{

func run(){
     
    // Kode ini digunakan untuk memasukkan input dari pengguna
    print("Masukkanlah lebar balok:"); let widthInput = readLine()
    print("Masukkanlah tinggi balok:"); let heightInput = readLine()
    print("Masukkanlah panjang balok:"); let lengthInput = readLine()
    
    if let length = Double(lengthInput ?? "0"), let height = Double(heightInput ?? "0"), let width = Double(widthInput ?? "0"){
        // Ini adalah proses penghitungan yang dilakukan dari program yang Anda buat
        let volume = length * height * width
        let surfaceArea = 2 * ((width * length) + (width * height) + (height * length))
        let circumference = 4 * (width + length + height)
        
        print("----------------------------------")
        // Ini adalah output dari program yang Anda buat
        print("Anda memiliki sebuah balok dengan:")
        print("Lebarnya adalah \(width) cm")
        print("Tingginya adalah \(height) cm")
        print("Panjangnya adalah \(length) cm")
        print("Volemenya adalah \(volume) cm3")
        print("Luas permukaannya adalah \(surfaceArea) cm2")
        print("Kelilingnya adalah \(circumference) cm")
        print("----------------------------------")
    } else {
        // Ketika input tidak valid
        print("----------------------------------")
        print("Input tidak valid")
        print("----------------------------------")
    }
}
}
