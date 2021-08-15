//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Satya Prakash Sahu on 16/08/21.
//

import SwiftUI

struct NavigationBarDetailView: View {
// MARK: - Properties

    @EnvironmentObject var shop : Shop
    
    
    // MARK: - Body
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn)  {
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
                
            }) // Button Ends
        Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
        
        }
    }
}


// MARK: - Preview
struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorGrey)
    }
}
