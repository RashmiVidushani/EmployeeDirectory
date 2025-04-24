    //
    //  EmployeeViewModel.swift
    //  EmployeeDirectory_Assignment02
    //
    //  Created by Rashmi Vidushani on 2025-03-16.
    //

    import Foundation

    class EmployeeViewModel: ObservableObject {
        @Published var employees: [Employee] = []
        @Published var isLoading = false
        @Published var errorMessage: String?

        private let url = URL(string: "https://s3.amazonaws.com/sq-mobile-interview/employees.json")!

        func fetchEmployees() {
            isLoading = true
            errorMessage = nil
            
            URLSession.shared.dataTask(with: url) { data, response, error in
                DispatchQueue.main.async {
                    self.isLoading = false

                    if let error = error {
                        self.errorMessage = error.localizedDescription
                        return
                    }

                    guard let data = data else {
                        self.errorMessage = "Invalid data"
                        return
                    }

                    do {
                        let decodedData = try JSONDecoder().decode([String: [Employee]].self, from: data)
                        self.employees = decodedData["employees"] ?? []
                    } catch {
                        self.errorMessage = "Failed to decode data"
                    }
                }
            }.resume()
        }
    }
