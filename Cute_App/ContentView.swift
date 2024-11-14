//
//  ContentView.swift
//  Cute_App
//
//  Created by Kostas Koliolios on 14/11/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var message: String = "Please touch on one of the animal icons"
    @State private var messageColor: Color = .black
    @State private var showClearButton: Bool = false // Track visibility of the Clear Text button

    var body: some View {
        VStack {
            HStack {
                // Dog button
                Button(action: {
                    message = "You clicked on the cute dog!"
                    messageColor = .pink
                    showClearButton = true // Make the Clear Text button visible
                }) {
                    Image("shiba_inu")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                }
                .padding()

                // Capybara button
                Button(action: {
                    message = "You clicked on the capybara!"
                    messageColor = .brown
                    showClearButton = true // Make the Clear Text button visible
                }) {
                    Image("capybara")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                }
                .padding()
            }

            Spacer()

            // Message label and Clear Text button closer together
            VStack(spacing: 20) { // Adjust spacing as needed
                Text(message)
                    .font(.title2)
                    .foregroundColor(messageColor)
                    .multilineTextAlignment(.center)
                    .padding()

                if showClearButton {
                    Button(action: {
                        message = "Please touch on one of the animal icons"
                        messageColor = .black
                        showClearButton = false // Hide the Clear Text button
                    }) {
                        Text("Clear Text")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .background(Color.blue)
                            .cornerRadius(5)
                            .padding(.horizontal)
                    }
                }
            }
            .padding(.bottom, 20) // Optional padding to create space before cats

            // Group of cats button
            Spacer()

            Button(action: {
                message = "You clicked on the group of cute cats!"
                messageColor = .blue
                showClearButton = true // Make the Clear Text button visible
            }) {
                Image("group_of_cats")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 200)
            }
            .frame(maxHeight: .infinity, alignment: .bottom)
            .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
