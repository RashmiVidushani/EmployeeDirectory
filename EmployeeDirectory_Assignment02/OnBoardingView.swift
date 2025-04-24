    //
    //  OnBoardingView.swift
    //  EmployeeDirectory_Assignment02
    //
    //  Created by Rashmi Vidushani on 2025-03-16.
    //

    import SwiftUI

    struct OnboardingView: View {
        @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false

        let skyBlue = Color(red: 21 / 255, green: 59 / 255, blue: 173 / 255)
        let lightBlue = Color(red: 200 / 255, green: 212 / 255, blue: 247 / 255)

        var body: some View {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [skyBlue, lightBlue]),
                    startPoint: .bottomLeading,
                    endPoint: .topTrailing
                )
                .ignoresSafeArea()

                VStack {
                    Text("Employee List")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding(10)

                    Spacer()

                    ZStack {
                        Circle()
                            .frame(width: 150, height: 150)
                            .shadow(color: .white, radius: 30)
                            .foregroundColor(skyBlue)
                            .padding()

                        Text("LOGO")
                            .font(.title)
                            .foregroundColor(lightBlue)
                    }

                    Spacer()

                    VStack {
                        Text("This app allows you to view a list of employees along with their details such as name, contact info, team, and biography. All data is fetched from a sample API hosted on AWS...")
                            .padding(10)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.white)
                    }

                   

                    Button(action: {
                        hasSeenOnboarding = true
                    }) {
                        Text("Continue")
                            .frame(maxWidth: .infinity)
                    }
                    .padding()
                    .background(Color.white)
                    .foregroundColor(skyBlue)
                    .cornerRadius(10)
                    .padding(10)
                }
                .frame(maxHeight: 700, alignment: .top)
            }
        }
    }
