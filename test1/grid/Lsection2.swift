//
//  Lsection2.swift
//  test1
//
//  Created by PropertyShare on 18/06/23.
//

import SwiftUI

struct Lsection2: View {
    
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
            LazyVGrid(
                columns: columns,
                alignment: .center, spacing: 4,
                pinnedViews: [.sectionHeaders]
                
                
            ){
                
                Rectangle()
                    .fill(.green)
                    .frame(width: .infinity, height: 300)
                
                
                Section(header: Text("Image selector").background(.blue)){
                    ForEach(0..<20){ index in
                        Rectangle().frame(width: 100, height: 160)
                    }
                    
                }
                Section(header: Text("Image selector").background(.red)){
                    ForEach(0..<20){ index in
                        Rectangle().frame(width: 100, height: 160)
                    }
                    
                }
                
                
                
                
            }
        }
//        ScrollView{
//            Rectangle()
//                .fill(.green)
//                .frame(width: 300, height: 300)
//
//            LazyVGrid(columns: columns, spacing: 10){
//                ForEach(0..<50){ index in
//                    Rectangle().frame(width: 100, height: 160)
//                }
//
//            }
//        }
    }
}

struct Lsection2_Previews: PreviewProvider {
    static var previews: some View {
        Lsection2()
    }
}
