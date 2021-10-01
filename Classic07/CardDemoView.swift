//
//  CardDemoView.swift
//  Classic07
//
//  Created by kai wen chen on 2021/10/1.
//

import SwiftUI

struct CardDemoView: View {
    
    @State var cardOnOff = false
    
    var body: some View {
        ZStack {
            VStack {
                Button {
                    cardOnOff.toggle()
                } label: {
                    Text("呼叫我的卡片")
                }
                
                NavigationLink {
                    Text("CardDemoView往下的頁面是我")
                } label: {
                    Text("點我往下走")
                }

            }
            
            Card(cardOnOff: $cardOnOff)
                .offset(y:cardOnOff ? 0 : 600) //true : false
                .animation(.spring(response: 0.6, dampingFraction: cardOnOff ? 0.7 : 0.3, blendDuration: 10))
        }
    }
}

struct CardDemoView_Previews: PreviewProvider {
    static var previews: some View {
        CardDemoView()
    }
}
