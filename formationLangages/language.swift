//
//  language.swift
//  formationLangages
//
//  Created by Dorian Figueiras on 02/11/2023.
//

import Foundation


struct Language : Identifiable{
    let id = UUID()
    
    let name : String
    let description : String
    let image : String
}

extension Language{
    static let list : [Language] = [
        Language(name: "C#", description: "Language de programation windows", image:"c#" ),
        Language(name: "Python", description: "Language de programation multi-Plateformes", image:"python" ),
        Language(name: "Swift", description: "Language de programation pour les Pateformes d'Apple", image:"swift" ),
        Language(name: "c++", description: "Language de programation multi-Plateformes", image:"c++" )
    ]
}


struct languageFormationCSHARP: Identifiable{
    let id = UUID()
    
    let name : String
    let description : String
    let plateforme : String
    let plateformeImage : String
    let auteur : String
    let date : String
    let payant : Bool
    let prix : String
    let image : String
    let lien : String
}

extension languageFormationCSHARP{
    static let list : [languageFormationCSHARP] = [
        languageFormationCSHARP(name: "Développeur C# | Formation complète", description: "Apprenez la programmation avec le tout dernier langage C# 10 et créez des applications web puissantes avec .NET Core 6",plateforme: "Udemy", plateformeImage: "udemy", auteur: "Jonathan Roux", date: "Décembre 2022", payant: true , prix: "29,99€", image: "Développeur C# | Formation complète", lien: "https://www.udemy.com/course/developpeur-cs-formation-complete")
    ]
}
