//
//  DrinkSizeSwitcher.swift
//  LemonRestaurant2
//
//  Created by Christian-SDGKU on 15/07/26.
//

import SwiftUI

struct DrinkSizeSwitcher: View {
    @State private var counter = 0
    @State private var size = 1
    // 1 = small
    // 2 = medium
    // 3 = large
    
    var body: some View {
        VStack {
            ZStack {
                switch size{
                case 1:
                    Text("🥤")
                        .font(.system(size: 100))
                case 2:
                    Text("🥤")
                        .font(.system(size: 140))
                case 3:
                    Text("🥤")
                        .font(.system(size: 170))
                default:
                    Text("Error")
                }
            }.frame(height: 190).animation(.easeInOut(duration: 0.2), value: size)
            
            switch size{
            case 1:
                Text("Small Drink").padding(10).font(.system(size: 30))
            case 2:
                Text("Medium").padding(10).font(.system(size: 30))
            case 3:
                Text("Large").padding(10).font(.system(size: 30))
            default :
                Text("Error")
            }
            
            HStack {
                Button("Small"){
                    size = 1
                }
                Button("Medium"){
                    size = 2
                }
                Button("Large"){
                    size = 3
                }
            }
        }
        
/*
        Text("\(counter)")
            .font(.system(size: 100))
            .animation(.easeOut(duration: 0.2), value: counter) // animation for numbers or strings
        
        HStack {
            Button("Decrease"){
                counter-=1
            }
            
            Button("Increase"){
                counter+=1
            }
        }
*/
    }
}

#Preview {
    DrinkSizeSwitcher()
}
