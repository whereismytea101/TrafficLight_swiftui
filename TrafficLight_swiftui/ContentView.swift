//
//  ContentView.swift
//  TrafficLight_swiftui
//
//  Created by Самир Кафаров on 18.10.2022.
//

import SwiftUI

struct ContentView: View {
    @State var redLightOpacity = 1
    @State var yellowLightOpacity = 1
    @State var greenLightOpacity = 1
    
    var body: some View {
        ZStack{
            AnimatedBackground()
                .ignoresSafeArea()
                .blur(radius: 50)
            VStack {
                CircleView()
                Spacer()
                Button {
                    switchButtonPressed()
                } label: {
                    Text("Switch light")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(height: 44)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .shadow(color: .black.opacity(0.5),
                                radius: 20, x: 0.0, y: 10)
                } .padding(70)
            }
            .padding()
        }
    }
}

func switchButtonPressed() {
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
