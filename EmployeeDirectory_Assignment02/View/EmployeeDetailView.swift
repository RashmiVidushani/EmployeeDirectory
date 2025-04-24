    //
    //  EmployeeDetailView.swift
    //  EmployeeDirectory_Assignment02
    //
    //  Created by Rashmi Vidushani on 2025-03-16.
    //

    import SwiftUI

    struct EmployeeDetailView: View {
        let employee: Employee

        var body: some View {
            VStack {
                AsyncImage(url: URL(string: employee.photoURLLarge ?? "")) { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Color.gray
                }
                .frame(width: 250, height: 250)
                .clipShape(Circle())
                .padding(.bottom, 10)
                VStack{
                    ContactRow(label: "Name", value: employee.fullName)
                    ContactRow(label: "Phone", value: employee.phoneNumber ?? "N/A")
                    ContactRow(label: "Email", value: employee.emailAddress ?? "N/A")
                    ContactRow(label: "Biography", value: employee.biography ?? "N/A")
                    ContactRow(label: "Team", value: employee.team ?? "N/A")
                    ContactRow(label: "Type", value: employee.employeeType.displayString)
                }
               
               

                Spacer()
            }
            .navigationTitle("\(employee.fullName)")
            .navigationBarTitleDisplayMode(.inline)
            .padding()
        }
    }

    struct ContactRow: View {
        var label: String
        var value: String

        var body: some View {
            HStack(alignment: .top) {
                Text("\(label):")
                    .frame(width: 100, alignment: .leading)
                Text(value)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.vertical, 8)
            Divider()
        }
    }

