//
//  LogoView.swift
//  Touchdown
//
//  Created by Satya Prakash Sahu on 13/08/21.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .frame(width: 30.0, height: 30.0,alignment: .center)
                .scaledToFit()
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
