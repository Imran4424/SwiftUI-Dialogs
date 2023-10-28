//
//  ConfirmDialogView.swift
//  Dialogs
//
//  Created by Shah Md Imran Hossain on 28/10/23.
//

import SwiftUI

struct ConfirmDialogView: View {
    @State private var showingConfirmation = false
    @State private var backgroundColor = Color.white
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.black)
            Text("Hello, world!")
        }
        .frame(width: 300, height: 300)
        .background(backgroundColor)
        .onTapGesture {
            showingConfirmation = true
        }
        .confirmationDialog("Change background", isPresented: $showingConfirmation) {
            Button("Red") {
                backgroundColor = .red
            }
            
            Button("Green") {
                backgroundColor = .green
            }
            
            Button("Blue") {
                backgroundColor = .blue
            }
            
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Select a new color")
        }

    }
}


#Preview {
    ConfirmDialogView()
}
