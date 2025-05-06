//
//  livros.swift
//  disneyBooks
//
//  Created by Aluno Mack on 08/04/25.
//

import SwiftUI


//
struct Livros: Identifiable {
    let name: String
    let imageName: String
    let date: String
    let type: String
    let id = UUID()
    let top: String
    
    static func lista() -> [Livros]{
        [Livros(name: "Demon Slayer", imageName: "demonslayer", date:"2016", type:"Aventura", top:" 1 "),
         Livros(name: "Spider Man", imageName: "spiderman", date:"2024", type:"Ação", top:" 2 "),
         Livros(name: "Hunter x Hunter", imageName: "hunter", date:"1998", type:"Aventura", top:" 3 "),
         Livros(name: "Jujutsu Kaisen", imageName: "jujutsu", date:"2018", type:"Ação", top:" 4 "),
         Livros(name: "Dragon Ball", imageName: "dragonball", date:"1985", type:"Aventura", top:" 5 "),
         Livros(name: "Harry Potter", imageName: "harrypotter", date: "1997", type:"Fantasia", top: " 6 "),
         Livros(name: "Percy Jackson", imageName: "perciejackson", date: "2024", type:"Fantasia", top: " 7 "),
         Livros(name: "O Nome do Vento", imageName:"vento", date: "2009", type: "Fantasia", top: " 8 "),
         Livros(name: "Turma da Mônica", imageName: "turmadamonica", date: "2018", type: "Äventura", top: " 9 "),
         Livros(name: "X-Men 97", imageName: "xmen", date: "2024", type: "Ação", top: " 10 ")
        ]
    }
    
}




struct ListaImagem: View{
    
    let manga: Livros
    
    var body: some View {
        
        Image(manga.imageName)
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}


struct ListaImagemTexto: View{
    
    let manga: Livros
    
    var body: some View {
        
        Image(manga.imageName)
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            .shadow(radius: 5)
        
            .overlay(alignment: .bottomTrailing, content: {
                HStack{
                    Text(manga.date)
                    Text(manga.type)
                        
                }
                .bold()
                .foregroundStyle(.white)
                .background(.black.opacity(0.5))
                .clipShape(
                        RoundedRectangle(cornerRadius: 3)
                    )
                .padding(2)
                
            })
            .font(.system(size: 12))
    }
}


struct Top10: View{
    
    let top: Livros
    
    var body: some View {
        
        Image(top.imageName)
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            .shadow(radius: 5)
        
            .overlay(alignment: .bottomTrailing, content: {
                HStack{
                    Text(top.date)
                    Text(top.type)
                        
                }
                .bold()
                .foregroundStyle(.white)
                .background(.black.opacity(0.5))
                .clipShape(
                        RoundedRectangle(cornerRadius: 3)
                    )
                .padding(2)
                
            })
            .font(.system(size: 12))
            .overlay(alignment: .topLeading, content: {
                Text(top.top)
                    .bold()
                    .foregroundStyle(.red)
                    .background(.yellow)
                    .clipShape(
                            RoundedRectangle(cornerRadius: 6)
                        )
                    .padding(5)
                    .font(.system(size: 25))
            })
    }
}



struct Logo: View{
    
    var logo: String
    
    var body: some View {
        
        Image(logo)
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            .shadow(radius: 5)
            .frame(width: 65, height:65)
            .padding(5)
    }
}






//#Preview {
//    livros()
//}
