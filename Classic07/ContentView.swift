//
//  ContentView.swift
//  Classic07
//
//  Created by kai wen chen on 2021/10/1.
//

import SwiftUI

struct ContentView: View {
    
    @State var cardOnOff = false
    
    var body: some View {
        ZStack {
            NavigationView{
                List{
                    NavigationLink {
                        CardDemoView()
                    } label: {
                        Text("帶出CardDemoView")
                    }
                }
                .listRowBackground(Color.clear)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

