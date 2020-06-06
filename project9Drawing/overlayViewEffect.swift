//
//  overlayViewEffect.swift
//  project9Drawing
//
//  Created by bingyuan xu on 2020-06-05.
//  Copyright © 2020 bingyuan xu. All rights reserved.
//

import SwiftUI

struct overlayViewEffect: View {
  @State private var amount: CGFloat = 0.0
  
  var body: some View {
    VStack {
      //      ZStack {  // .screen 效果
      //        Circle()
      //          .fill(Color.red)
      //          .frame(width: 200 * amount)
      //          .offset(x: -50, y: -80)
      //          .blendMode(.screen)
      //        Circle()
      //                 .fill(Color.blue)
      //                 .frame(width: 200 * amount)
      //                 .offset(x: 50, y: -80)
      //                 .blendMode(.screen)
      //        Circle()
      //                 .fill(Color.green)
      //                 .frame(width: 200 * amount)
      //                 .blendMode(.screen)
      //      }
      //      Text("\(self.amount)")
      //
      Slider(value: $amount)
        .padding()
      
      Image("picture1")
        
        .resizable()
        .scaledToFit()
        .frame(width: 200, height: 200)
        .saturation(Double(amount))
        .blur(radius: (1 - amount) * 20)
      
      
      
      Image("picture1")
        .resizable()
        .colorMultiply(.red)
        .scaledToFit()
        .frame(width: 100, height: 100)
      ZStack {
        Image("picture1")
          .resizable()
          .scaledToFit()
        Rectangle()
          //          .background(Color.red)
          .fill(Color.red)
          .blendMode(.exclusion)
      }
      .frame(width: 100, height: 100)
      .clipped()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.black)
    .edgesIgnoringSafeArea(.all)
  }
}

struct overlayViewEffect_Previews: PreviewProvider {
  static var previews: some View {
    overlayViewEffect()
  }
}
