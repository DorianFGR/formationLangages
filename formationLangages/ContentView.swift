//
//  ContentView.swift
//  formationLangages
//
//  Created by Dorian Figueiras on 02/11/2023.
//

import SwiftUI

struct LanguageDescription: View {
    var language:Language
    
    @State private var learnt = false
    
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
            Spacer()
            Button(learnt ? "Appris" : "Apprendre"){
                learnt.toggle()
            }.buttonStyle(.borderedProminent)
                .tint(Color.blue)
                .foregroundColor(.white)
                .padding()


        }
        .padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageDescription(language: Language.list[0])
    }
}
