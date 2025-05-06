//
//  AutoScroller.swift
//  disneyBooks
//
//  Created by Aluno Mack on 11/04/25.
//

import SwiftUI

struct AutoScroller: View {
    var imageName = ["jujutsu","dragonball","hunter","demonslayer","spiderman",
                     "jujutsu","dragonball","hunter","demonslayer","spiderman",
                     "jujutsu","dragonball","hunter","demonslayer","spiderman",
                     "jujutsu","dragonball","hunter","demonslayer","spiderman",
                     "jujutsu","dragonball","hunter","demonslayer","spiderman"
    ]
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    
    
    @State private var selectImageIndex: Int = 0
    
    
    var body: some View {
        TabView(selection: $selectImageIndex){
            ForEach(0..<imageName.count, id: \.self) { index in
                ZStack(alignment: .topLeading){
                    Image("\(imageName[index])")
                        .resizable()
                        .tag(index)
                        .frame(width: 250, height: 400)
                }
            }
        }
        .frame(width: 350, height: 400)
        .tabViewStyle(.page(indexDisplayMode: .never))
        //        .ignoresSafeArea()
        .onReceive(timer) { _ in
            withAnimation(.default) {
                selectImageIndex = (selectImageIndex + 1) % imageName.count
            }
        }
    }
}
//
//#Preview {
//    AutoScroller(imageName: ["dragonball", "hunter"])
//}
