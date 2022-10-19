//
//  Circle.swift
//  TrafficLight_swiftui
//
//  Created by Самир Кафаров on 18.10.2022.
//

import SwiftUI

struct CircleView: View {
//    var color: Color
    
    
    var body: some View {
        VStack {
            Color(.red)
                .frame(width: 150, height: 150)
                .cornerRadius(80)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 20)
                .padding(5)
            Color(.yellow)
                .frame(width: 150, height: 150)
                .cornerRadius(80)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 20)
                .padding(5)
            Color(.green)
                .frame(width: 150, height: 150)
                .cornerRadius(80)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 20)
                .padding(5)
        }
    }
}





struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
