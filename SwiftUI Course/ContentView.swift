//
//  ContentView.swift
//  SwiftUI Course
//
//  Created by Gio Lucero on 2019-09-04.
//  Copyright © 2019 Gio Lucero. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // ZStack allows you to stack items on top of each other
        ZStack {
            
            CardView()
                .offset(x: 0, y: -40)
                .scaleEffect(0.85)
            
            CardView()
                .offset(x: 0, y: -20)
                .scaleEffect(0.9)
            
            CertificateView()
                .scaleEffect(0.95)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    var body: some View {
        VStack {
            
            Text("Card Back")
            
        }
        .frame(width: 300, height: 220)
        .background(Color.blue)
        .cornerRadius(10)
        .shadow(radius: 20)
        .offset(x: 0, y: -20)
    }
}

struct CertificateView: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("UI Design")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color("accent"))
                    Text("Certificate")
                        .foregroundColor(.white)
                }
                Spacer()
                Image("Logo")
                    .resizable()
                    .frame(width: 30.0, height: 30.0)
            }.padding(.horizontal)
            Image("Background")
                .resizable()
                .frame(width: 340.0, height: 134)
        }
        .frame(width: 340.0, height: 220)
        .background(Color.black)
        .cornerRadius(10)
        .shadow(radius: 20)
    }
}
