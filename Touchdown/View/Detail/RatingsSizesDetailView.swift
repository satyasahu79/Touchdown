//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by Satya Prakash Sahu on 16/08/21.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    // MARK: - Properties
    
    let sizes : [String] = ["S","M","L","XL","XXL"]
    
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            // Ratings
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .foregroundColor(colorGrey)
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id : \.self)
                    {
                        item in Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28.0, height: 28.0,alignment: .center)
                                .background(colorGrey.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    }
                })
                
            })
            
            
            Spacer()
            
            //Sizes
            
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .foregroundColor(colorGrey)
                
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes , id: \.self)
                    {
                        size in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .frame(width:28,height:28)
                                .background(Color.white.cornerRadius(5))
                                .background(RoundedRectangle(cornerRadius: 5)
                                                .stroke(colorGrey,lineWidth: 2)
                                               
                                )
                            
                        })  // Button Ends
                    }
                    
                })  //HStack Ends
                
            })  // VStack Ends
            
        })  // HStack Ends
    }
}


// MARK: - Preview
struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
