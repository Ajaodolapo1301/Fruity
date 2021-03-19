//
//  ContentView.swift
//  learningPath1
//
//  Created by NCK App Dev on 15/03/2021.
//

import SwiftUI

struct ContentView: View {
    var fruit: FruitModel
    @State private var isAnimating:Bool = false

    var body: some View {
        ZStack {
            
            VStack(spacing:20) {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),  radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font( .largeTitle)
                    .fontWeight(.heavy)
                
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),  radius: 2, x: 2, y: 2)
                  
                
                Text(fruit.headline)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .font(.body)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
   
                StartButton()
                    
            } // :VStatck
            
            
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)

            .padding(.horizontal, 20)
        }  // :Zstack
        
        .onAppear{
            withAnimation(.easeOut(duration:0.5)){
                isAnimating = true
            }
    }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(fruit:listOfFruits[0])
//    }
//}
