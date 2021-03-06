//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Mark Rachapoom on 2/4/21.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    let impact = UIImpactFeedbackGenerator(style: .medium)
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
                impact.impactOccurred()
                withAnimation(.easeIn) {
                    shop.showingProduct = false
                    shop.selectedProduct = nil
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
        }//: HSTACK
    }
}

// MARK: - PREVIEW
struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
            .environmentObject(Shop())
    }
}
