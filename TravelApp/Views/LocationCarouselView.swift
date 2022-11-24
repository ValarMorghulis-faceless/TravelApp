//
//  LocationCarouselView.swift
//  TravelApp
//
//  Created by Giorgi Samkharadze on 24.11.22.
//

import Foundation
import SwiftUI

struct LocationCarouselView: View {
    let locations: [Location]
    init() {
        self.locations = [Location(title: "Georgia", imageName: "location1"),
                          Location(title: "Georgia", imageName: "location2"),Location(title: "Georgia", imageName: "location3"),Location(title: "Georgia", imageName: "location4")]
    }
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(locations) { model in
                    NavigationLink(destination: Text(model.title), label: {
                        LocationCard(model: model)
                            .frame(width: 300, height: 170, alignment: .center)
                            .cornerRadius(12)
                            .padding()
                            .padding(.trailing, -25)
                    })
                }
            }
        }
    }
}

struct LocationCard: View {
    let model: Location
    
    var body: some View {
        ZStack {
            
            GeometryReader { proxy in
                Image(model.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: proxy.size.width, height: proxy.size.height, alignment: .center)
            }
       
            
            VStack(alignment: .leading) {
                Spacer()
                HStack {
                    Text(model.title)
                        .bold()
                        .foregroundColor(Color.white)
                        .font(.system(size: 32))
                        .padding(.leading, 4)
                    Spacer()
                }
            }
            
        }
    }
}


