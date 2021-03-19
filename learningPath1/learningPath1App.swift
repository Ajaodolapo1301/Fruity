//
//  learningPath1App.swift
//  learningPath1
//
//  Created by NCK App Dev on 15/03/2021.
//

import SwiftUI

@main
struct learningPath1App: App {
    
    @AppStorage("isOnBoarding") var isOnBoarding:Bool = true
    var body: some Scene {
        
        WindowGroup {
            
            if isOnBoarding{
                Onboarding()
            }else{
               HomePage()
            }
   
        }
    }
}
