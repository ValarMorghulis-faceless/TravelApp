//
//  ContentView.swift
//  TravelApp
//
//  Created by Giorgi Samkharadze on 24.11.22.
//

import SwiftUI

struct ContentView: View {
    @State var searchTerm: String = ""
    
    @State var filterType: PlaceType?
    
    @State var models: [Place] = [      Place(type: .restaurant, location: Location(title: "Georgia", imageName: "location1"), title: "Restaurant in tbilisi", description: "One of the best restaurant in tbilisi"),
                                        Place(type: .mall, location: Location(title: "Georgia", imageName: "location2"), title: "Galleria tbilisi mall", description: "One of the best malls in tbilisi"),
                                        Place(type: .sportingVenue, location: Location(title: "Georgia", imageName: "location3"), title: "Sportis sasaxle", description: "tbilisis sportis sasaxle"),
                                        Place(type: .airport, location: Location(title: "Georgia", imageName: "location4"), title: "Tbilisi international airport", description: "Biggest airport in Georgia"),
                                        Place(type: .unknown, location: Location(title: "Georgia", imageName: "location1"), title: "tbilisi", description: "Magnificent view over tbilisi")]
   
    var body: some View {
        NavigationView {
            ZStack {
                
                Color.green
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack {
                        TextField("Search", text: $searchTerm)
                            .padding(12)
                            .background(Color.white)
                            .cornerRadius(20)
                            .padding()
                          
                        LocationCarouselView()
                        
                        FilterButtonsView(type: $filterType)
                        
                        VStack {
                            ForEach(models) { place in
                                if searchTerm.isEmpty {
                                    if filterType == nil {
                                        NavigationLink(destination: Text("Hello"), label:  {
                                            PlaceCard(model: place)
                                                .cornerRadius(12)
                                                .padding()
                                                
                                        })
                                    } else if let filterType = self.filterType, filterType == place.type {
                                        NavigationLink(destination: Text("Hello"), label:  {
                                            PlaceCard(model: place)
                                                .cornerRadius(12)
                                                .padding()
                                                
                                        })
                                    }
                                } else {
                                    if place.title.lowercased()
                                        .hasPrefix(searchTerm.lowercased()) {
                                        if filterType == nil {
                                            NavigationLink(destination: Text("Hello"), label:  {
                                                PlaceCard(model: place)
                                                    .cornerRadius(12)
                                                    .padding()
                                                    
                                            })
                                        } else if let filterType = self.filterType, filterType == place.type {
                                            NavigationLink(destination: Text("Hello"), label:  {
                                                PlaceCard(model: place)
                                                    .cornerRadius(12)
                                                    .padding()
                                                    
                                            })
                                        }
                                    }
                                }
                       
                         
                            }
                        }

                    }
                }
            }
            .navigationTitle("Travel")
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
