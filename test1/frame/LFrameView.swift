//
//  LFrameView.swift
//  test1
//
//  Created by PropertyShare on 17/06/23.
//

import SwiftUI
import UIKit

struct LFrameView: View {
    var body: some View {
        VStack{
            Image(systemName: "heart.fill")
                .font(.system(size: 28))
                .frame(width: 60, height: 60)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [
                                Color(UIColor.green), Color(.green) ], startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .frame(width: 60, height: 60)
                        .shadow(color: .green, radius: 10, x: 0.0, y:10)
                        .overlay(
                            Circle()
                                .foregroundColor(.white)
                                .frame(width: 20, height: 20)
                                .overlay(
                                    Text("5")
                                        .foregroundColor(.green)
                                )
                            , alignment: .bottomTrailing
                        )
                )
            
            Text("Hello, World!")
                .background(.red)
                .frame(width: 200, height: 200, alignment: .top)
                .background(.green)
                .frame(width: 220, height: 220, alignment: .center)
                .background(.yellow)
                .frame(width: 240, height: 240, alignment: .bottom)
                .background(.pink)
            Text("Hello, World! asdfadsf dsaf asd fd saf dfas fas dfa sdf asdf asdf asd f asdf asdf adf ")
                .background(.red)
                .frame(maxWidth: .infinity, alignment: .top)
                .background(.green)
            Text("Hello, World!asdfasdf")
                .background(.red)
                .padding(10)
                .background(.green)
                .padding(.horizontal, 10)
                .background(.pink)
        }
        
    }
}

struct LFrameView_Previews: PreviewProvider {
    static var previews: some View {
        LFrameView()
    }
}
