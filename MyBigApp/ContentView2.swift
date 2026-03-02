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
                        .font(.largeTitle)
                    Spacer()
                    Label: do {
                        Image(systemName:"plus.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width:25)
                            .foregroundColor(.black)
                    }
                }
                SupplyView(name: "Milk", lastPurchaseDate: "Dec.11", needForSupplyOrNot: "No need for supply")
                SupplyView(name: "Meat", lastPurchaseDate: "Dec.5", needForSupplyOrNot: "Need for supply")
                SupplyView(name: "Vegetable&Fruit", lastPurchaseDate: "Dec.9", needForSupplyOrNot: "No need for supply")
                SupplyView(name: "Egg", lastPurchaseDate: "Dec.6", needForSupplyOrNot: "Need for supply")
                
                
            }
            .navigationTitle("Supply")
            .padding(.horizontal)
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
                .frame(width:90, height:120)
            Spacer()
            VStack{
                HStack{
                    Text(name)
                        .fontWeight(.heavy)
                        .font(.title2)
                    Spacer()
                }
                HStack{
                    Text("Last purchase: \(lastPurchaseDate)")
                        .foregroundColor(.black)
                    Spacer()
                }
                HStack{
                    Text(needForSupplyOrNot)
                    Spacer()
                }
            }
            Spacer()
            Text("\(Image(systemName: "chevron.right"))")
                .foregroundStyle(.black)
        }
    
    }
}
