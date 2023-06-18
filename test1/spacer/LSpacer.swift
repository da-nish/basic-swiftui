//
//  LSpacer.swift
//  test1
//
//  Created by PropertyShare on 18/06/23.
//

import SwiftUI

struct LSpacer: View {
    var body: some View {
        HStack(spacing: 4){
            Spacer(minLength: 10)
            Rectangle()
                .fill(.red)
                .frame(width: 50, height: 50)
            Spacer()
            Rectangle()
                .fill(.green)
                .frame(width: 50, height: 50)
            Spacer()
            Rectangle()
                .fill(.blue)
                .frame(width: 50, height: 50)
            Spacer()
            
        }
        .background(.black)
    }
}

struct LSpacer_Previews: PreviewProvider {
    static var previews: some View {
        LSpacer()
    }
}
