//
//  Header.swift
//  learningPath1
//
//  Created by NCK App Dev on 16/03/2021.
//

import SwiftUI

struct Header: View {

    var fruit:FruitModel

    @State private var isAnimating:Bool = false
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .scaleEffect(isAnimating ? 1.0 : 0.6)
                .padding(.vertical, 20)
        }
        .frame(height:440)
        .onAppear(){
            withAnimation(.easeOut(duration:0.5)){
                isAnimating = true
            }
            
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header(fruit: listOfFruits[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
