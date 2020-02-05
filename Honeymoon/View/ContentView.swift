//
//  ContentView.swift
//  Honeymoon
//
//  Created by Serena Lambert on 05/02/2020.
//  Copyright © 2020 Serena Lambert. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        VStack {
            HeaderView()
            Spacer()
            CardView(destination: destinationData[0])
            Spacer()
            HeaderView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
