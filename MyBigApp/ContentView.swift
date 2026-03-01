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
            VStack(spacing:20){
                
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
                Label: do{
                    Text("Another one!")
                        .foregroundColor(.blue)
                }
                HStack{
                    Text("Favourites")
                        .font(Font.title.weight(.black))
                    Spacer()
                }
                VStack{
                    FavouriteTextView(quotes: "Kind words can be shout and easy to speak but their echoes are truly endless.")
                    FavouriteTextView(quotes: "Anticipate the difficult things by managing the easy.")
                    FavouriteTextView(quotes: "I have an everyday religion that works for me. Love yourself first, and everything else falls into line.")
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

struct FavouriteTextView: View {
    let quotes: String
    var body: some View {
        Text(quotes)
            .padding()
            .lineSpacing(5.0)
        
    }
}
