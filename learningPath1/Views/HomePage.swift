//
//  HomePage.swift
//  learningPath1
//
//  Created by NCK App Dev on 16/03/2021.
//

import SwiftUI



struct HomePage: View {
    var fruits:[FruitModel] = listOfFruits
  
    @State private var isShowingModal = false
    var body: some View {
        NavigationView{
            
            List{
                ForEach(fruits.shuffled()){ items in
                    NavigationLink (destination: DetailsView(fruit: items)){
                        
                        SingleFruit(fruit:items)
                            .padding(.vertical, 4)
                    }
                        
                }
            }

            .navigationTitle("Fruits")
            .sheet(isPresented: $isShowingModal, content: {
                   Settings()
            })
            
            .navigationBarItems( trailing:   Button( action: {
                isShowingModal = true
            }){
                Image(systemName: "slider.horizontal.3")
                
            } )
        }

    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage(fruits: listOfFruits)
    }
}
