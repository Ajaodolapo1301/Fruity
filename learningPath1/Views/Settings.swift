//
//  Settings.swift
//  learningPath1
//
//  Created by NCK App Dev on 18/03/2021.
//

import SwiftUI

struct Settings: View {
    @AppStorage("isOnBoarding") var isOnBoarding:Bool = false
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{

            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
              
                GroupBox(
                    
                    label:SettingsLabelView(labelText: "Fructus", image:"info.circle") , content: {
                        Divider()
                            .padding(.vertical, 4)
                        HStack(alignment:.center, spacing:20){
                            Image("logo")
                                .resizable()
                                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(9)
                            
                            Text("Blueberries are perennial flowering plants with blue or purple berries. They are classified in the ")
                                .font(.footnote)
                        }
                
                })
   
                
                GroupBox(
                    label:  SettingsLabelView(labelText: "Application", image:"paintbrush"), content: {
                        Divider()
                            .padding(.vertical, 4)
                        Text("Blueberries are perennial flowering plants with blue or purple berries. They are classified in the ")
                            .font(.footnote)
                            .frame(minHeight:60)
                            .padding(. vertical, 8)
                            .layoutPriority(1)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        
                        Toggle(isOn: $isOnBoarding, label: {
                            if isOnBoarding {
                                Text("Restarted".uppercased())
                            } else {
                                Text("Restart".uppercased())
                            }
                        })
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        
                    }
                
                )
                
                    
                GroupBox(
                    label: SettingsLabelView(labelText: "Application", image:"apps.iphone")
        
                    
                , content: {
                    Divider()
                        .padding(.vertical, 4)
                
                    Group{
                        SettingDeveloperView(title: "Developer", subTitles: "jane/Joe")
                        SettingDeveloperView(title: "Developer", subTitles: "jane/Joe")
                        SettingDeveloperView(title: "Developer", labelLink: "Wikipedia", destinationLink: "wikipedia.com")
                        
                        SettingDeveloperView(title: "Developer", subTitles: "jane/Joe")
                    }
                    .padding()
                    }
                )
                    
                    
                    
         
            
            })
            
            .padding()
            .navigationTitle("Settings")
            .navigationBarItems( trailing: Button( action: {
                presentationMode.wrappedValue.dismiss()
            }){
                Image(systemName: "xmark")
                
            })
            

            
        }
        
        
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
            .preferredColorScheme(.dark)
    }
}
