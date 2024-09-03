//
//  ProfileView.swift
//  TwitterClone
//
//  Created by Amr El-Fiqi on 02/09/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment:.leading) {
            
            headerView
            
            actionButtons
            
            userInfoDetails
            
            
            Spacer()
        }
    }
}

#Preview {
    ProfileView()
}


// MARK: - Extensions

extension ProfileView {
    var headerView: some View {
        ZStack(alignment:.bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()
               
            VStack {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .offset(x:1, y: 7)
                        .foregroundColor(.white)
                }
                
                Circle()
                    .frame(width: 72,height: 72)
                    .offset(x:16, y: 26)
            }
        }.frame(height: 96)
    }
    
    var actionButtons: some View {
        HStack (spacing: 12) {
            Spacer()
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 120,height: 32)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
                    .foregroundStyle(.black)
            }
        }
        .padding(.trailing,20)
    }
    
    var userInfoDetails: some View {
        VStack (alignment: .leading, spacing: 4){
            
            // Name and id
            HStack {
                Text("Amr Hesham")
                    .font(.title3).bold()
                
                Image(systemName: "checkmark.seal.fill")
                    .foregroundStyle(Color(.systemBlue))
            }
            
            Text("@amrhdev")
                .font(.subheadline)
                .foregroundStyle(Color.gray)
            
            Text("I am better than you")
                .padding(.vertical)
            
            // Location and website
            HStack (spacing:30) {
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                        .bold()
                    
                    Text("The Future")
                }
                .foregroundStyle(Color.gray)
                .font(.caption)
                
                HStack {
                    Image(systemName: "link")
                        .bold()
                    
                    Text("www.github.com/amrhtolba")
                }
                .foregroundStyle(Color.gray)
                .font(.caption)
            }
            
            
            // Followers and Following
            HStack (spacing:30) {
                HStack {
                    Text("26")
                        .foregroundStyle(Color.black)
                        .bold()
                    
                    Text("Following")
                }
                .foregroundStyle(Color.gray)
                .font(.caption)
                
                HStack {
                    Text("7.8M")
                        .foregroundStyle(Color.black)
                        .bold()
                    
                    Text("Followers")
                }
                .foregroundStyle(Color.gray)
                .font(.caption)
            }
            .padding(.vertical)
        }
        .padding(.horizontal)
    }
}
