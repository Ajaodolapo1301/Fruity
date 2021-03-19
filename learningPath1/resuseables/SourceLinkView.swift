//
//  SourceLinkView.swift
//  learningPath1
//
//  Created by NCK App Dev on 16/03/2021.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(){
            HStack{
               Text("Content Source")
                Spacer()
                Link("Wikipedia", destination:URL(string: "http://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            
                
            }
            
            .font(.footnote)
            
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
