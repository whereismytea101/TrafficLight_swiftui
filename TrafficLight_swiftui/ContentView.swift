//
//  ContentView.swift
//  TrafficLight_swiftui
//
//  Created by Самир Кафаров on 18.10.2022.
//

import SwiftUI

struct ContentView: View {
    @State var redLightOpacity = 0.4
    @State var yellowLightOpacity = 0.4
    @State var greenLightOpacity = 0.4
    
    var body: some View {
        ZStack {
            // AnimatedBackground()
//                .ignoresSafeArea()
//                .blur(radius: 50)
            VStack {
                TrafficLightCicles().redCircle.foregroundColor(Color(red: 255,
                                                                     green: 0,
                                                                     blue: 0,
                                                                     opacity: redLightOpacity))
                TrafficLightCicles().redCircle.foregroundColor(Color(red: 255,
                                                                     green: 255,
                                                                     blue: 0,
                                                                     opacity: redLightOpacity))
                TrafficLightCicles().redCircle.foregroundColor(Color(red: 0,
                                                                     green: 255,
                                                                     blue: 0,
                                                                     opacity: redLightOpacity))
                
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
    }

func switchButtonPressed() {
//    if redLightOpacity < 1.0 && yellowLightOpacity < 1.0 && greenLightOpacity < 1.0 {
//        redLightOpacity = 1.0
//    } else if redLightOpacity == 1.0 {
//        redLightOpacity = 0.001
//        yellowLightOpacity = 1.0
//    } else if yellowLightOpacity == 1.0 {
//        yellowLightOpacity = 0.001
//        greenLightOpacity = 1.0
//    } else if greenLightOpacity == 1.0 {
//        greenLightOpacity = 0.001
//        redLightOpacity = 1.0
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
