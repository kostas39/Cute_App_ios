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
    @State private var showClearButton: Bool = false 

    var body: some View {
        VStack {
            HStack {
                // Dog button
                Button(action: {
                    message = "You clicked on the cute dog!"
                    messageColor = .pink
                    showClearButton = true
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
                    showClearButton = true
                }) {
                    Image("capybara")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                }
                .padding()
            }

            Spacer()

          
            VStack(spacing: 20) {
                Text(message)
                    .font(.title2)
                    .foregroundColor(messageColor)
                    .multilineTextAlignment(.center)
                    .padding()

                if showClearButton {
                    Button(action: {
                        message = "Please touch on one of the animal icons"
                        messageColor = .black
                        showClearButton = false
                    }) {
                        Text("Clear Text")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: 200, minHeight: 50)
                            .background(messageColor)
                            .cornerRadius(25)
                            .padding(.horizontal)
                    }
                }
            }
            .padding(.bottom, 20)

            // Group of cats button
            Spacer()

            Button(action: {
                message = "You clicked on the group of cute cats!"
                messageColor = .blue
                showClearButton = true
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
