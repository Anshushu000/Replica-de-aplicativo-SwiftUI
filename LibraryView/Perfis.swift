//
//  Perfis.swift
//  disneyBooks
//
//  Created by Aluno Mack on 15/04/25.
//

import SwiftUI

struct Perfis: Identifiable {
    let name: String
    let imageName: String
    let id = UUID()
    
    static func lista() -> [Perfis]{
        [Perfis(name: "killua", imageName: "Alice"),
         Perfis(name: "batman", imageName: "Fernando"),
         Perfis(name: "mike", imageName: "Lucas"),
         Perfis(name: "principe", imageName: "Ana")
        ]
    }
    
}


struct PerfilList: View{
    
    var listaPerfil: Perfis
    
    var body: some View {
        VStack{
            Image(listaPerfil.name)
                .resizable()
                .scaledToFit()
                .cornerRadius(90)
                .frame(width: 110, height:100)
            
                Text(listaPerfil.imageName)
                    .font(.system(size: 18))
                    .foregroundStyle(.white)
        }
    }
}
        
struct ListaTexto: View{
    
    var texto: String
    
    var body: some View {
        
        Text(texto)
            .listRowBackground(Color.clear)
            .listRowSeparatorTint(.colortext)
            .foregroundStyle(.white)
    }
}


//#Preview {
//    Perfis()
//}
