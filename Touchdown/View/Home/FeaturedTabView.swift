//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Satya Prakash Sahu on 15/08/21.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView() {
            ForEach(players)
            {
                player in
                FeaturedItemView(player: player)
                    .padding(.top,10)
                    .padding(.horizontal,15)
            }
        } // Tab View Ends
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))

    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorGrey)
    }
}
