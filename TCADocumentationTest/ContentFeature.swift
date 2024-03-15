//
//  ContentFeature.swift
//  TCADocumentationTest
//
//  Created by Xaver Lutz on 15.03.24.
//

import Foundation
import ComposableArchitecture

struct ContentFeature: Reducer {

    // MARK: - State

    @ObservableState
    struct State: Equatable {

        // - Navigation

        @Presents var destination: Destination.State?
    }

    // MARK: - Action

    @CasePathable
    enum Action {

        case navigate

        // - Navigation

        case destination(PresentationAction<Destination.Action>)
    }

    @Reducer(state: .equatable)
    enum Destination {
        case second(SecondContentFeature)
    }

    // MARK: - Reducer

    var body: some Reducer<State, Action> {
        Reduce { (state, action) in
            switch action {
            case .navigate:
                state.destination = .second(SecondContentFeature.State())
                return .none
            case .destination:
                return .none
            }
        }
    }
}
