//
//  MenuView.swift
//  LemonRestaurant2
//
//  Created by Christian-SDGKU on 22/07/26.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Lemon Restaurant")
                    .font(.system(size: 50, weight: .heavy))
                    .multilineTextAlignment(.center)
                    .padding(.top, 40)
                    .foregroundStyle(.green)
                
                Text("Your favorite food")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundStyle(.green)
                
                Spacer()
                
                Image(systemName: "fork.knife.circle.fill")
                    .font(Font.system(size: 130))
                    .foregroundColor(.green)
                
                Spacer()
                
                VStack{
                    NavigationLink {
                        DrinkSizeSwitcher()
                    } label: {
                        HStack{
                            Image(systemName: "cup.and.saucer.fill")
                            Text("Drink Size").padding(.horizontal,70)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.green)
                        .foregroundStyle(.white)
                        .bold()
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        
                    }.padding(5)
                    
                    NavigationLink {
                        DataListView()
                    } label: {
                        HStack{
                            Image(systemName: "list.bullet")
                            Text("Data List").padding(.horizontal,70)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.green)
                        .foregroundStyle(.white)
                        .bold()
                        .clipShape(RoundedRectangle(cornerRadius: 15))

                    }.padding(5)
                    
                    NavigationLink {
                        RestaurantInfoView()
                    } label: {
                        HStack{
                            Image(systemName: "info")
                            Text("Restaurant Information").padding(.horizontal)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.green)
                        .foregroundStyle(.white)
                        .bold()
                        .clipShape(RoundedRectangle(cornerRadius: 15))

                    }.padding(5)
                    
                    NavigationLink {
                        BillCalculatorView()
                    } label: {
                        HStack{
                            Image(systemName: "plus.forwardslash.minus")
                            Text("Bill Calculator").padding(.horizontal,50)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.green)
                        .foregroundStyle(.white)
                        .bold()
                        .clipShape(RoundedRectangle(cornerRadius: 15))

                    }.padding(5)
                    
                    NavigationLink{
                        ReservationForm()
                    } label: {
                        HStack{
                            Image(systemName: "long.text.page.and.pencil")
                            Text("Reservation").padding(.horizontal,55)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.green)
                        .foregroundStyle(.white)
                        .bold()
                        .clipShape(RoundedRectangle(cornerRadius: 15))

                    }.padding(5)
                }
                .padding(.horizontal, 50)
                Spacer()
            }
//            .navigationTitle(Text("Home"))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.blue.opacity(0.3))
        }
        
    }
}

#Preview {
    MenuView()
}
