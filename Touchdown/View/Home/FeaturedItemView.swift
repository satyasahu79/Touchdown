//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Satya Prakash Sahu on 15/08/21.
//
import SwiftUI

struct FeaturedItemView: View {
// MARK: - Properties
    let player : Player
    
// MARK: - Body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}


// MARK: - Previews
struct FeaturedItemView_Previews: PreviewProvider {
   
    static var previews: some View {
        
        FeaturedItemView(player: players[1])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
