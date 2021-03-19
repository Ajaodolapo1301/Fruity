//
//  DetailsView.swift
//  learningPath1
//
//  Created by NCK App Dev on 16/03/2021.
//

import SwiftUI

struct DetailsView: View {
    var fruit:FruitModel
    var body: some View {
        NavigationView {
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false)  {
                VStack(alignment: .center, spacing: 20) {
                   
                    // HEADER
                        Header(fruit: fruit)
                    
                    VStack(alignment:.leading, spacing: 20){
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1 ])
                        
//                        HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        //Nutrient
                        NutrientView(fruits: fruit)
                        
                        
//                        SUBHEADING
                        Text("Learn more about \(fruit.title)".uppercased())
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(fruit.gradientColors[1 ])
                              
                        
//                        Description
                        Text(fruit.description)
               
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        //LInk
                        SourceLinkView()
                        
                    } //: Vstack
                    .padding(.horizontal, 20)
                    .frame(maxWidth:480, alignment: .center)
                } //:Vstack
                .navigationBarTitle(fruit.title, displayMode:.inline)
                .navigationBarHidden(true)
                .navigationViewStyle(StackNavigationViewStyle())
  
            } // : Scroll
            .edgesIgnoringSafeArea(.top)
        } //:NvView
            
        }
    }


struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(fruit: listOfFruits[0])
    }
}
