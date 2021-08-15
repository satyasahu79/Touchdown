//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Satya Prakash Sahu on 13/08/21.
//
import SwiftUI

struct NavigationBarView: View {
// MARK: - Properties
    
    @State private var isAnimated : Bool = false
    
// MARK: - Body
    var body: some View {
        HStack {
            
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
                
            }) // Button Ends
            
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 1))
                    {
                        isAnimated.toggle()
                    }
        
                })
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                
                    Circle()
                        .fill()
                        .frame(width: 14.0, height: 14.0,alignment: .center)
                        .offset(x: 13, y: -10)
                        .foregroundColor(.red)
                
                } // ZStack Ends
                
            }) // Button Ends
            
        } // HStack Ends
        
    }
}



// MARK: - Preview
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
