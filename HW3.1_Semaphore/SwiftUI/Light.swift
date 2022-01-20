//
//  Light.swift
//  HW3.1_Semaphore
//
//  Created by Alexey Khestanov on 20.01.2022.
//

import SwiftUI

struct Light: View {
    
    let color: Color
    let size: CGFloat
    var isOn: Bool
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: size, height: size, alignment: .center)
                .foregroundColor(color)
                .overlay(Circle().stroke(lineWidth: size / 50))
                .shadow(radius: size / 10)
            if !isOn {
                Circle()
                    .frame(width: size, height: size, alignment: .center)
                    .foregroundColor(.black)
                    .opacity(0.6)
            }
        }
    }

}

struct Light_Previews: PreviewProvider {
    
    static var previews: some View {
        VStack {
            Light(color: .green, size: UIScreen.main.bounds.width / 2, isOn: true)
            Light(color: .green, size: UIScreen.main.bounds.width / 2, isOn: false)
        }
    }
}
