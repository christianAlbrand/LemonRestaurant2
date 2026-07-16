//
//  BillCalculatorView.swift
//  LemonRestaurant2
//
//  Created by Christian-SDGKU on 13/07/26.
//

import SwiftUI

struct BillCalculatorView: View {
    let restaurantName: String = "Lemon Restaurant"
    let adultPrice: Double = 15.00
    let childrenPrice: Double = 8.00
    let tax: Double = 0.08
    
    
    @State private var childrenCount: Int = 0
    @State private var adultsCount: Int = 2
    @State private var hasDiscount: Bool = false
    
    
    // base subtotal
    func calcSubTotal(adultsCount: Int, childrenCount: Int) -> Double {
        return Double(adultsCount) * adultPrice + Double(childrenCount) * childrenPrice
    }
    
    func calcDiscount(subtotal: Double, hasDiscount: Bool) -> Double {
        if !hasDiscount{
            return 0.0
        }
        if subtotal >= 100{
            return subtotal * 0.20
        }else{
            return subtotal * 0.10
        }
    }
    
    func calcTax(subtotal: Double, discount: Double) -> Double {
        return (subtotal - discount) * tax
    }
    
    func calcTotal(subtotal: Double, discount: Double, tax: Double) -> Double{
        return subtotal - discount + tax
    }
    
    func perPersonCalc(subtotal: Double, discount: Double, tax: Double, adultsCount: Int, childrenCount: Int) -> Double{
        return (subtotal - discount + tax) / Double(adultsCount + childrenCount)
    }
    
    
    
    var body: some View {
        
        let subtotal = calcSubTotal(adultsCount: adultsCount, childrenCount: childrenCount)
        
        let discount = calcDiscount(subtotal: subtotal, hasDiscount: hasDiscount)
        
        let tax = calcTax(subtotal: subtotal, discount: discount)
        
        let total = calcTotal(subtotal: subtotal, discount: discount, tax: tax)
        
        let perPerson = perPersonCalc(subtotal: subtotal, discount: discount, tax: tax, adultsCount: adultsCount, childrenCount: childrenCount)
        
        Form{
            // Header
            Section{
                HStack{
                    Image(systemName: "fork.knife")
                        .foregroundStyle(.green)
                        .font(.title)
                    VStack(alignment: .leading){
                        Text("Bill calculator")
                            .font(.title2)
                            .bold()
                        Text(restaurantName)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        
                    }
                    
                }
            }
            // Inputs
            Section{
                Stepper("Adults: \(adultsCount)",value: $adultsCount, in: 1...20)
                Stepper("Children: \(childrenCount)",value: $childrenCount, in: 0...20)
                Toggle("Apply discount",isOn: $hasDiscount)
                if hasDiscount{
                    Text("Discount %")
                        .foregroundStyle(.green)
                }
            }
            // breakdown
            
            Section(header:Text("Breakdown")){
                
                HStack{
                    Text("Subtotal").foregroundStyle(.secondary)
                    Spacer()
                    Text(subtotal, format: .currency(code: "USD")).bold()
                }
                
                if hasDiscount{
                    HStack{
                        Text("Discount").foregroundStyle(.secondary)
                        Spacer()
                        Text(discount, format: .currency(code: "USD")).bold()
                    }
                }
                
                HStack{
                    Text("Tax 8%").foregroundStyle(.secondary)
                    Spacer()
                    Text(tax, format: .currency(code: "USD")).bold()
                }
                
                Divider()
                
                HStack{
                    Text("Total")
                    Spacer()
                    Text(total, format: .currency(code: "USD")).bold()
                }
            }
            Section(header:Text("Per Person")){
                
                
                HStack{
                    Text("Person")
                    Spacer()
                    Text("\(adultsCount + childrenCount)").bold()
                }
                HStack{
                    Text("Each Pay")
                    Spacer()
                    Text(perPerson, format: .currency(code: "USD")).bold()
                }
            }
        }
       
    }
}

#Preview {
    BillCalculatorView()
}
