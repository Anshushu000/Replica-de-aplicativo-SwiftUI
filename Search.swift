//
//  Search.swift
//  disneyBooks
//
//  Created by Aluno Mack on 09/04/25.
//

import SwiftUI

struct Search: View {
    
    @State private var searchText = ""
    var backgroundSize: CGFloat = 1000
    var sizeIcon: CGFloat = 100
    var imagem = Collection.lista()
    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    ZStack{
                        
                        Rectangle()
                            .frame(width:365, height:50)
                            .foregroundStyle(.white)
                            .cornerRadius(5)
                        HStack{
                            Image(systemName: "magnifyingglass")
                                .background(Color.white)
                                .font(.title)
                            TextField("Pesquisa por título, gênero...", text: $searchText)
                                .textFieldStyle(.roundedBorder)
                                
                        }
                        .padding()
                    }
                    
                    
                    
                    ScrollView(.vertical, showsIndicators: false){
                        VStack(alignment: .leading, spacing: 10){
                            HStack(alignment: .center, spacing: 10){
                                NavigationLink(destination: {
                                    Book()
                                }, label: {
                                    PageLivros(icone: "book.closed", texto: "Livros")
                                        .foregroundStyle(.black)
                                })
                                NavigationLink {
                                    Mangas()
                                } label: {
                                    PageLivros(icone: "book", texto: "Mangá")
                                        .foregroundStyle(.black)
                                }
                                NavigationLink {
                                    Quadrinhos()
                                } label: {
                                    PageLivros(icone: "books.vertical", texto: "Quadrinho")
                                        .foregroundStyle(.black)
                                }
                                
                                
                                
                            }
                            .padding()
                            
                            
                            Text("Destaques")
                                .foregroundStyle(.white)
                                .padding(.leading)
                            
                            
                            ScrollView {
                                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                                    ForEach(imagem) {
                                        i in CollectionImage(coll:i)
                                    }
                                    ForEach(imagem) {
                                        i in CollectionImage(coll:i)
                                    }
                                    ForEach(imagem) {
                                        i in CollectionImage(coll:i)
                                    }
                                }
                                .padding()
                            }
                            
                            
                            
                        }
                        
                    }
                    
                }
                .background(.linearGradient(colors: [.colortabbar, .colorbackground], startPoint: .top, endPoint: .bottom))
        }
      
        }
    }
}

#Preview {
    Search()
}
