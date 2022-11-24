//
//  FilterButtonsView.swift
//  TravelApp
//
//  Created by Giorgi Samkharadze on 24.11.22.
//

import Foundation
import SwiftUI

struct FilterButtonsView: View {
    @Binding var filterType: PlaceType?
    
    init(type: Binding<PlaceType?>){
        _filterType = type
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(PlaceType.allCases, id: \.self) { type in
                    let name = type.rawValue.uppercased()
                    
                    Button(action: {
                        filterType = type
                    }, label: {
                        Text(name)
                            .bold()
                            .frame(width: 150, height: 50, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(10)
                    })
                    .padding(.leading, 5)
                }
            }
        }
    }
}
