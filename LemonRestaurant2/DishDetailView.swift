//
//  DishDetailView.swift
//  LemonRestaurant2
//
//  Created by Christian-SDGKU on 25/07/26.
//

import SwiftUI

struct DishDetailView: View {
    let dish:Dish
    
    var body: some View {
        ScrollView {
            VStack {
                Image(dish.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                

                VStack(alignment: .leading, spacing: 8){
                    Text(dish.name)
                        .font(.largeTitle)
                        .bold()
                    
                    Divider()
                    
                    Text(dish.category)
                        .foregroundStyle(Color.secondary)
                    
                    Text("$\(dish.price, specifier: "%.2f")")
                        .foregroundStyle(.green)
                        .bold()
                    
                    Text(dish.description)
                        .foregroundStyle(.secondary)

                }
                .font(.system(size: 26))
                .padding(.leading, 5)
            }
        }
        .navigationTitle(dish.name)
    }
}

#Preview {
    DishDetailView(
        dish:Dish(name:"Pizza", category:"Main Courses", price: 11.99, description: "Classic Margherita pizza with tomato, mozzarella, and fresh basil.", image: "pizzaImage")
    )
}
