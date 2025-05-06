//
//  teste.swift
//  disneyBooks
//
//  Created by Aluno Mack on 15/04/25.
//

import SwiftUI

struct LivroDownload: Identifiable {
    let name: String
    let imageName: String
    let porct: String
    let id = UUID()
    
    static func lista() -> [LivroDownload]{
        [LivroDownload(name: "downloaddrangoball", imageName: "Dragon Ball" , porct: "50%"),
         LivroDownload(name: "downloadspiderman", imageName: "Spider Man" , porct: "70%"),
         LivroDownload(name: "downloadharry", imageName: "Harry Potter " , porct: "20%")
         
        ]
    }
    
}


struct DownloadList: View{
    
    var listaDownload: LivroDownload
    
    var body: some View {
        HStack{
            Image(listaDownload.name)
                .resizable()
                .scaledToFit()
                .cornerRadius(5)
                .frame(width: 170, height:80)
            
            VStack(alignment: .leading, spacing: 3){
                Text(listaDownload.imageName)
                    .font(.system(size: 22))
                    .foregroundStyle(.white)
                Text(listaDownload.porct)
                    .font(.system(size: 15))
                    .foregroundStyle(.colortext)
                
            }
        }
    }
}



//#Preview {
//    teste()
//}
