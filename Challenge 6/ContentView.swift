//
//  ContentView.swift
//  Challenge 6
//
//  Created by Sean Smith on 8/11/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        ZStack
        {
            Image("background")
                .ignoresSafeArea()
            VStack{
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
                
                
                Button(action:{
                    
                    //Generate a random number between 2 and 14
                    let playerRand = Int.random(in:2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                   //Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    if (playerRand > cpuRand){
                        playerScore += 1
                    }
                    else if (cpuRand > playerRand)
                    {
                        cpuScore += 1
                    }
                    
                   //Update the score
                    //playerScore += 1
                    //cpuScore += 1
                },label:{
                    Image("dealbutton")
                })
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                
                .foregroundColor(Color.white)
                Spacer()
                
                
               
                
            }
        }
            
            
           
            
            
       
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
