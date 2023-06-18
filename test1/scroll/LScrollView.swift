//
//  LScrollView.swift
//  test1
//
//  Created by PropertyShare on 18/06/23.
//

import SwiftUI

struct LScrollView: View {
    var body: some View {
        //vertical
        ScrollView(showsIndicators: false, content: {
            VStack{
                ForEach(0..<10){ item in
                    Text("item count \(item)")
                        .frame(width: 100, height: 100)
                        .background(.green)
                }
            }
        })
        
        //horizontal
        ScrollView(.horizontal, showsIndicators: false, content: {
                HStack{
                    ForEach(0..<10){ item in
                        Text("item count \(item)")
                            .frame(width: 100, height: 100)
                            .background(.green)
                    }
                }
            })
        
        //horizontal+vertical
        ScrollView(showsIndicators: false, content: {
            VStack{
                ForEach(0..<10){ item in
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(0..<10){ item in
                                Text("item count \(item)")
                                    .frame(width: 100, height: 100)
                                    .background(.green)
                            }
                        }
                    }
                }
            }
        })
    }
}

struct LScrollView_Previews: PreviewProvider {
    static var previews: some View {
        LScrollView()
    }
}
