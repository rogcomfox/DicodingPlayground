//
//  Recipe.swift
//  SwiftPlayground
//
//  Created by Joe G on 25/03/20.
//  Copyright © 2020 Nusantarian. All rights reserved.
//

import Foundation

class Recipe{
    func run() {
        print("Lets Cook")
        print("Apa yang ingin Anda buat?");let food = readLine() ?? ""
        print("Masukkan jumlah item yang ingin Anda masukkan", terminator: ": "); let newItem = readLine() ?? "0"
        print("----------------------------------")
         
        if let totalItem : Int = Int(newItem){
            var recipe = [String]()
            for index in 1...totalItem {
                print("Masukkanlah item ke \(index)", terminator: ": "); let newItem = String(readLine() ?? "")
                recipe.append(newItem)
            }
            
            print("----------------------------------")
            print("Berapa lama proses memasak dilakukan?");let time = readLine() ?? ""
            print("----------------------------------")
            recipe.sort()
            print("Anda akan membuat \(food) selama \(time) dengan resep:")
            for (index, value) in recipe.enumerated() {
                print("\(index + 1). \(value)")
            }
            
        } else {
            print("Input tidak valid")
        }
        print("----------------------------------")
    }
}
