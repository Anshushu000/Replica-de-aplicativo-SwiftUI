//
//  PageLivros.swift
//  disneyBooks
//
//  Created by Aluno Mack on 15/04/25.
//

import SwiftUI

struct PageLivros: View {
    var sizeIcon: CGFloat = 100
    var icone: String
    var texto: String
    
    var body: some View {
        Rectangle()
            .scaledToFit()
            .cornerRadius(5)
            .frame(width: sizeIcon, height:sizeIcon)
            .padding(5)
            .foregroundStyle(.colortext)
            .overlay(alignment: .center, content: {
                VStack(alignment: .center, spacing: 7){
                    Image(systemName:icone)
                        .foregroundStyle(.colorbackground)
                        .font(.largeTitle)
                    Text(texto)
                }
            })
    }
}

