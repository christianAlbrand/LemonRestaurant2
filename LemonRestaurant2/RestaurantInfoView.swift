//
//  RestaurantInfoView.swift
//  LemonRestaurant2
//
//  Created by Christian-SDGKU on 20/07/26.
//

import SwiftUI

struct RestaurantInfoView: View {
    let socialMedia = [
        "Instagram": "@lemon",
        "Faceboo": "facebook.com/lemon",
        "Tiktok": "@restaurant.lemon"
    ]
    
    let services = [
        "Wi-Fi": "Free",
        "Reservation": "Yes",
        "Takeout": "Available",
        "Catering": "Available",
        "Delivery": "Available",
        "Parking": "No"
    ]
    
    let menu = [
        "Kids-Menu": "Available",
        "Vegan-Menu": "Available",
        "Allergies": "Available",
        "Special-Requests": "Available"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Social Media")){
                    ForEach(Array(socialMedia), id:\.value) { (key, value) in
                        HStack {
                            Text(key).bold()
                            Spacer()
                            Text(value).foregroundStyle(.secondary)
                        }
                        
                    }
                }
                Section(header: Text("Services")) {
                    ForEach(Array(services), id:\.value) { (key, value) in
                        HStack {
                            Text(key).bold()
                            Spacer()
                            Text(value).foregroundStyle(.secondary)
                        }
                    }
                }
                
                Section(header: Text("Menu Categories")) {
                    ForEach(Array(menu), id: \.key) { key, value in
                        HStack {
                            Text(key).bold()
                            Spacer()
                            Text(value).foregroundStyle(.secondary)
                        }
                    }
                }
                
            }.navigationTitle(Text("Restaurant Information"))
        }
    }
}

#Preview {
    RestaurantInfoView()
}
