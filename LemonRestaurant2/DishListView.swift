//
//  DishListView.swift
//  LemonRestaurant2
//
//  Created by Christian-SDGKU on 27/07/26.
//

import SwiftUI

struct DishListView: View {
    
    @State private var selectedCategory:String = "All"
    
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
        Dish(
            name: "Wine",
            category: "Drinks",
            price: 10.00,
            description: "A glass of our finest wines",
            image: "wineImage"
        ),
    ]
    
    // computed property
    var filteredDishes:[Dish] {
        if selectedCategory == "All" {
            return dishes
        } else {
            return dishes.filter{ $0.category == selectedCategory}
        }
    }
    var body: some View {
        NavigationView {
            VStack(){
                Text("Find the Best Food Around You")
                    .font(.system(size: 35, weight: .bold))
                    .padding(10)
                    .multilineTextAlignment(.center)
                
                VStack(alignment: .leading) {
                    Text("Discover Food")
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(["All", "Breakfast", "Salads", "Main Courses", "Desserts", "Drinks"], id:\.self) { category in
                                Text(category)
                                    .padding(.vertical, 10)
                                    .padding(.horizontal, 15)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(
                                                selectedCategory == category
                                                    ? Color.green
                                                    : Color.gray.opacity(0.2)
                                            )
                                    )
                                    .animation(.easeIn(duration: 0.2))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.black, lineWidth: 2)
                                    )
                                    .onTapGesture {
                                        selectedCategory = category
                                    }
                            }
                        }
                    }
                }
                .font(.system(size: 25, weight: .bold))
                .padding()
                ScrollView {
                    LazyVGrid(columns: [GridItem(), GridItem()]) {
                        ForEach(filteredDishes, id:\.name) { dish in
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
                            .background(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(color: .gray.opacity(0.5), radius: 1, x:5, y: 5)
                            .padding(5)
                            .animation(.easeIn(duration: 0.2))
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
