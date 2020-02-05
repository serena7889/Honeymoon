//
//  CardView.swift
//  Honeymoon
//
//  Created by Serena Lambert on 05/02/2020.
//  Copyright © 2020 Serena Lambert. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    // MARK: - PROPERTIES
    
    let id = UUID()
    var destination: Destination
    
    // MARK: - VIEW
    
    var body: some View {
        Image(destination.imageName)
            .resizable()
            .cornerRadius(24)
            .scaledToFit()
            .frame(minWidth: 0, maxWidth: .infinity)
        .overlay(
            VStack(alignment: .center, spacing: 12) {
                Text(destination.place.uppercased())
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .shadow(radius: 1)
                    .padding(.horizontal, 18)
                    .padding(.vertical, 4)
                    .overlay(
                        Rectangle()
                            .fill(Color.white)
                            .frame(height: 1),
                        alignment: .bottom
                    )
                Text(destination.country.uppercased())
                    .foregroundColor(.black)
                    .font(.footnote)
                    .fontWeight(.bold)
                    .frame(minWidth: 85)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .background(Capsule().fill(Color.white))
            }
            .frame(minWidth: 280)
            .padding(.bottom, 50),
        alignment: .bottom
        )
    }
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(destination: destinationData[2])
            .previewLayout(.fixed(width: 375, height: 600))
    }
}
