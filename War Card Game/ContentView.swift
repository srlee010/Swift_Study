//
//  ContentView.swift
//  War Card Game
//
//  Created by Sora Lee on 2023/07/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore:Int = 0
    @State var cpuScore: Int = 0
    
    var body: some View {
        
        ZStack {
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 9.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            
                    }
                    Spacer()
                    VStack {
                         Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 9.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
                
            }
        }
        
    }
    
    
    func deal() {
        // Randomize the players card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        //Randomize the cpus card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        //udate the scroes
        if playerCardValue > cpuCardValue {
            // Add 1 to player score (playerScore = playerScore + 1)
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue {
            // Add 1 to cpu score
            cpuScore += 1
        }
    }
}

                       

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
