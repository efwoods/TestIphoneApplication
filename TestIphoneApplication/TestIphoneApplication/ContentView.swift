//
//  ContentView.swift
//  TestIphoneApplication
//
//  Created by Evan Woods on 3/22/25.
//

import SwiftUI

struct ContentView: View {
    @State private var labelText = "Hello, iPhone!"
    
    var body: some View {
        VStack {
            Text(labelText)
                .font(.largeTitle)
                .padding()
            Button(action: {
                labelText = "Button Pressed!"
                
                // Trigger vibration when the button is pressed
                let feedbackGenerator = UIImpactFeedbackGenerator(style: .medium)
                feedbackGenerator.prepare() // Pepares the generator (optional but not required)
                feedbackGenerator.impactOccurred() // triggers the vibration
            }){
                Text("Press Me")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
