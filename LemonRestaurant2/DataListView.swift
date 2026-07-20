//
//  DataListView.swift
//  LemonRestaurant2
//
//  Created by Christian-SDGKU on 18/07/26.
//

import SwiftUI

struct DataListView: View {
    var students = ["Christian", "Brittany", "Stephen", "Leo"]
    var movies: [String] = ["Spiderman 1", "Toy Story", "Shrek", "Kung Fu Panda", "Avengers: Endgame"]
    
    // new array
    var body: some View {
        
        List{
            Section(header: Text("Students")){
                ForEach(students, id:\.self){ student in
                    Text(student)
                }
            }
            
            Section(header: Text("My Favorite Movies")){
                ForEach(movies, id:\.self){ movie in
                    Text(movie)
                }
            }
        }
        
        
        
    }
}

#Preview {
    DataListView()
}
