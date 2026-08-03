//
//  AddDishView.swift
//  LemonRestaurant2
//
//  Created by Christian-SDGKU on 01/08/26.
//

import SwiftUI

struct AddDishView: View {
    @Binding var dish: Dish
    @Binding var dishes: [Dish]
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Form {
            Section(header : Text("Dish Information")) {
                TextField("Name", text: $dish.name)
                TextField("Category", text: $dish.category)
                TextField("Price", value: $dish.price, format: .number)
                TextField("Description", text: $dish.description)
                TextField("Image Nmae", text: $dish.image)
                    .textInputAutocapitalization(.never)
            }
            Button("Add Dish") {
                dishes.append(dish)
                
                dish = Dish(
                    name: "",
                    category: "",
                    price: 0,
                    description: "",
                    image: ""
                )
                dismiss()
            }
        }
    }
}

#Preview {
    @State var sampleDish = Dish(
        name: "",
        category: "",
        price: 0,
        description: "",
        image: ""
    )
    @State var sampleDishes: [Dish] = []
    AddDishView(dish: $sampleDish, dishes: $sampleDishes)
}
