//
//  teste2.swift
//  disneyBooks
//
//  Created by Aluno Mack on 15/04/25.
//

import SwiftUI

struct Book: View {
    var imagem = Livros.lista()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            ScrollView (showsIndicators: false){

                        VStack(alignment: .leading, spacing: 10){
                            ZStack{
                                
                                Rectangle()
                                    .foregroundStyle(.clear)
                                    .frame(width:380, height: 150)
                                Text("Livros")
                                    .bold()
                                    .font(.largeTitle)
                                    .foregroundStyle(.colortext)
                                    .padding(.top, 50)
                            }
                            
                            
                            Text("Ação")
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

                            
                            Text("Aventura")
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

                            
                            Text("Drama")
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
                            
                            
                            Text("Romance")
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
                        
                            Text("Terror")
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
    
    Book()
}
