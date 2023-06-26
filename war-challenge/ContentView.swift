//
//  ContentView.swift
//  war-challenge
//
//  Created by Denis Coder on 6/25/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea()
            VStack{
                Spacer()
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
                    
                    playCards();
                    
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").foregroundColor(.white).bold()
                        Text(String(playerScore)).foregroundColor(.white).font(.largeTitle).padding(.top, 13)
                            .bold()
                }
                    Spacer()
                    VStack{
                    Text("CPU").foregroundColor(.white).bold()
                        Text(String(cpuScore)).foregroundColor(.white).font(.largeTitle).padding(.top, 13)
                            .bold()
            }
                    Spacer()
                }
                Spacer()
                
            }
        }
    }
    
    func playCards(){
        
        //get random number between 2 and 14
            let playerHand = Int.random(in: 2...14)
            let cpuHand = Int.random(in: 2...14)
            
            playerCard = "card" + String(playerHand)
            cpuCard = "card" + String(cpuHand)
            
            if(playerHand > cpuHand){
                playerScore += 1;
            }else if (playerHand == cpuHand){
                playerScore += 1;
                cpuScore += 1;
            }else{
                cpuScore += 1;
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
