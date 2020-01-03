//
//  ContentView.swift
//  TicTacToe
//
//  Created by Ross Miglin on 1/2/20.
//  Copyright © 2020 Ross Miglin. All rights reserved.
//

import SwiftUI

/*
struct BoardView: View{
    var body: some View{
        Text("")
    }

}
*/

struct ContentView: View {
    var body: some View {
        VStack{
            //Spacer()
            HStack{
                Text("Your turn:")
                Text("❌⭕️")
            }.padding(.top, 30)
            Spacer()
            HStack{
                Rectangle()
                    .frame(width: 350.0, height: 350.0)
                Spacer()
                }.background(Image("Board"))
            .padding(.bottom, 20)
            
            Spacer()
        }//.navigationBarTitle("Tic-Tac-Toe")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
