//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Satya Prakash Sahu on 16/08/21.
//

import SwiftUI

struct TopPartDetailView: View {
    // MARK: - Properties
    @State private var isAnimating : Bool = false
    
    @EnvironmentObject var shop : Shop
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
 
            // Price
            
            VStack(alignment: .leading, spacing: 6, content: {
                
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
                
            }) // End of VStack
            .offset(y : isAnimating ? -50 : -75)
            
            
            Spacer()
            
            // Photo
            
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y : isAnimating ? 0 : -35)
            
        
        }) // End of HStack
        .onAppear(perform: {
            withAnimation(.easeOut(duration:0.75)){
                isAnimating.toggle()
            }
        })
        
        
    }
}



// MARK: - Preview
struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorGrey)
    }
}
