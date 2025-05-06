//
//  teste.swift
//  disneyBooks
//
//  Created by Aluno Mack on 14/04/25.
//

import SwiftUI

struct teste: View {
    
    var imagem = Livros.lista()
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                ForEach(imagem) {
                    i in ListaImagem(manga:i)
                }
                ForEach(imagem) {
                    i in ListaImagem(manga:i)
                }
                ForEach(imagem) {
                    i in ListaImagem(manga:i)
                }
            }
            .padding()
        }
    }
}




#Preview {
    teste()
}
