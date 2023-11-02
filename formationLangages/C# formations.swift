//
//  homeView.swift
//  formationLangages
//
//  Created by Dorian Figueiras on 02/11/2023.
//

import SwiftUI

struct C__formations: View {
    var body: some View {
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
}

struct LanguageFormationCSHARPItemView: View {
    let language : languageFormationCSHARP
    var body: some View {
        ZStack{
            Color.white
                .cornerRadius(8)
            HStack{
                image
                info
            }.padding()
        }.shadow(color:Color.black.opacity(0.2), radius: 5, x : 0, y: 2)

        
        
    }
}

private extension LanguageFormationCSHARPItemView{
    
    var image : some View{
        Image(languageFormationCSHARP.image)
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 50)
    }
    
    var info : some View {
        VStack(alignment:.leading,spacing: 5){
            Text(languageFormationCSHARP.name)
                .font(.headline)
                .lineLimit(2)
            Text(languageFormationCSHARP.description)
                .font(.subheadline)
                .lineLimit(2)
        }
        
    }
}

struct C__formations_Previews: PreviewProvider {
    static var previews: some View {
        C__formations()
    }
}
