//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Mark Rachapoom on 1/4/21.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
