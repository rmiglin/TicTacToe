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
                EmptyView()
                    .frame(width: 350.0, height: 350.0)
                Spacer()
                }.background(Image("Board"))
            .padding(.bottom, 20)
            
            Spacer()
            //Score row
            HStack{
                Spacer()
                Button(action: {
                    print("Start Over")
                }) {
                    Text("Start Over")
                }
                Spacer()
                Text("Score ❌:0 ⭕️:0")
                Spacer()
                Button(action: {}){
                    Text("Info")
                }
                Spacer()
            }.padding(.bottom, 20)
 
        }//.navigationBarTitle("Tic-Tac-Toe")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
