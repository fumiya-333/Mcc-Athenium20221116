//
//  ContentView.swift
//  MemberProject20221114
//
//  Created by 辻郁矢 on 2022/11/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("一覧画面", destination: ListView())
                    .padding()
                NavigationLink("新規登録", destination: CreateView())
                    .padding()
            }
        }
    }
}

struct ListView:View{
    @State var params: [String] = ["山田 太郎", "山田 花子", "辻 郁矢"]
    var body: some View {
        NavigationView{
            List() {
                ForEach(params, id: \.self) { param in
                    NavigationLink(destination: Text(param)) {
                        Text(param)
                    }
                }
            }
            .navigationTitle("会員管理")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct CreateView:View{
    @State var firstName = ""
    @State var lastName = ""
    var body: some View {
        TextField("姓", text: $firstName)
            .padding()
        TextField("名", text: $lastName)
            .padding()
        Button("新規登録") {
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
