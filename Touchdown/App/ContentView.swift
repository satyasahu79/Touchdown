//
//  ContentView.swift
//  Touchdown
//
//  Created by Satya Prakash Sahu on 13/08/21.
//

import SwiftUI

struct ContentView: View {

// MARK: - Properties
    @EnvironmentObject var shop : Shop
    
    
    // MARK: - Body
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal,15)
                        .padding(.bottom)
                        .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color : Color.black.opacity(0.05),radius: 5,x:0,y: 5  )
                    
                    ScrollView(.vertical,showsIndicators : false, content:{
                        VStack(spacing: 0.0)
                        {
                            
                            FeaturedTabView()
                                .padding(.vertical,20)
                            
                            
                            CategoryGridView()
                            
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, alignment: .center, spacing: 15,content: {
                                
                                
                                ForEach(products)
                                {
                                    product in
                                    ProductItemView(product : product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }
                            })  // End of LazyVGrid
                            .padding(15)
                            
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            
                            
                            
                            FooterView()
                                .padding(.horizontal)
                        } // End of VStack
                    })// End of Scroll
            
                } // VStack Ends
                .background(colorBackground.ignoresSafeArea(.all,edges: .all))
            } else {
                ProductDetailView()
            }
        
        } // ZStack Ends
        .ignoresSafeArea(.all, edges: .top)
        
   
    } // Body Ends

} // Content View Ends

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
