//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Satya Prakash Sahu on 15/08/21.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - Properties
    
    @EnvironmentObject var shop : Shop
    
    // MARK: - Body
    var body: some View {
        VStack(alignment:.leading, spacing: 5, content: {
            
            // Navbar
            
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top,UIApplication.shared.windows.first? .safeAreaInsets.top)
            
            // Header
            
           HeaderDetailView()
            .padding(.horizontal)
            
            // Detail Top Part
            
            TopPartDetailView()
                .zIndex(1)
                .padding(.horizontal)
            
            // Detail Bottom Part
            
            VStack(alignment: .center, spacing: 0, content: {
                
                
                // Ratings + Size
                
                RatingsSizesDetailView()
                    .padding(.bottom,10)
                    .padding(.top,-20)
                
                // Description
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body,design:.rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }) // Scroll View Ends
                
                // Quantity + Favourite
                
                QuantityFavDetailView()
                    .padding(.vertical,10)
                
                // Add to Cart
                AddToCartDetailView()
                    .padding(.bottom,20)
                
                
                Spacer()
                
            })  // End of VStack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top,-105)
            )
                    
        }) // VStack Ends
        .zIndex(0)
        .ignoresSafeArea(.all,edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            ).ignoresSafeArea(.all,edges: .all)
        )
    }
}




// MARK: - Previews
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
           
    }
}
