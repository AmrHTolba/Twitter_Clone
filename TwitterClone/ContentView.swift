//
//  ContentView.swift
//  TwitterClone
//
//  Created by Amr El-Fiqi on 02/09/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .topLeading) {
                MainTabView()
                    .offset(x: showMenu ? 300 : 0)
                    .disabled(showMenu)
                    .toolbar(showMenu ? .hidden : .visible)
                
                if showMenu {
                    ZStack {
                        Color(.black).opacity(showMenu ? 0.25 : 0.00)
                    }.onTapGesture {
                        withAnimation(.easeInOut) {
                            showMenu = false
                        }
                    }
                    .ignoresSafeArea()
                }
                SideMenuView()
                    .frame(width: 300)
                    .offset(x: showMenu ? 0 : -300)
                    .background(showMenu ? Color(.systemBackground) : .clear)
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            withAnimation(.easeInOut) {
                                showMenu.toggle()
                            }
                        } label: {
                            
                            Circle()
                                .frame(width: 32, height: 32)
                        }
                }
            }
            .onAppear {
                showMenu = false
            }
        }
    }
}


#Preview {
    ContentView()
}
