//
//  FooterView.swift
//  Touchdown
//
//  Created by Satya Prakash Sahu on 13/08/21.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        
        VStack(alignment: .center, spacing: 10, content: {
            Text("We offer the most cutting edge, confortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
                
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright © Satya Prakash Sahu \n All rights reserved")
                .font(.footnote)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
            
        }) // VStack Ends
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}

