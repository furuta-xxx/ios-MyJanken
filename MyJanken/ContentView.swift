//
//  ContentView.swift
//  MyJanken
//
//  Created by furuta on 2024/11/19.
//

import SwiftUI

struct ContentView: View {
    // じゃんけんの結果を格納する変数（0=初期画面、1=グー、2=チョキ、3=パー）
    @State var jankenNumber: Int = 0
    
    var body: some View {
        VStack {
            Spacer()
            if jankenNumber == 0 {
                Text("これからじゃんけんをします！")
                    .padding(.bottom)
            } else if jankenNumber == 1 {
                Image(.gu)
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("グー")
                    .padding(.bottom)
            } else if jankenNumber == 2 {
                Image(.choki)
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("チョキ")
                    .padding(.bottom)
            } else {
                Image(.pa)
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("パー")
                    .padding(.bottom)
            }
            
            Button {
                var newJankenNumber = 0
                repeat {
                    newJankenNumber = Int.random(in: 1...3)
                } while jankenNumber == newJankenNumber
                jankenNumber = newJankenNumber
            } label: {
                Text("じゃんけんをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(.pink)
                    .foregroundStyle(.white)
            } // Button
        } // VStack
    }// body
} // ContentView

#Preview {
    ContentView()
}
