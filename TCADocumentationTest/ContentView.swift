//
//  ContentView.swift
//  TCADocumentationTest
//
//  Created by Xaver Lutz on 15.03.24.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {

    // MARK: - Properties

    @Bindable var store: StoreOf<ContentFeature>

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")

            Button("Navigate") { 
                store.send(.navigate)
            }
        }
        .padding()
    }
}

// #Preview {
//     ContentView()
// }
