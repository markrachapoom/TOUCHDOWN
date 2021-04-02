//
//  Shop.swift
//  Touchdown
//
//  Created by Mark Rachapoom on 2/4/21.
//

import Foundation
import SwiftUI

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product?
}
