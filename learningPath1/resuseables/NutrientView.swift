//
//  NutrientView.swift
//  learningPath1
//
//  Created by NCK App Dev on 17/03/2021.
//

import SwiftUI

struct NutrientView: View {
    var fruits: FruitModel
    var nutrients: [String] = [
        "Sugar", "Energy", "Fat", "Protein", "Vitamins", "Minerals"
    ]
    
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritiuonal value per 100g "){
                ForEach(0..<nutrients.count ){ items in
                    
                    Divider()
                        .padding(.vertical, 2)
                    HStack{
                        HStack {
                            Image(systemName: "info.circle")
                            Text(nutrients[items])
                        }
                        
                        .foregroundColor(fruits.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruits.nutrition[items]).multilineTextAlignment(.trailing)
                    }
                }
            }
          
        }
    }
}

struct NutrientView_Previews: PreviewProvider {
    static var previews: some View {
        NutrientView(fruits: listOfFruits[0])
            .preferredColorScheme(.dark)
            
    }
}
