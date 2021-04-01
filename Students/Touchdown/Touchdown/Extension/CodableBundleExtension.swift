//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Mark Rachapoom on 1/4/21.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(_ file: String) -> T {
        // Locate the data
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Unable to locate \(file) in Bundle")
        }
        
        // Create properties
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Unable to load \(file) from Bundle")
        }
        
        // Create decoder
        let decoder = JSONDecoder()
        
        // decode data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Unable to decode data from \(file) in Bundle")
        }
        
        return decodedData;
    }
}
