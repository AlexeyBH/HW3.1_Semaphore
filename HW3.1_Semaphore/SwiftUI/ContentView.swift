//
//  ContentView.swift
//  HW3.1_Semaphore
//
//  Created by Alexey Khestanov on 20.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            semaphore
                .padding()
            Spacer()
            button
                .padding()
        }
    }
    
    @State private var position = 0
    private let size: CGFloat = UIScreen.main.bounds.width / 3
    
    private var semaphore: some View {
        VStack {
            Light(color: .red, size: size, isOn: position == 1)
            Light(color: .yellow, size: size, isOn: position == 2)
            Light(color: .green, size: size, isOn: position == 3)
        }
    }
    
    private var button: some View {
        Button(
            action: { position = position >= 3 ? 1 : position + 1}
        ) {
            ZStack {
                Rectangle()
                    .foregroundColor(.blue)
                    .cornerRadius(10)
                    .frame(width: size * 2, height: size / 2, alignment: .bottom)
                Text("Switch the traffic lights")
                    .foregroundColor(.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
