//
//  LGridView.swift
//  test1
//
//  Created by PropertyShare on 18/06/23.
//

import SwiftUI

struct LGridView: View {
    
//    let columns:[GridItem] = [
//        GridItem(.fixed(20), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(70), spacing: nil, alignment: nil),
//        GridItem(.fixed(80), spacing: nil, alignment: nil),
//    ]
    
    let columns:[GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.adaptive(minimum: <#T##CGFloat#>)) Learn it
    ]
    
    
    var body: some View {
        LazyVGrid(columns: columns){
            ForEach(0..<50){ index in
                Rectangle()
            }
            
        }
    }
}

struct LGridView_Previews: PreviewProvider {
    static var previews: some View {
        LGridView()
    }
}
