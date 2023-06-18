//
//  LSafearea.swift
//  test1
//
//  Created by PropertyShare on 18/06/23.
//

import SwiftUI

struct LSafearea: View {
    var body: some View {
        //Option 1: without safe area
        ScrollView{
            Text("Heading").frame(width: 200, height:120).background(.blue)
            VStack{
                ForEach(0..<10){ index in
                    Rectangle().frame(height: 160).padding(.all, 20)
                }
            }
            .background(.blue)
        }
        .background(.red)
        .ignoresSafeArea()
        
        
        //Option 2: with safe area
        ZStack{
            Color.red.ignoresSafeArea()
            ScrollView{
                Text("Heading").frame(width: 200, height:120).background(.blue)
                VStack{
                    ForEach(0..<10){ index in
                        Rectangle().frame(height: 160).padding(.all, 20)
                    }
                }
                .background(.blue)
            }
        }
        
        //Option 3: same as option 2 but in different syntex
        ZStack{
            
            ScrollView{
                Text("Heading").frame(width: 200, height:120).background(.blue)
                VStack{
                    ForEach(0..<10){ index in
                        Rectangle().frame(height: 160).padding(.all, 20)
                    }
                }
                .background(.blue)
            }
        }
        .background(
            Color.red.ignoresSafeArea())
    }
}

struct LSafearea_Previews: PreviewProvider {
    static var previews: some View {
        LSafearea()
    }
}
