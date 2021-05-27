//
//  CheckBox.swift
//  SwiftUITodo
//
//  Created by 遠藤聖也 on 2021/05/27.
//

import SwiftUI

struct CheckBox: View {
    // @State → checkedというステータスをSwiftUIで管理するための宣言、これをつけることで変数の変更をリアクティブに画面に反映できる
    @State var checked: Bool = false
    var body: some View {
        // バインディング構造体 → $マークが必要
        // 値を複数のviewで共有するためのもの
        // 別のviewでcheckedが使える
        Toggle(isOn: $checked) {
            Text("チェックボックス")
        }
    }
}

struct CheckBox_Previews: PreviewProvider {
    static var previews: some View {
        CheckBox()
    }
}
