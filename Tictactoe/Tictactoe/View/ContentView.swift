//
//  ContentView.swift
//  Tictactoe
//
//  Created by korat prashant on 26/07/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel : TictactoeViewModel
    
    var body: some View {
        VStack{
            let threeColumnGrid = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
            LazyVGrid(columns: threeColumnGrid){
                ForEach(viewModel.cards) { card in
                    CardView(card: card)
                        .aspectRatio(2/3, contentMode: .fit)
                        .onTapGesture(count: 1) {
                            viewModel.choose(card)
                        }
                }
            }
        }.padding()
            .foregroundColor(.green)
    }
}

struct CardView: View {
    let card : TictactoeGame<String>.Card
    
    var body: some View {
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 10)
            if card.isFaceUp{
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content)
                    .font(.largeTitle)
            } else {
                shape.fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = TictactoeViewModel()
        ContentView(viewModel: game)
    }
}
