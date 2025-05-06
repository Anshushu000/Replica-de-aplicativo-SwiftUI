//
//  Quadrinhos.swift
//  disneyBooks
//
//  Created by Aluno Mack on 15/04/25.
//

import SwiftUI

struct Quadrinhos: View {
    var imagem = Livros.lista()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            ScrollView (showsIndicators: false){
                
                VStack(alignment: .leading, spacing: 10){
                    ZStack{
                        
                        Rectangle()
                            .foregroundStyle(.clear)
                            .frame(width:380, height: 120)
                        Text("Quadrinhos")
                            .bold()
                            .font(.largeTitle)
                            .foregroundStyle(.colortext)
                            .padding(.top, 50)
                    }
                    
                    
                    Text("Populares")
                        .foregroundStyle(.white)
                        .padding(.top)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack(spacing:10){
                            ForEach(imagem) {
                                i in ListaImagem(manga:i)
                            }
                        }
                    }
                    .frame(width: 380, height:150)
                    
                    
                    Text("Marvel")
                        .foregroundStyle(.white)
                        .padding(.top)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack(spacing:10){
                            ForEach(imagem) {
                                i in ListaImagem(manga:i)
                            }
                        }
                    }
                    .frame(width: 380, height:150)
                    
                    
                    Text("DC")
                        .foregroundStyle(.white)
                        .padding(.top)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack(spacing:10){
                            ForEach(imagem) {
                                i in ListaImagem(manga:i)
                            }
                        }
                    }
                    .frame(width: 380, height:150)
                    
                    
                    Text("Pipoca e Nanquin")
                        .foregroundStyle(.white)
                        .padding(.top)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack(spacing:10){
                            ForEach(imagem) {
                                i in ListaImagem(manga:i)
                            }
                        }
                    }
                    .frame(width: 380, height:150)
                    
                    Text("Marício de Souza Produções")
                        .foregroundStyle(.white)
                        .padding(.top)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack(spacing:10){
                            ForEach(imagem) {
                                i in ListaImagem(manga:i)
                            }
                        }
                    }
                    .frame(width: 380, height:150)
                    
                    
                    
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(.linearGradient(colors: [.colortabbar, .colorbackground], startPoint: .top, endPoint: .bottom))
            .navigationBarBackButtonHidden(true)
            .toolbar{
                ToolbarItem(placement:.topBarLeading , content: {
                    Button {
                        dismiss()
                        
                    } label: {
                        Image(systemName: "chevron.backward.circle")
                            .foregroundStyle(.colortext)
                    }
                })
            }
            .toolbarBackground(.colortabbar, for: .navigationBar)
            
        }
    }
}

#Preview {
    Quadrinhos()
}
