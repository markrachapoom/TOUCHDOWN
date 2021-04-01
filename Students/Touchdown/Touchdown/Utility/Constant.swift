//
//  Constant.swift
//  Touchdown
//
//  Created by Mark Rachapoom on 1/4/21.
//

import Foundation
import SwiftUI

// MARK: - DATA

let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")

let sampleProduct: Product = products[0]

// MARK: - COLOR

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// MARK: - LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
  return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// MARK: - UX

let feedback = UIImpactFeedbackGenerator(style: .medium)

// MARK: - API

// MARK: - IMAGE

// MARK: - FONT

// MARK: - STRING

// MARK: - MISC
