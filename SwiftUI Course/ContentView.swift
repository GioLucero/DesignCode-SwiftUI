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
        VStack {
            HStack {
                VStack {
                    Text("UI Design")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("accent"))
                    Text("Certificate")
                        .foregroundColor(.white)
                }
                Spacer()
                Image("Logo")
                    .resizable()
                    .frame(width: 30.0, height: 30.0)
            }
            Image("Background")
                .resizable()
                .frame(width: 340.0, height: 134)
            }
            .frame(width: 340.0, height: 220)
            .background(Color.black)
            .cornerRadius(10)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
