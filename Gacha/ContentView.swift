//
//  ContentView.swift
//  Gacha
//
//  Created by Shizawa Ira on 2026/08/13.
//

import SwiftUI

struct ContentView: View {
    @State var showSheet = false
    var body: some View {
        ZStack {
            Image("gacha")
                .resizable()
                .ignoresSafeArea()
            Button{
                showSheet = true
            } label: {
                Image("Presentbox")
                    .resizable()
                    .scaledToFit()
            }
        }
        .fullScreenCover(isPresented: $showSheet){
            ResultView()
        }
    }
}

#Preview {
    ContentView()
}
