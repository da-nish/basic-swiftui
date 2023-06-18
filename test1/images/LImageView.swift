//
//  LImageView.swift
//  test1
//
//  Created by PropertyShare on 17/06/23.
//

import SwiftUI

struct LImageView: View {
    var body: some View {
        VStack(alignment: .leading){
            Image("messi")
                .resizable()
                .frame(width: 300, height: 160)
                .scaledToFill()
            Image("google")
                .resizable()
                .renderingMode(.template)
                .foregroundColor(.red)
                .frame(width: 80, height: 80)
                .scaledToFill()
            Text("=============================")
            
            Image(systemName: "heart.fill")
            
        }
    }
}

struct LImageView_Previews: PreviewProvider {
    static var previews: some View {
        LImageView()
    }
}
