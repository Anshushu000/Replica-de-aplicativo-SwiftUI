//
//  Opn.swift
//  disneyBooks
//
//  Created by Aluno Mack on 16/04/25.
//

import SwiftUI

struct Opn: View {
    var imagem = Livros.lista()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            ScrollView (showsIndicators: false){

                        VStack(alignment: .leading, spacing: 10){
                            Image("logopn")
                                .resizable()
                                .frame(width: 400, height: 400)
                                .overlay(alignment: .bottom, content: {
                                    Rectangle()
                                        .frame(width: 400, height:200)
                                        .foregroundStyle(.linearGradient(colors: [.clear, .colornavi], startPoint: .top, endPoint: .bottom))
                                })
                            
                            VStack(alignment: .leading, spacing: 10){
                                Text("Destaques")
                                    .foregroundStyle(.white)
                                    .padding(.top)
                                
                                ScrollView(.horizontal, showsIndicators: false){
                                    LazyHStack(spacing:10){
                                        ForEach(imagem) {
                                            i in ListaImagem(manga:i)
                                        }
                                    }
                                }
                                .frame(width: 390, height:150)

                                
                                Text("Destaques")
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

                                
                                Text("Destaques")
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
                                
                                
                                Text("Destaques")
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
                            
                                Text("Destaques")
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
                            .padding(.leading, 10)
                            
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
                            .background(.colortabbar)
                            .clipShape(
                                    RoundedRectangle(cornerRadius: 90)
                                )
                    }
                })
            }
            .toolbarBackground(.colortabbar, for: .navigationBar)
            .edgesIgnoringSafeArea(.top)
            
        }
        
        
    }
}

#Preview {
    Opn()
}
