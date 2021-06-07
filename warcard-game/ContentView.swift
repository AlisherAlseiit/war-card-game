//
//  ContentView.swift
//  warcard-game
//
//  Created by Алишер Алсейт on 01.06.2021.
//

import SwiftUI

struct ContentView: View {
    
   @State private var playerCard = "card5"
   @State private var cpuCard = "card9"
   @State private var playerScore = 0
   @State private var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Spacer()
            Image("background").resizable().ignoresSafeArea()
            
            VStack{
                
                Image("logo")
                    
                Spacer()
                
                HStack{
                    
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if(playerRand > cpuRand) {
                        playerScore += 1
                    } else {
                        cpuScore += 1
                    }
                    
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                }
                Spacer()
            }
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro Max")
    }
}
