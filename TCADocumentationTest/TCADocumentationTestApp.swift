//
//  TCADocumentationTestApp.swift
//  TCADocumentationTest
//
//  Created by Xaver Lutz on 15.03.24.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCADocumentationTestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(store: Store(
                initialState: ContentFeature.State(),
                reducer: {
                    ContentFeature()
                }
            ))
        }
    }
}
