//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Satya Prakash Sahu on 15/08/21.
//

import SwiftUI
struct ProductItemView: View {
    // MARK: - Properties
    
    let product : Product
    
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            
            // Photo
            ZStack()
            {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } // End os ZStack
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            
            // Name
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            
            // Price
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        })  // VStack Ends
    }


}



// MARK: - Preview
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
