//
//  ContentView.swift
//  MyBigApp
//
//  Created by Steven Xia on 2026/3/1.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                VStack(spacing: 20){
                    Text("Waste no more time arguing about what a good man should be. Be one.")
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .padding(.horizontal)
                    HStack{
                        Spacer()
                        Text("- Marcus Aurelius")
                            .italic()
                            .padding(.horizontal)
                    }
                }
                .lineSpacing(5.0)
                .border(.black)
                Label: do {
                    Image(systemName:"heart.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width:30)
                        .foregroundColor(.gray)
                }
                Spacer()
                Label: do{
                    Text("Another one!")
                        .foregroundColor(.blue)
                }
            
            }
            .padding()
            .navigationTitle("Quotes")
        }
    }
}

#Preview {
    ContentView()
}
