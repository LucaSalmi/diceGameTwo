//
//  VictorySheet.swift
//  diceGameTwo
//
//  Created by Luca Salmi on 2022-02-23.
//

import SwiftUI

struct VictorySheet: View {
    
    let v: Int
    var body: some View {
        
        ZStack{
            
            Color(red: 34/256, green: 123/256, blue: 55/256)
                .ignoresSafeArea()
            
            VStack{
                
                Text("You Won")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding()
                Text("number of moves: \(v)")
                    .foregroundColor(.red)
                    .font(.title)
                    .padding()
                
            }
        }
    }
}

struct VictorySheet_Previews: PreviewProvider {
    static var previews: some View {
        VictorySheet(v: 4)
    }
}
