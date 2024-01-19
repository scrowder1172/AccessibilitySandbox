//
//  HideAndGroupAccessibilityItemsView.swift
//  AccessibilitySandbox
//
//  Created by SCOTT CROWDER on 1/19/24.
//

import SwiftUI

struct HideAndGroupAccessibilityItemsView: View {
    var body: some View {
        Image(decorative: "cat")
            .resizable()
            .scaledToFit()
            .accessibilityHidden(true)
        
        VStack {
            Text("Your score is")
            Text("1000")
                .font(.headline)
        }
        .accessibilityElement(children: .combine)
        
        VStack {
            Text("Your score is")
            Text("1000")
                .font(.headline)
        }
        .accessibilityElement()
        .accessibilityLabel("Your score is 1000")
    }
}

#Preview {
    HideAndGroupAccessibilityItemsView()
}
