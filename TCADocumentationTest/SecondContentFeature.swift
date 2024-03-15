//
//  SecondContentFeature.swift
//  TCADocumentationTest
//
//  Created by Xaver Lutz on 15.03.24.
//

import Foundation
import ComposableArchitecture

struct SecondContentFeature: Reducer {

    // MARK: - State

    @ObservableState
    struct State: Equatable {}

    // MARK: - Action

    @CasePathable
    enum Action {}

    // MARK: - Reducer

    var body: some Reducer<State, Action> {
        Reduce { (state, action) in
            return .none
        }
    }
}
