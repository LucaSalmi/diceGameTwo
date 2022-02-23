//
//  MyButton.swift
//  diceGameTwo
//
//  Created by Luca Salmi on 2022-02-23.
//

import SwiftUI

struct MyButton: View {
    let s: String
    
    var body: some View {
        
        Button(action: {
            
        }, label: {
            Text("\(s)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
        })
            .background(.red)
            .cornerRadius(15.0)
    }
}

struct MyButton_Previews: PreviewProvider {
    static var previews: some View {
        MyButton(s: "roll")
    }
}
