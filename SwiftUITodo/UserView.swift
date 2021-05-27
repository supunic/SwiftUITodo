//
//  UserView.swift
//  SwiftUITodo
//
//  Created by 遠藤聖也 on 2021/05/27.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("こんにちは")
                    .font(.footnote)
                Text("Hiroaki Kaneda")
                    .font(.title)
            }
            .foregroundColor(Color.tTitle)
            Spacer()
            Image("profile")
                .resizable() // サイズ変更を可能にする
                .frame(width: 60, height: 60)
                .clipShape(Circle())
        }
        .padding()
        .background(Color.tBackground)
        
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            UserView()
            Circle()
        }
    }
}
