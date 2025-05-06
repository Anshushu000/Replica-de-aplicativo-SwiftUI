//
//  ContentView.swift
//  disneyBooks
//
//  Created by Aluno Mack on 08/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Home()
                .tabItem{
                    Image(systemName: "house")
                }
                .toolbarBackground(
                    Color.colorbackground,
                    for: .tabBar
                )
            
            Search()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
                .toolbarBackground(
                    Color.colorbackground,
                    for: .tabBar
                )
                
            
            Download()
                .tabItem{
                    Image(systemName: "square.and.arrow.down")
                }
                .toolbarBackground(
                    Color.colorbackground,
                    for: .tabBar
                )
                
            
            Perfil()
                .tabItem{
                    Image(systemName: "person.crop.circle")
                }
                .toolbarBackground(
                    Color.colorbackground,
                    for: .tabBar
                )
        }
        .accentColor(Color.colortext)
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//#Preview {
//    ContentView()
//}
