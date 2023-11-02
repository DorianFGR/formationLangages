//
//  ContentView.swift
//  formationLangages
//
//  Created by Dorian Figueiras on 02/11/2023.
//

import SwiftUI

struct LanguageDescription: View {
    var language:Language
    
    var body: some View {
        VStack {
            
            Image(language.image)
                .resizable()
                .scaledToFit()
                .frame(height: 200.0)
            
            Text(language.name)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .frame(width: 300.0)

            NavigationView{
                List(Language.list, id:\.id){
                    language in LanguageItemView(language: language)
                        .overlay(
                            NavigationLink(destination: LanguageDescription(language: language),label: {
                                EmptyView()
                            }
                                          ).opacity(0)
                    )
                        .listRowSeparator(.hidden)
                }.listStyle(PlainListStyle())
                    .navigationTitle("Languages")
            }


        }
        .padding(.all)
    }
}

struct LanguageDescriptionView: PreviewProvider {
    static var previews: some View {
        LanguageDescription(language: Language.list[0])
    }
}
