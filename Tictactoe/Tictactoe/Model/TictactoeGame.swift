//
//  TictactoeGame.swift
//  Tictactoe
//
//  Created by korat prashant on 03/08/22.
//

import Foundation

struct TictactoeGame<CardContent> {
    private(set) var cards: Array<Card>
    
    // MARK: - Initilaiser
    
    /// It returns the model instance of the `TictactoeGame` with any generic type
    /// - Parameter numberOfCard: It is a integer as number of card to be shown in the game
    init(numberOfCard: Int){
        cards = Array<Card>()
        for index in 0..<numberOfCard {
            let card = Card(id: index)
            cards.append(card);
        }
    }
    
    // MARK: - Public
    
    /// It helps to select the card during the game
    /// - Parameter card: the card to be select
    mutating func choose(card:Card){
        let chosenIndex = index(of: card)
        guard cards[chosenIndex].isFaceUp == false else {
            return
        }
        cards[chosenIndex].isFaceUp = true
        
        let selectedCardsCount = countOfSelectedcards()
        
        if (selectedCardsCount) % 2 == 0 {
            cards[chosenIndex].content = "❌" as! CardContent
        } else {
            cards[chosenIndex].content = "⭕️" as! CardContent
        }
    }
    
    // MARK: - Private
    
    /// It returns the index of card.
    /// - Parameter card: It is a card to find the index
    /// - Returns: It returns the integer as a inedx of the card
    func index(of card :Card) -> Int{
        for index in 0..<cards.count {
            if cards[index].id == card.id {
                return index
            }
        }
        return 0
    }
    
    /// It returns the count of the selected cards.
    /// - Returns: It returns the interger as selectied card count
    func countOfSelectedcards () -> Int {
        var selectedCardCount: Int = 0;
        for index in 0..<cards.count {
            if cards[index].isFaceUp == true {
                selectedCardCount = selectedCardCount + 1
            }
        }
        return selectedCardCount;
    }
    
    /// It is a structure for the card.
    struct Card:Identifiable{
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent = "" as! CardContent
         var id: Int
    }
}
