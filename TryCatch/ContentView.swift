//
//  ContentView.swift
//  TryCatch
//
//  Created by 최형우 on 2023/08/05.
//

import SwiftUI

struct ContentView: View {
    @State var tabSelection = 0
    var body: some View {
        TabView(selection: $tabSelection) {
            Text("홈")
                .tabItem {
                    Image(tabSelection == 0 ? "home-selected" : "home")
                    Text("홈")
                        .foregroundColor(tabSelection == 0 ? .blue500 : .gray500)
                }

            CampaignView()
                .tabItem {
                    Image(tabSelection == 1 ? "campaign-selected" : "campaign")
                    Text("안내 문자")
                        .foregroundColor(tabSelection == 1 ? .blue500 : .gray500)
                }
        
            Text("내 주변")
                .tabItem {
                    Image(tabSelection == 2 ? "location-selected" : "location")
                    Text("내 주변")
                        .foregroundColor(tabSelection == 2 ? .blue500 : .gray500)
                }

            Text("전체")
                .tabItem {
                    Image(tabSelection == 3 ? "dehaze-selected" : "dehaze")
                    Text("전체")
                        .foregroundColor(tabSelection == 3 ? .blue500 : .gray500)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
