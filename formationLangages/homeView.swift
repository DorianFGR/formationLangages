//
//  homeView.swift
//  formationLangages
//
//  Created by Dorian Figueiras on 02/11/2023.
//

import SwiftUI

struct homeView: View {
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
            }.listStyle(PlainListStyle())
                .navigationTitle("Languages")
        }
    }
}

struct LanguageItemView: View {
    let language : Language
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

private extension LanguageItemView{
    
    var image : some View{
        Image(language.image)
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 50)
    }
    
    var info : some View {
        VStack(alignment:.leading,spacing: 5){
            Text(language.name)
                .font(.headline)
                .lineLimit(2)
            Text(language.description)
                .font(.subheadline)
                .lineLimit(2)
        }
        
    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
