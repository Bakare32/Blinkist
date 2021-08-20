//
//  Bundle+Extensions.swift
//  Blinklist
//
//  Created by  Decagon on 03/08/2021.
//

import UIKit

extension Bundle {
    
    func decodeData<T: Codable>(_ type: T.Type, from fileNameWithExtension: String) -> T {
        
        guard let url = Bundle.main.url(forResource: fileNameWithExtension, withExtension: nil) else {
            fatalError()
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError()
        }
        
        let decoder = JSONDecoder()
        
        guard let loadedContents = try? decoder.decode(T.self, from: data) else {
            fatalError()
        }
        
        return loadedContents
    }
    
}


