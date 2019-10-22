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
            
            TitleView()
                .blur(radius: 20)
            
            CardBottomView()
                .blur(radius: 20)
            
            CardView()
                .offset(x: 0, y: -40)
                .scaleEffect(0.85)
                .rotation3DEffect(Angle(degrees: 50.0), axis: (x: 10.0, y: 10.0, z:10.0))
                .blendMode(.hardLight)
            
            CardView()
                .offset(x: 0, y: -20)
                .scaleEffect(0.9)
                .rotation3DEffect(Angle(degrees: 40), axis: (x: 10.0, y: 10.0, z:10.0))
                .blendMode(.hardLight)
            
            
            CertificateView()
                .scaleEffect(0.95)
                .rotation3DEffect(Angle(degrees: 30), axis: (x: 10.0, y: 10.0, z:10.0))
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

struct TitleView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Certificates")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                Spacer()
            }
            Image("Illustration5")
            Spacer()
        }
        .padding()
    }
}

struct CardBottomView: View {
    var body: some View {
        VStack(spacing: 20.0) {
            Rectangle()
                .frame(width: 60, height: 6)
                .cornerRadius(3.0)
                .opacity(0.1)
            Text("This certificate is proof that Meng To has achieved the UI Design course with approval from a Design+Code instructor.")
                .lineLimit(10)
            Spacer()
        }
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .padding(.horizontal)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 20)
        .offset(y: 600)
    }
}
