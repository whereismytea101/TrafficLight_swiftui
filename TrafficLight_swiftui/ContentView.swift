//
//  ContentView.swift
//  TrafficLight_swiftui
//
//  Created by Самир Кафаров on 18.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redLightOpacity = 0.2
    @State private var yellowLightOpacity = 0.2
    @State private var greenLightOpacity = 0.2
    
    var body: some View {
        ZStack {
             AnimatedBackground()
                            .ignoresSafeArea()
                            .blur(radius: 50)
            VStack {
                TrafficLightCicles().redCircle.foregroundColor(Color(red: 255,
                                                                     green: 0,
                                                                     blue: 0,
                                                                     opacity: redLightOpacity))
                TrafficLightCicles().redCircle.foregroundColor(Color(red: 255,
                                                                     green: 255,
                                                                     blue: 0,
                                                                     opacity: yellowLightOpacity))
                TrafficLightCicles().redCircle.foregroundColor(Color(red: 0,
                                                                     green: 255,
                                                                     blue: 0,
                                                                     opacity: greenLightOpacity))
                
                Spacer()
                Button(action: {
                    switchButtonPressed()
                }, label: {
                    Text("Switch light")
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .foregroundColor(.white)
                        .frame(height: 44)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 4))
                        .shadow(color: .black.opacity(0.5),
                                radius: 20, x: 0.0, y: 10)
                })
            } .padding(50)
        }
        .padding()
    }

func switchButtonPressed() {
    if redLightOpacity < 1.0 && yellowLightOpacity < 1.0 && greenLightOpacity < 1.0 {
        redLightOpacity = 1.0
    } else if redLightOpacity == 1.0 {
        redLightOpacity = 0.3
        yellowLightOpacity = 1.0
    } else if yellowLightOpacity == 1.0 {
        yellowLightOpacity = 0.3
        greenLightOpacity = 1.0
    } else if greenLightOpacity == 1.0 {
        greenLightOpacity = 0.3
        redLightOpacity = 1.0
    }
  }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

