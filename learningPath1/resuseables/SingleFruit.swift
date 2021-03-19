//
//  Homepage.swift
//  learningPath1
//
//  Created by NCK App Dev on 16/03/2021.
//

import SwiftUI

struct SingleFruit: View {
    var fruit:FruitModel
    

    var body: some View {
        HStack{

            Image(fruit.image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                
                    .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
    
                    .cornerRadius(8)
            VStack(alignment:.leading, spacing: 5){
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .padding(.horizontal, 5)
        
  
    }
}

struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        SingleFruit(fruit: listOfFruits[0])
            .previewLayout(.sizeThatFits)
    }
}
