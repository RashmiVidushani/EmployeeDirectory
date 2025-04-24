    //
    //  EmployeeDirectory_Assignment02App.swift
    //  EmployeeDirectory_Assignment02
    //
    //  Created by Rashmi Vidushani on 2025-03-16.
    //

    import SwiftUI

    @main
    struct EmployeeDirectory_Assignment02App: App {
        @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false
           
           var body: some Scene {
               WindowGroup {
                   if hasSeenOnboarding {
                       MainView()
                   } else {
                       OnboardingView()
                   }
               }
           }
       }

       struct MainView: View {
           var body: some View {
               TabView {
                   EmployeeListView()
                       .tabItem {
                           Label("Employees", systemImage: "person.3")
                       }
                   
                   SettingsView()
                       .tabItem {
                           Label("Settings", systemImage: "gear")
                       }
               }
               
           }
       }
