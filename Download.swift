//
//  Download.swift
//  disneyBooks
//
//  Created by Aluno Mack on 11/04/25.
//

import SwiftUI

struct Download: View {
    var download = LivroDownload.lista()
    
    var body: some View {
        ZStack{

            VStack(alignment: .leading, spacing: 5){
                
                Text("Download")
                    .font(.system(size: 35))
                    .foregroundStyle(.colortext)
                    .bold()
                
                ScrollView(.vertical, showsIndicators: false){
                    LazyVStack(alignment: .leading, spacing: 1){
                        ForEach(download) {
                            i in DownloadList(listaDownload: i)
                        }
                    }
                }
                
                .padding(.bottom)
                    
            }
            .padding()
            
        }.background(.linearGradient(colors: [.colortabbar, .colorbackground], startPoint: .top, endPoint: .bottom))
            
    }
}

#Preview {
    Download()
}
