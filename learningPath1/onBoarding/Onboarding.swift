//
//  Onboarding.swift
//  learningPath1
//
//  Created by NCK App Dev on 15/03/2021.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        TabView{
            ForEach(0..<listOfFruits.count) { item in
                 ContentView(fruit: listOfFruits[item] )
            } // :LOOP

        } // :TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
