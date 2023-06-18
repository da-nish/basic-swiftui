//
//  Lsection.swift
//  test1
//
//  Created by PropertyShare on 18/06/23.
//

import SwiftUI

struct Lsection: View {
    
//    let columns:[GridItem] = [
//        GridItem(.fixed(20), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(70), spacing: nil, alignment: nil),
//        GridItem(.fixed(80), spacing: nil, alignment: nil),
//    ]
    
    let columns:[GridItem] = [
        GridItem(.flexible(), spacing: 14, alignment: nil),
        GridItem(.flexible(), spacing: 14, alignment: nil),
        GridItem(.flexible(), spacing: 14, alignment: nil),
        GridItem(.flexible(), spacing: 14, alignment: nil),
    ]
    
    
    var body: some View {
        ScrollView{
            Rectangle()
                .fill(.green)
                .frame(width: 300, height: 300)
                
            LazyVGrid(columns: columns, spacing: 10){
                ForEach(0..<50){ index in
                    Rectangle().frame(width: 100, height: 160)
                }
                
            }
        }
    }
}

struct Lsection_Previews: PreviewProvider {
    static var previews: some View {
        Lsection()
    }
}
