//
//  SectionView.swift
//  Touchdown
//
//  Created by Satya Prakash Sahu on 15/08/21.
//

import SwiftUI

struct SectionView: View {
    // MARK: - Properties
    
    @State var rotationClockwise : Bool
    
    
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 0.0) {
           
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .rotationEffect(Angle(degrees: rotationClockwise ? 90 : -90))
                
                
           Spacer()
        
        } // End of VStack
        .background(colorGrey.cornerRadius(12))
        .frame(width : 85)
    
    }
}


// MARK: - Previews

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotationClockwise: true)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
