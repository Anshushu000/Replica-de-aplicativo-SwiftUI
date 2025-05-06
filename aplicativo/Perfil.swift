//
//  Perfil.swift
//  disneyBooks
//
//  Created by Aluno Mack on 11/04/25.
//

import SwiftUI

struct Perfil: View {
    var backgroundSize: CGFloat = 1000
    var perfis = Perfis.lista()
    var body: some View {

            VStack(spacing: 10){
                HStack{
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack(spacing:10){
                            ForEach(perfis) {
                                i in PerfilList(listaPerfil: i)
                            }
                        }
                    }
                    .frame(width: 380, height:150)
                }
                
                
                Rectangle()
                    .frame(width: 180, height: 50)
                    .padding(.top, 8)
                    .foregroundStyle(.colortext)
                    .overlay(alignment: .center, content: {
                        Text("EDITAR PERFIS")
                            .bold()
                            .foregroundStyle(.white)
                    })
                
                List{
                    ListaTexto(texto: "Minha Lista")
                    ListaTexto(texto: "Configurações do Aplicativo")
                    ListaTexto(texto: "Conta")
                    ListaTexto(texto: "Avisos Legais")
                    ListaTexto(texto: "Ajuda")
                    ListaTexto(texto: "Sair")
                    Text("Versão: 1.0.0")
                        .listRowBackground(Color.clear)
                        .listRowSeparatorTint(.red)
                        .foregroundStyle(.colortext)
                        .font(.system(size: 12))
                }
                .frame(width:450, height: 500)
                .scrollContentBackground(.hidden)
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(.linearGradient(colors: [.colortabbar, .colorbackground], startPoint: .top, endPoint: .bottom))

    }
}

#Preview {
    Perfil()
}
