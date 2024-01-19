//
//  ValueOfControlsView.swift
//  AccessibilitySandbox
//
//  Created by SCOTT CROWDER on 1/19/24.
//

import SwiftUI

struct ValueOfControlsView: View {
    
    @State private var value: Int = 10
    
    var body: some View {
        
        Image(systemName: "globe")
            .resizable()
            .frame(width: 50, height: 50)
            .scaledToFill()
            .accessibilityHidden(true)
        
        Text("This text is serious")
            .accessibilityLabel("The screen reader says a funny joke.")
        
        Text("Use the buttons to change the value")
            .accessibilityHint("Swipe one more time to get to the counter buttons")
        
        VStack {
            Text("Value: \(value)")
            
            HStack {
                Button("Increment") {
                    addValue()
                }
                .buttonStyle(.borderedProminent)
                
                Button("Decrement") {
                    subtractValue()
                }
                .buttonStyle(.bordered)
            }
        }
        .accessibilityElement()
        .accessibilityHint("Swipe up or down to chang the values.")
        .accessibilityLabel("Value")
        .accessibilityValue("\(value) is a number")
        .accessibilityAdjustableAction { direction in
            switch direction {
            case .increment:
                addValue()
            case .decrement:
                subtractValue()
            default:
                print("Not supported yet")
            }
        }
    }
    
    func addValue() {
        value += 1
    }
    
    func subtractValue() {
        value -= 1
    }
}

#Preview {
    ValueOfControlsView()
}
