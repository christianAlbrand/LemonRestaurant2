//
//  ReservationForm.swift
//  LemonRestaurant2
//
//  Created by Christian-SDGKU on 08/07/26.
//

import SwiftUI

struct ReservationForm: View {
    // constants
    let restaurantName = "Little Lemon"
    let maxGuest = 10
    let maxChildren = 10
    // State variables ->
    // if this value changes, update UI
    
    @State private var userName: String = ""
    @State private var guestCount: Int = 1
    @State private var phoneNumber: String = ""
    @State private var preview : String = ""
    @State private var occasionText: String = ""
    @State private var childrenCount: Int = 1
    var body: some View {
        Form{
            //header
            Section{
                HStack{
                    Image(systemName: "fork.knife")
                        .foregroundStyle(.green)
                        .font(.title)
                    VStack(alignment: .leading){
                        Text(restaurantName)
                            .font(.title2)
                            .bold()
                        Text("Reservation form")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        
                    }
                    
                    
                }
            }
            //reservation details
            Section(header:Text("Reservation Details")){
                TextField("Name", text:$userName)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)
                // $ - > this view can READ and WRITE the value
                
                Stepper("Guests: \(guestCount)",value:$guestCount,in:1...maxGuest)
            }
            
            //contact
            Section(header:Text("Contact Information")){
                TextField("Phone Number", text:$phoneNumber)
                    .keyboardType(.numberPad)

            }
            
            Section(header:Text("Optional")){
                TextField("Occasion (Birthday, Anniversary, etc.)", text:$occasionText)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)
                Stepper("Children: \(childrenCount)",value:$childrenCount, in:1...maxChildren)
            }
            
            //actions
            Section(header:Text("Actions")){
                Button("Preview reservation details"){
                    preview =
                        """
                        Name: \(userName)
                        Guest: \(guestCount)
                        Phone: \(phoneNumber)
                        Children: \(childrenCount)
                        Ocassion: \(occasionText)
                        
                        """
                }
            }
            //preview
            Section(header:Text("Preview")){
                Text(preview)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .padding(4)
                    .textSelection(.enabled)
            }
        }
        .navigationTitle("Reservation")
    }
}

#Preview {
    NavigationStack {
        ReservationForm()
    }
}
