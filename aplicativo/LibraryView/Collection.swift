//
//  Collection.swift
//  disneyBooks
//
//  Created by Aluno Mack on 15/04/25.
//

import SwiftUI

struct Collection: Identifiable {
    let imageName: String
    let id = UUID()
    
    static func lista() -> [Collection]{
        [Collection(imageName: "colecDragonBall"),
         Collection(imageName: "colecSpiderMan"),
         Collection(imageName: "colecHarryPotter"),
         Collection(imageName: "colecTMNT"),
         Collection(imageName: "colecMarvel"),
         Collection(imageName: "colecDC")
            
        ]
    }
    
}

struct CollectionImage: View{
    
    let coll: Collection
    
    var body: some View {
        
        Image(coll.imageName)
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}

//#Preview {
//    Collection()
//}
