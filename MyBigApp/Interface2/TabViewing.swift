//
//  TabViewing.swift
//  MyBigApp
//
//  Created by Steven Xia on 2026/3/2.
//


import SwiftUI

struct TabViewing: View{
    var body: some View{
        TabView(selection: Binding.constant(2)) {
            ContentView2()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(1)
            ContentView2()
                .tabItem {
                    Image(systemName: "carrot")
                    Text("Supply")
                }
                .tag(2)
            ContentView2()
                .tabItem {
                    Image(systemName: "creditcard")
                    Text("Bill")
                }
                .tag(3)
            ContentView2()
                .tabItem {
                    Image(systemName: "washer")
                    Text("Chore")
                }
                .tag(4)
            ContentView2()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("calendar")
                }
                .tag(5)
        }
    }
}

#Preview{
    TabViewing()
}
