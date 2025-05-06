//
//  Home.swift
//  disneyBooks
//
//  Created by Aluno Mack on 08/04/25.
//

import SwiftUI

struct Home: View {
    var backgroundSize: CGFloat = 1000
    var imagem = Livros.lista()
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false){
                VStack(alignment: .leading, spacing: 10){
                    Rectangle()
                        .foregroundStyle(.clear)
                        .padding()

                        AutoScroller()
                        .padding()

                    
                    

                    VStack(alignment: .center, spacing: 10){
                        HStack(alignment: .center, spacing: 10){
                            NavigationLink(destination: {
                                Panini()
                            }, label: {
                                Logo(logo: "logopanini")
                            })
                            
                            NavigationLink(destination: {
                                Jbc()
                            }, label: {
                                Logo(logo: "logojbc")
                            })
                            NavigationLink(destination: {
                                livroUniverso()
                            }, label: {
                                Logo(logo: "logolivro")
                            })
                            NavigationLink(destination: {
                                Rocco()
                            }, label: {
                                Logo(logo: "logorocco")
                            })
                            
                            

                        }
                        
                        HStack(alignment: .center, spacing: 10){
                            NavigationLink(destination: {
                                Opn()
                            }, label: {
                                Logo(logo: "logopn")
                            })
                            NavigationLink(destination: {
                                Aleph()
                            }, label: {
                                Logo(logo: "logoaleph")
                            })
                            NavigationLink(destination: {
                                Darkside()
                            }, label: {
                                Logo(logo: "logodarkside")
                            })

                        }
                    }
                    .padding(.leading, 25)
                    
                    
                    
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
                    .padding(.bottom)
                    

                    Image(.billfinger)
                        .resizable()
                        .frame(width: 380, height:150)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                    
                        .overlay(alignment: .topLeading, content: {
                            Text(" Em breve: 2025 ")
                                .bold()
                                .foregroundStyle(.white)
                                .background(.colortabbar
                                    .opacity(0.7))
                                .clipShape(
                                        RoundedRectangle(cornerRadius: 6)
                                    )
                                .padding(4)
                                
                        })
                        .font(.system(size: 15))
                        .padding(.top)
                     
                    
                    Text("Lançamento")
                        .foregroundStyle(.white)
                        .padding(.top)
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack(spacing:10){
                            ForEach(imagem) {
                                i in ListaImagemTexto(manga: i)
                            }
                        }
                    }
                    .frame(width: 380, height:150)
                    
                    
                    Text("Recomendado para Você")
                        .foregroundStyle(.white)
                        .padding(.top)
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack(spacing:10){
                            ForEach(imagem) {
                                i in ListaImagemTexto(manga: i)
                            }
                        }
                    }
                    .frame(width: 380, height:200)
                    
                    
                    Text("Continue Assistindo")
                        .foregroundStyle(.white)
                        .padding(.top)
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack(spacing:10){
                            ForEach(imagem) {
                                i in ListaImagemTexto(manga: i)
                            }
                        }
                    }
                    .frame(width: 380, height:150)
                    
                    
                    Text("Top 10")
                        .foregroundStyle(.white)
                        .padding(.top)
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack(spacing:10){
                            ForEach(imagem) {
                                i in Top10(top: i)
                            }
                        }
                    }
                    .frame(width: 380, height:250)
                    //FIXME: - troca lancamento livro
                    Image(.spiderman)
                        .resizable()
                        .frame(width: 380, height:150)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                    
                        .overlay(alignment: .topLeading, content: {
                            Text("Em breve: 2025 ")
                                .bold()
                                .foregroundStyle(.colortabbar)
                                .background(.white
                                    .opacity(0.5))
                                .clipShape(
                                        RoundedRectangle(cornerRadius: 6)
                                    )
                                .padding(4)
                                
                        })
                        .font(.system(size: 15))
                        .padding(.top)
                    
                    
                }
                .padding()
                
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(.linearGradient(colors: [.colortabbar, .colorbackground], startPoint: .top, endPoint: .bottom))
        }

        
        
    }
}

#Preview {
    Home()
}
