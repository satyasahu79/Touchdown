//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Satya Prakash Sahu on 15/08/21.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            
            
            
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                
                ForEach(brands)
                {
                    brand in
                    BrandItemView(brand: brand)
                }
                
            })  // End of Grid View
            .frame(height : 200)
            .padding(15)
    
        })// End of Scroll View
        
        
    }
}


// MARK: - Preview
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            
            .background(colorBackground)
    }
}
