//
//  ContentView.swift
//  diceGameTwo
//
//  Created by Luca Salmi on 2022-02-23.
//

import SwiftUI


struct ContentView: View {
    
    @State var diceNumber1 = 3
    @State var diceNumber2 = 3
    @State var sum = 0
    @State var totalSum = 0
    @State var busted = false
    @State var numberOfRounds = 0
    @State var victory = false
    
    var body: some View {
        
        ZStack{
            
            Color(red: 34/256, green: 123/256, blue: 55/256)
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Text("Points: \(totalSum)")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                  Spacer()
                HStack{
                    
                    dice(n: diceNumber1)
                    dice(n: diceNumber2)
                    
                }
                .onAppear(){
                    
                    newValues()
                }
                
                Spacer()
                
                HStack{
                    
                Button(action: {
                    
                    roll()
                    
                }, label: {
                    Text("Roll")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                })
                    .background(.red)
                    .cornerRadius(15.0)
                    
                    Button(action: {
                        
                        savePoints()
                        
                    }, label: {
                        Text("Save")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding()
                    })
                        .background(.red)
                        .cornerRadius(15.0)
                }
                Spacer()
            }
        }
        .sheet(isPresented: $busted, onDismiss: {
            sum = 0
            totalSum = 0
            numberOfRounds = 0
        }){
            BustSheet(n: sum)
        }
        .sheet(isPresented: $victory, onDismiss: {
            sum = 0
            totalSum = 0
            numberOfRounds = 0
        }, content: {
            VictorySheet(v: numberOfRounds)
        })
    }
    
    func roll(){
        
        numberOfRounds += 1
        newValues()
        sum += diceNumber1 + diceNumber2
        totalSum += diceNumber1 + diceNumber2
        
        if sum >= 21{
            
            busted = true
            
        }
        
        if totalSum >= 100{
            
            victory = true
            
        }
    }
    
    func newValues(){
        
        diceNumber1 = Int.random(in: 1...6)
        diceNumber2 = Int.random(in: 1...6)
    }
    
    func savePoints(){
        
        sum = 0
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //BustSheet()
    }
}
