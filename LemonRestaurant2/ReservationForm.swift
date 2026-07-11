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
    @State private var childrenCount: Int = 0
    @State private var showMessage: Bool = false
    
    var nameFieldColor: Color{
        if userName.isEmpty{
            return .red
        }else if userName.count < 3{
            return .orange
        }else{
            return .primary
        }
    }
    
    var reservationStatus: String{
        if userName.isEmpty && phoneNumber.isEmpty{
            return "Please enter your name and phone number"
        }else if userName.isEmpty{
            return "Please enter your name"
        }else if phoneNumber.isEmpty{
            return "Please enter your phone number"
        }else{
            return "Ready to preview your reservation"
        }
    }
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
                    .padding(6)
                    .background(nameFieldColor.opacity(0.05))
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius:8)
                            .stroke(nameFieldColor,lineWidth:0.5))
                    
                // $ - > this view can READ and WRITE the value
                
                if userName.isEmpty{
                    Text("Please enter your name")
                        .font(.footnote)
                        .foregroundStyle(.red)
                }
                
                Stepper("Guests: \(guestCount)",value:$guestCount,in:1...maxGuest)
                
                if guestCount >= 8{
                    Text("Large group - we'll do our best to accommodate")
                        .font(.footnote)
                        .foregroundStyle(.orange)
                }
            }
            
            //contact
            Section(header:Text("Contact Information")){
                TextField("Phone Number", text:$phoneNumber)
                    .keyboardType(.numberPad)
                
                if phoneNumber.isEmpty{
                    Text("Please enter your phone number")
                        .font(.footnote)
                        .foregroundStyle(.red)
                }else if phoneNumber.count < 10{
                    Text("Number too short - keep typing")
                        .font(.footnote)
                        .foregroundStyle(.orange)
                }else{
                    Text("Looks good")
                        .font(.footnote)
                        .foregroundStyle(.green)
                }

            }
            
            Section(header:Text("Optional")){
                TextField("Occasion (Birthday, Anniversary, etc.)", text:$occasionText)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)
                Stepper("Children: \(childrenCount)",value:$childrenCount, in:0...maxChildren)
                
                if childrenCount > 0{
                    Text("We have a kids menu aviable")
                        .font(.footnote)
                        .foregroundStyle(.green)
                }
                Toggle("Show an special text",isOn: $showMessage)
                if showMessage{
                    Text("Discount %")
                        .foregroundStyle(.green)
                }
            }
            
            //actions
            Section(header:Text("Actions")){
                Text(reservationStatus)
                    .font(.footnote)
                    .foregroundStyle(.orange)
                Button("Preview reservation details"){
                    preview =
                        """
                        Name: \(userName)
                        Guest: \(guestCount)
                        Phone: \(phoneNumber)
                        Children: \(childrenCount)
                        Ocassion: \(occasionText)
                        
                        """
                }.disabled(userName.isEmpty || phoneNumber.isEmpty || phoneNumber.count < 10)
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
