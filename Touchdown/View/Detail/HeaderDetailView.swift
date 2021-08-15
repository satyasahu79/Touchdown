//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Satya Prakash Sahu on 16/08/21.
//

import SwiftUI


struct HeaderDetailView: View {

    @EnvironmentObject var shop : Shop

    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
            
        
        }) // VStack Ends
        .foregroundColor(.white)
        
        
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorGrey)
        
    }
}
