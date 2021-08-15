//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Satya Prakash Sahu on 15/08/21.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - Properties
    
    let category : Category
    
    // MARK: - Body
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6) {
                
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30.0, height: 30.0,alignment: .center)
                    .foregroundColor(.gray)
                
                
                Text(category.name)
                    .fontWeight(.light)
                    .foregroundColor(.gray)

                Spacer()
            } // End of HStack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray,lineWidth: 1)
            )
            
        })// End of Button
    }
}



// MARK: - Previews
struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorGrey)
    }
}
