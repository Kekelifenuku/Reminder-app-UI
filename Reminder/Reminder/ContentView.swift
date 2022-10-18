//
//  ContentView.swift
//  Reminder
//
//  Created by kekeli on 18/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       TabView {
           NavigationView{
               TaskListView()
           }
           
          
               .tabItem{
                   Image("check")
                       .renderingMode(.template)
               }
           
           InboxView()
            .tabItem{
               Image("Calender")
                    .renderingMode(.template)
           }
           
           ReminderView() .tabItem{
               Image("godge")
                   .renderingMode(.template)
           }
           
           SettingsView() .tabItem{
               Image("Settings")
                   .renderingMode(.template)
           }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
