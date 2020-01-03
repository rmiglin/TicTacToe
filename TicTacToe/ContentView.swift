//
//  ContentView.swift
//  TicTacToe
//
//  Created by Ross Miglin on 1/2/20.
//  Copyright © 2020 Ross Miglin. All rights reserved.
//

import SwiftUI

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
                    //.padding(.horizontal, 20.0)
                    .frame(width: 350.0, height: 350.0)
                    //.imageScale(Image("Board"))
                    //.background(Image("Board"), alignment: .center)
                //let image1: UIImage = UIImage("Background")
                //let image1 = UIImage("Board")
                //Image("Background").Scale.medium
                //Rectangle().fill()
                Spacer()
                }.background(Image("Board"))
            .padding(.bottom, 20)
            //let image1 = Image("Background").Scale.medium
            
            
            //View()
            //Image("Background")
            
            Spacer()
            //Text("Tic-Tac-Toe")
        }//.navigationBarTitle("Tic-Tac-Toe")
    }
}

 func resizeImage(image: UIImage, targetSize: CGSize) -> UIImage {
    let size = image.size

    let widthRatio  = targetSize.width  / size.width
    let heightRatio = targetSize.height / size.height

    // Figure out what our orientation is, and use that to form the rectangle
    var newSize: CGSize
    if(widthRatio > heightRatio) {
        newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
    } else {
        newSize = CGSize(width: size.width * widthRatio,  height: size.height * widthRatio)
    }

    // This is the rect that we've calculated out and this is what is actually used below
    let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)

    // Actually do the resizing to the rect using the ImageContext stuff
    UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
    image.draw(in: rect)
    let newImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()

    return newImage!
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
