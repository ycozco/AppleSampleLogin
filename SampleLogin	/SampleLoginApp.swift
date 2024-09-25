//
//  SampleLoginApp.swift
//  SampleLogin
//
//  Created by epismac on 25/09/24.
//
import SwiftData
import SwiftUI

@main
struct SampleLoginApp: App {
    @State var isLoggedin:Bool = false
    var body: some Scene {
        WindowGroup {
            if isLoggedin{
                HomeView()
            }else {
                LoginView(isLoggedin: $isLoggedin)
            }
        }
    }
}
	
		
