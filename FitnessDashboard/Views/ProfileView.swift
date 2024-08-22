//
//  ProfileView.swift
//  FitnessDashboard
//
//  Created by Serhan Khan on 22/08/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
       
        HStack {
            Image(uiImage: UIImage(named: "profileAvatar")!)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .cornerRadius(20)
        }
    }
}

#Preview {
    ProfileView().previewLayout(.sizeThatFits)
}
