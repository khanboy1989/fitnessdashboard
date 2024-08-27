//
//  ProfileView.swift
//  FitnessDashboard
//
//  Created by Serhan Khan on 22/08/2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    @State private var animate = false

    var body: some View {
        HStack(alignment: .top) {
            HStack(alignment: .top, spacing: 4) {
                Circle()
                    .foregroundColor(Color.mutedTeal).frame(width: 10, height: 10)
                
                ZStack {
                    // Profile Image with a circular shape
                    Image(uiImage: UIImage(named: "profileAvatar")!)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                    
                    // Circular stroke around the image
                    Circle()
                        .stroke(Color.mutedTeal, lineWidth: 3)
                        .frame(width: 100, height: 100)
                }
                Circle()
                    .foregroundColor(Color.mutedTeal)
                    .frame(width: 10, height: 10)
            }
            
            VStack(alignment: .leading, spacing: 8) {
               
                    
                HStack{
                    Image(systemName: "figure.walk")
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(.white)
                        .frame(width: 20, height: 20)
                    
                    Text("Target: 10,000")
                        .font(.system(size: 14, weight: .regular, design: .default))
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Button {
                        animate.toggle()
                    } label: {
                        Image(systemName: "pencil")
                            .foregroundStyle(.white)
                            .symbolEffect(.bounce, value: animate)
                            .font(.title3)
                    }
                }
                
                
                CustomProgressBar()
            }
        }.padding()
    }
}

#Preview {
    ZStack {
        LinearGradient(gradient: Gradient(colors: [
            Color.lightGray,  // Light Gray
            Color.darkGray   // Dark Gray
        ]), startPoint: .top, endPoint: .bottom)
        .edgesIgnoringSafeArea(.all)
        ProfileHeaderView()
            .previewLayout(.sizeThatFits)
    }
    
}
