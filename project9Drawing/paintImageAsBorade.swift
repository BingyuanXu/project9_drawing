//
//  paintImageAsBorade.swift
//  project9Drawing
//
//  Created by bingyuan xu on 2020-06-05.
//  Copyright © 2020 bingyuan xu. All rights reserved.
//

import SwiftUI

struct paintImageAsBorade: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
          .frame(width: 300, height: 300)
//      .background(Image(systemName: "heart"))
      
          .border(ImagePaint(image: Image("picture1"),  sourceRect: CGRect(x: 0, y: 0, width: 1, height: 1), scale: 0.08), width: 40)
      
//func border<S>(_ content: S, width: CGFloat = 1) -> some View where S : ShapeStyle
      
    }
}

struct paintImageAsBorade_Previews: PreviewProvider {
    static var previews: some View {
        paintImageAsBorade()
    }
}
