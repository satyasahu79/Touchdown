//
//  CustomShape.swift
//  Touchdown
//
//  Created by Satya Prakash Sahu on 16/08/21.
//

import SwiftUI

struct CustomShape: Shape {
        func path(in rect: CGRect) -> Path {
            let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 35, height: 35))
            
            return Path(path.cgPath)
        }
    }


struct CustomShape_Previews: PreviewProvider {
    static var previews: some View {
        CustomShape()
            .previewLayout(.fixed(width: 428, height: 120))
            .padding()
    }
}
