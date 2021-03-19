//
//  StartButton.swift
//  learningPath1
//
//  Created by NCK App Dev on 15/03/2021.
//

import SwiftUI

struct StartButton: View {
    @AppStorage("isOnBoarding") var isOnBoarding:Bool?
    var body: some View {
        Button( action: {
            isOnBoarding = false
        }){
            HStack (spacing:8){
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.24))
            
        }
        .accentColor( .white)
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            
    }
}
