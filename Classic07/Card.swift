//
//  Card.swift
//  Classic07
//
//  Created by kai wen chen on 2021/10/1.
//

import SwiftUI

struct Card: View {
    
    @Binding var cardOnOff:Bool
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "suit.heart.fill")
                
                Text("SwiftUI is easy to use")
            }
            Text("Hello, world!")
                .padding()
        }
        .frame(maxHeight: .infinity, alignment: .center)
        .frame(maxWidth:.infinity)
        .background(Color.red)
        .foregroundColor(.white)
        .cornerRadius(16)
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            cardOnOff.toggle()
        }
        
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(cardOnOff: .constant(false))
    }
}
