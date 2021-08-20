//
//  dataLoader.swift
//  Blinklist
//
//  Created by  Decagon on 27/07/2021.
//

import Foundation
//MARK CLASS

//MARK-- CLOSURE
//public class DataLoader {
    //MARK-- Attributes
//    var userData = [UserData]()
//    init() {
//
//        load { [weak self] data in
//            self?.userData = data
//        }
//        sort()
//    }
//
//
//    //MARK-- Method
//    func load(completionHandler: (([UserData]) -> Void)?) {
//        if let resourceURL = Bundle.main.url(forResource: "doc", withExtension: "json") {
//            do {
//                let data = try Data(contentsOf: resourceURL)
//                let jsonDecoder = JSONDecoder()
//                let jsonContent = try jsonDecoder.decode([UserData].self, from: data)
////                self.userData = jsonContent
//                completionHandler?(jsonContent)
//            } catch {
//                print("\(error)")
//            }
//        }
//    }
//    //MARK-- Method
//    func sort() {
//        self.userData = self.userData.sorted(by: {$0.id < $1.id})
//    }
//}

// MARK: - PROTOCOL
    protocol LoadUser {
        func fetchUser(user: [UserData])
    }

    class DataLoader {
        var dataDelegate: LoadUser?
        
        func load() {
            if let resourceURL = Bundle.main.url(forResource: "doc", withExtension: "json") {
                do {
                    let data = try Data(contentsOf: resourceURL)
                    let jsonDecoder = JSONDecoder()
                    let jsonContent = try jsonDecoder.decode([UserData].self, from: data)
                    dataDelegate?.fetchUser(user: jsonContent)
                } catch {
                    print("\(error)")
                }
            }
            
        }
    }
    
