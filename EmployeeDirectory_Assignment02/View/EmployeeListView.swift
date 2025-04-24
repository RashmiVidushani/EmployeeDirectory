    //
    //  EmployeeListView.swift
    //  EmployeeDirectory_Assignment02
    //
    //  Created by Rashmi Vidushani on 2025-03-16.
    //

    import SwiftUI

    struct EmployeeListView: View {
        @StateObject private var viewModel = EmployeeViewModel()
        @State private var searchText = ""

        var filteredEmployees: [Employee] {
            if searchText.isEmpty {
                return viewModel.employees
            } else {
                return viewModel.employees.filter { $0.fullName.lowercased().contains(searchText.lowercased()) }
            }
        }

        var body: some View {
            NavigationView {
                VStack {
                    if viewModel.isLoading {
                        ProgressView("Loading employees...")
                    } else if let errorMessage = viewModel.errorMessage {
                        Text(errorMessage).foregroundColor(.red)
                    } else if filteredEmployees.isEmpty {
                        Text("No employees found")
                    } else {
                        List(filteredEmployees) { employee in
                            NavigationLink(destination: EmployeeDetailView(employee: employee)) {
                                EmployeeRowView(employee: employee)
                            }
                        }
                        .searchable(text: $searchText)
                        .refreshable {
                            viewModel.fetchEmployees()
                        }
                    }
                }
                .navigationTitle("Employee")
                .onAppear {
                    viewModel.fetchEmployees()
                }
            }
        }
    }

    struct EmployeeRowView: View {
        let employee: Employee

        var body: some View {
            HStack {
                AsyncImage(url: URL(string: employee.photoURLSmall ?? "")) { image in
                    image.resizable().scaledToFit()
                } placeholder: {
                    Color.gray
                }
                .frame(width: 50, height: 50)
                .clipShape(Circle())

                VStack(alignment: .leading) {
                    Text(employee.fullName).font(.headline)
                    Text(employee.team ?? "").font(.subheadline).foregroundColor(.gray)
                }
            }
        }
    }
