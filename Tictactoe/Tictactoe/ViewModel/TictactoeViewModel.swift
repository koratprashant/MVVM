//
//  TictactoeViewModel.swift
//  Tictactoe
//
//  Created by korat prashant on 04/08/22.
//

import SwiftUI

class TictactoeViewModel:ObservableObject {
    
    /// It helps to create model of the `TictactoeGame`
    /// - Returns: It returns the model
    static func createTictactoeGame() -> TictactoeGame<String> {
        TictactoeGame<String>(numberOfCard: 9)
    }
    
    @Published private var model : TictactoeGame<String> = createTictactoeGame()
    
    /// It is the list about model of `TictactoeGame`
    var cards: Array<TictactoeGame<String>.Card>{
        return model.cards;
    }
    
    // MARK : Intent(s)
    
    /// It helps to choose the card
    /// - Parameter card: It is a instance of card whicn need to be select
    func choose(_ card: TictactoeGame<String>.Card){
        objectWillChange.send()
        model.choose(card: card)
    }
    
}
