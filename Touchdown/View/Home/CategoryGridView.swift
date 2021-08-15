//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Satya Prakash Sahu on 15/08/21.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/, content: {
                
                Section(header: SectionView(rotationClockwise: false),
                    footer: SectionView(rotationClockwise: true))
                {
                    ForEach (categories)
                    {
                        category in
                        CategoryItemView(category: category)
                    }
                }
                
            }) // End of LazyHGrid
            
            .frame(height:140)
            .padding(.horizontal,15)
            .padding(.vertical,10)
        
        }) // End of Scroll View
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
        
    }
}
