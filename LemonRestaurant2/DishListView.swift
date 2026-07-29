//
//  DishListView.swift
//  LemonRestaurant2
//
//  Created by Christian-SDGKU on 27/07/26.
//

import SwiftUI

struct DishListView: View {
    
    @State private var dishes: [Dish] = [
        Dish(
            name: "Pancake",
            category: "Breakfast",
            price: 7.25,
            description: "Fluffy pancakes topped with butter and maple syrup",
            image: "pancakeImage"
        ),
        Dish(
            name: "Omelette",
            category: "Breakfast",
            price: 6.50,
            description: "Two eggs, bacon, and our ever-popular sausage",
            image: "omeletteImage"
        ),
        Dish(
            name: "Pasta",
            category: "Main Courses",
            price: 14.50,
            description: "Spaghetti with marinara sauce, meatballs, and parmesan",
            image: "pastaImage"
        ),
        Dish(
            name: "Pizza",
            category: "Main Courses",
            price: 12.50,
            description: "Thick crust with tomato sauce, mozzarella, and your choice of toppings",
            image: "pizzaImage"
        ),
        Dish(
            name: "Salad",
            category: "Salads",
            price: 8.50,
            description: "Mixed greens, cucumber, tomatoes, and avocado",
            image: "saladImage"
        ),
        Dish(
            name: "Fries",
            category: "Desserts",
            price: 3.50,
            description: "Crispy on the outside, fluffy on the inside",
            image: "friesImage"
        ),
        Dish(
            name: "Chees cake",
            category: "Desserts",
            price: 4.50,
            description: "Light and fluffy",
            image: "cheesecakeImage"
        ),
        Dish(
            name: "Cake",
            category: "Desserts",
            price: 5.50,
            description: "Light and fluffy",
            image: "cakeImage"
        ),
    ]
    var body: some View {
        NavigationView {
            VStack(){
                Text("Find the Best Food Around You")
                    .font(.system(size: 35, weight: .bold))
                    .padding(10)
                    .multilineTextAlignment(.center)
                ScrollView {
                    LazyVGrid(columns: [GridItem(), GridItem()]) {
                        ForEach(dishes, id:\.name) { dish in
                            VStack {
                                Image(dish.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(height: 100)
                                    .clipped()
                                
                                VStack {
                                    Text(dish.name)
                                    
                                    Text(dish.description)
                                        .lineLimit(2)
                                    
                                    Text("\(dish.price, specifier: "%.2f")")
                                }
                            }
                            .background(.black.opacity(0.07))
                            .shadow(color: .green.opacity(0.2), radius: 30, x:33, y: 40)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .padding(5)
                        }
                    }
                    
                }
            }
        }

    }
}

#Preview {
    DishListView()
}
