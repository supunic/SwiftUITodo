//
//  CheckBox.swift
//  SwiftUITodo
//
//  Created by 遠藤聖也 on 2021/05/27.
//

import SwiftUI

struct CheckBox: View {
    // @State → checkedというステータスをSwiftUIで管理するための宣言、これをつけることで変数の変更をリアクティブに画面に反映できる
//    @State var checked: Bool = false
    
    // @Binding アノテーション → 親のviewと値を共有したいときに使用する
    // .constant(false)でBinding型のBool値を定義できる
    @Binding var checked: Bool
    var body: some View {
        // バインディング構造体 → $マークが必要
        // 値を複数のviewで共有するためのもの
        // 別のviewでcheckedが使える
//        Toggle(isOn: $checked) {
//            Text("チェックボックス")
//        }
        Image(systemName: checked ? "checkmark.circle" : "circle")
            .onTapGesture {
                self.checked.toggle()
            }
    }
}

// PreviewProvider → Canvas へのプレビュー用のコード、実際のプログラムの実行には関係ない
// struct → 構造体の定義
struct CheckBox_Previews: PreviewProvider {
    static var previews: some View {
        // on　と off を同時に表示したい
        VStack {
            CheckBox(checked: .constant(false))
            CheckBox(checked: .constant(true))
        }
        // 2つのpreviewを表示する
//        Group {
//            CheckBox(checked: .constant(false))
//            CheckBox(checked: .constant(true))
//        }
    }
}
