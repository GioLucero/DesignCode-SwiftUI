//
//  Home.swift
//  SwiftUI Course
//
//  Created by Gio Lucero on 2019-10-24.
//  Copyright © 2019 Gio Lucero. All rights reserved.
//

import SwiftUI

struct Home: View {
    var body: some View {
        HStack {
            Image(systemName: "creditcard")
                .imageScale(.large)
                .foregroundColor(Color("icons"))
                .frame(width: 32, height: 32)
            Spacer()
        }
        .padding(10)
        Text("My Account")
            .font(.headline)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
