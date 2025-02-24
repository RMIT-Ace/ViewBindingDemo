//
//  ContentView.swift
//  BindingTest
//
//  Created by ace on 21/2/2025.
//

import SwiftUI


struct ContentView: View {
    @State private var testArray = [
        "A", "B", "C"
    ]
    var body: some View {
        NavigationStack {
            VStack {
                ForEach(Array(testArray.enumerated()), id: \.offset) { index, item in
                    NavigationLink(item) {
                        ModView(text: $testArray[index])
                    }
                }
            }
            .padding()
        }
    }
}

struct ModView: View {
    @Binding var text: String
    var body: some View {
        Text("Hello: \(text)")
            .onAppear {
                text = "Changed \(text)"
            }
    }
}

#Preview {
    ContentView()
}
