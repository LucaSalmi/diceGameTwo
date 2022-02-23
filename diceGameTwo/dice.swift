//
//  dice.swift
//  diceGameTwo
//
//  Created by Luca Salmi on 2022-02-23.
//

import SwiftUI

struct dice: View {
    
    let n: Int
    
    var body: some View{
        
        Image(systemName:"die.face.\(n)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
        
    }
}

struct dice_Previews: PreviewProvider {
    static var previews: some View {
        dice(n:3)
    }
}
