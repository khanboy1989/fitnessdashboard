//
//  ProfileView.swift
//  FitnessDashboard
//
//  Created by Serhan Khan on 22/08/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        HStack(alignment: .center) {
            HStack(alignment: .top, spacing: 4) {
                Circle()
                    .foregroundColor(Color.mutedTeal).frame(width: 20, height: 20)
                
                ZStack {
                    // Profile Image with a circular shape
                    Image(uiImage: UIImage(named: "profileAvatar")!)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                    
                    // Circular stroke around the image
                    Circle()
                        .stroke(Color.mutedTeal, lineWidth: 3)
                        .frame(width: 120, height: 120)
                }
                
                
                Circle()
                    .foregroundColor(Color.mutedTeal)
                    .frame(width: 20, height: 20)
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text("User Name")
                    .font(.system(size: 20, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                Text("Daily Steps: 10,000")
                    .font(.system(size: 14, weight: .regular, design: .default))
                    .foregroundStyle(.white)
            }
        }
        
    }
}

#Preview {
    ZStack {
        LinearGradient(gradient: Gradient(colors: [
                    Color.lightGray,  // Light Gray
                    Color.darkGray   // Dark Gray
                ]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        ProfileView()
            .previewLayout(.sizeThatFits)
    }
    
}
