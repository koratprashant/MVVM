//
//  TictactoeApp.swift
//  Tictactoe
//
//  Created by korat prashant on 26/07/22.
//

import SwiftUI

@main
struct TictactoeApp: App {
    let game = TictactoeViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
