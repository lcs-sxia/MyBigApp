//
//  ContentView2.swift
//  MyBigApp
//
//  Created by Steven Xia on 2026/3/2.
//

import SwiftUI

struct ContentView2: View {
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Text("Supply")
                        .font(.title2)
                    Spacer()
                    Label: do {
                        Image(systemName:"plus.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width:25)
                            .foregroundColor(.black)
                    }
                }
                
                
            }
            .navigationTitle("Supply")
            .background(RoundedRectangle(cornerRadius: 10)
            .foregroundColor(.gray))
        }
        
    }
}

#Preview {
    ContentView2()
}

struct SupplyView: View {
    let name: String
    let lastPurchaseDate: String
    let needForSupplyOrNot: String
    var body: some View{
        HStack{
            Rectangle()
                .frame(width:100, height:150)
            VStack{
                Text(name)
                    
                Text(lastPurchaseDate)
                    .foregroundColor(.black)
                Text(needForSupplyOrNot)
                    
            }
        }
    
    }
}
