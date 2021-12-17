//
//  main.swift
//  Qheap1
//
//  Created by slava bily on 17.12.2021.
//

import Foundation

var heap = [Int]()

//print("Please, enter the number of queries")

if let Q = readLine() {
    let q = Int(Q)!
    var n = 0
    
    while n < q {
//        print("Please, enter query")
        if let query = readLine() {
            let prefix = query.prefix(1)
            
            var i: Int {
                var suff = query.suffix(from: prefix.endIndex)
                suff.removeFirst()
                return Int(suff)!
            }
            
            switch prefix {
            case "1":
                heap.append(i)
            case "2":
                heap.remove(at: heap.firstIndex(of: i)!)
            case "3":
                let min = heap.min()!
                print(min)
            default:
                break
            }
//            print(heap)
        }
        n += 1
    }
}



