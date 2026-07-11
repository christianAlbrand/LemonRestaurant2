//
//  AboutView.swift
//  lemonRestaurant
//
//  Created by Christian-SDGKU on 07/07/26.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack{
            Text("About Little Lemon").font(.title).foregroundStyle(.green).bold()
                .padding()
            Text("Little Lemon is a cozy Mediterranean restaurant serving fresh and healthy dishes. Our goal is to bring people together through great food and warm hospitality.").multilineTextAlignment(.center)
        }.padding()
        HStack(spacing: 20){
            Image(systemName: "fork.knife")
            Image(systemName: "leaf")
            Image(systemName: "map")
                
        }.font(.system(size: 40)).foregroundStyle(.yellow)
        
    }
}

#Preview {
    AboutView()
}
