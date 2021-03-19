//
//  SettingsLabelView.swift
//  learningPath1
//
//  Created by NCK App Dev on 18/03/2021.
//

import SwiftUI

struct SettingsLabelView: View {
    var labelText:String
    var image:String
    var body: some View {
        HStack {
            Text(labelText.uppercased())
            Spacer()
            Image(systemName: image)

            }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", image: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
