//
//  VoiceInputView.swift
//  AccessibilitySandbox
//
//  Created by SCOTT CROWDER on 1/19/24.
//

import SwiftUI

struct VoiceInputView: View {
    var body: some View {
        Button("Button 1") {
            print("One was tapped")
        }
        .accessibilityInputLabels(["Tap", "Button", "George"])
        
        Button("Button 2") {
            print("Two was tapped")
        }
        .accessibilityInputLabels(["Green", "Yellow", "Minor"])
    }
}

#Preview {
    VoiceInputView()
}
