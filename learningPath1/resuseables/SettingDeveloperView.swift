//
//  SettingDeveloperView.swift
//  learningPath1
//
//  Created by NCK App Dev on 18/03/2021.
//

import SwiftUI

struct SettingDeveloperView: View {
    var title:String
    var subTitles:String? = nil
    var labelLink:String? = nil
    var destinationLink:String? = nil
    var body: some View {
        HStack{
           Text(title)
            .font(.title2)
            .foregroundColor(.gray)
            Spacer()
            if subTitles != nil {
                Text(subTitles!)
            }else if(labelLink != nil && destinationLink != nil){
                Link(labelLink!, destination: URL(string: "https://\(destinationLink!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                            
                
            }
            else{
                EmptyView()
                
            }
        }
    }
}

struct SettingDeveloperView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingDeveloperView(title: "d")
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
            
                .padding()
            SettingDeveloperView(title: "Ade",  labelLink: "facebook", destinationLink: "bvvgv")
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                
                .padding()
        }
    }
}
