    //
    //  Employee.swift
    //  EmployeeDirectory_Assignment02
    //
    //  Created by Rashmi Vidushani on 2025-03-16.
    //

    import Foundation

    struct Employee: Codable, Identifiable {
        let id = UUID()
        let uuid: String
        let fullName: String
        let phoneNumber: String?
        let emailAddress: String?
        let biography: String?
        let photoURLSmall: String?
        let photoURLLarge: String?
        let team : String?
        let employeeType: EmployeeType

        enum CodingKeys: String, CodingKey {
            case uuid, fullName = "full_name",
                 phoneNumber = "phone_number",
                 emailAddress = "email_address",
                 biography = "biography",
                 photoURLSmall = "photo_url_small",
                 photoURLLarge = "photo_url_large",
                 employeeType = "employee_type",
                 team = "team"
        }
    }

    enum EmployeeType: String, Codable {
        case fullTime = "FULL_TIME"
        case partTime = "PART_TIME"
        case contractor = "CONTRACTOR"

        var displayString: String {
            switch self {
            case .fullTime: return "Full Time"
            case .partTime: return "Part Time"
            case .contractor: return "Contractor"
            }
        }
    }
