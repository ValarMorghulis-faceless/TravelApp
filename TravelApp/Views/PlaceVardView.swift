//
//  PlaceVardView.swift
//  TravelApp
//
//  Created by Giorgi Samkharadze on 24.11.22.
//

import Foundation
import SwiftUI

struct PlaceCard: View {
    var model: Place
    var body: some View {
        VStack(alignment: .leading) {
            //Image
            Image(model.type.imagename)
                .resizable()
                .aspectRatio(contentMode: .fill)
            //Title
            Text(model.title)
                .bold()
                .font(.system(size: 24))
                .padding(.bottom, 5)
            //Description
            Text(model.description)
                .foregroundColor(Color(.secondaryLabel))
                .padding(.bottom, 10)

            
            
            // loaction title
            Text(model.location.title)
                .foregroundColor(Color(.secondaryLabel))

            
            //type
            Text(model.type.rawValue.lowercased())
                .foregroundColor(Color(.secondaryLabel))

            
        }
        .padding()
        .background(Color.white)
    }
}
