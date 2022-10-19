//
//  RedYellowGreen.swift
//  TrafficLight_swiftui
//
//  Created by Самир Кафаров on 19.10.2022.
//

import SwiftUI

struct TrafficLightCicles: View {
    
    var redCircle: some View {
        Circle()
            .frame(width: 150, height: 150)
            .cornerRadius(75)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 20)
            .padding(5)
    }
    var yellowCircle: some View {
        Circle()
            .frame(width: 150, height: 150)
            .cornerRadius(75)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 20)
            .padding(5)
    }
    var greenCircle: some View {
        Circle()
            .frame(width: 150, height: 150)
            .cornerRadius(75)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 20)
            .padding(5)
    }
    
    
    var body: some View {
        VStack {
            redCircle
            yellowCircle
            greenCircle
        }
    }
    
    private func setCircle() -> some View{
        return Circle()
                .frame(width: 150, height: 150)
                .overlay(Circle().stroke(.white, lineWidth: 3))
                .frame(width: 150, height: 150)
                .cornerRadius(75)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 20)
                .padding(5)
    }
}

struct RedYellowGreenView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightCicles()
    }
}
