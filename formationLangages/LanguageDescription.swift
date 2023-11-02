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
            
            Text(language.description)
                .font(.title2)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            NavigationLink(destination: cSharpFormations(),label: {
                Text("Acceder aux formations pour ce language de programation")
                    .foregroundColor(.blue)
                    .fontWeight(.bold)
                    
            }
            )
            
            
        }
    }
}

struct LanguageDescriptionView: PreviewProvider {
    static var previews: some View {
        LanguageDescription(language: Language.list[0])
    }
}
