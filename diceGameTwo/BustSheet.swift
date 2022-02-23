//
//  BustSheet.swift
//  diceGameTwo
//
//  Created by Luca Salmi on 2022-02-23.
//

import SwiftUI

struct BustSheet: View{
    
    let n: Int
    
    var body: some View{
        
        ZStack{
            
            Color(red: 34/256, green: 123/256, blue: 55/256)
                .ignoresSafeArea()
            
            VStack{
                
                Text("Bust")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding()
                Text("\(n)")
                    .foregroundColor(.red)
                    .font(.title)
                    .padding()
                
            }
        }
    }
}

struct BustSheet_Previews: PreviewProvider {
    static var previews: some View {
        BustSheet(n:4)
    }
}
