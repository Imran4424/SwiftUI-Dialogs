//
//  AlertDialogView.swift
//  Dialogs
//
//  Created by Shah Md Imran Hossain on 28/10/23.
//

import SwiftUI

struct AlertDialogView: View {
    @State private var showingAlert = false
    @State private var backgroundColor = Color.white
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .frame(width: 300, height: 300)
        .background(backgroundColor)
        .onTapGesture {
            showingAlert = true
        }
        .alert("Change background", isPresented: $showingAlert) {
            Button(backgroundColor == .white ? "Red" : "White") {
                backgroundColor = backgroundColor == .white ? .red : .white
            }
            
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Select a new color")
        }
    }
}

#Preview {
    AlertDialogView()
}
