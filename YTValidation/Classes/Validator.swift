//
//  YTSwiftCommonPod.swift
//  Pods-YTSwiftCommonPod_Example
//
//  Created by Admin on 11/07/24.
//

import Foundation

// A utility class for common validations in a Swift project
public class Validator {
    
    public init() {}

    // MARK: - Email Validation

    /// Validates if the provided string is a valid email address.
    /// - Parameter email: The email string to validate.
    /// - Returns: `true` if the email is valid, otherwise `false`.
    public func isValidEmail1(_ email: String) -> Bool {
        // Regular expression for validating an Email
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Z0-9a-z.-]+\\.[A-Z]{2,}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return predicate.evaluate(with: email)
    }

    
    public func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }

    // MARK: - Phone Number Validation

    /// Validates if the provided string is a valid phone number.
    /// - Parameter phoneNumber: The phone number string to validate.
    /// - Returns: `true` if the phone number is valid, otherwise `false`.
    public func isValidPhoneNumber(_ phoneNumber: String) -> Bool {
        // Simple regex for validating phone numbers (digits only, 10 to 15 characters long)
        let phoneRegex = "^\\d{10,15}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
        return predicate.evaluate(with: phoneNumber)
    }

    // MARK: - Empty String Check

    /// Checks if the provided string is empty.
    /// - Parameter text: The string to check.
    /// - Returns: `true` if the string is empty or only contains whitespace, otherwise `false`.
    public func isEmpty(_ text: String?) -> Bool {
        guard let text = text else { return true }
        return text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }

    // MARK: - Password Validation

    /// Validates if the provided password meets the specified requirements.
    /// - Parameter password: The password string to validate.
    /// - Returns: `true` if the password is valid, otherwise `false`.
    public func isValidPassword(_ password: String) -> Bool {
        // Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, and one number
        let passwordRegex = "(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[A-Za-z\\d]{8,}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        return predicate.evaluate(with: password)
    }

    // MARK: - Date Validation

    /// Validates if the provided string is a valid date based on the specified date format.
    /// - Parameters:
    ///   - dateString: The date string to validate.
    ///   - dateFormat: The date format to check against.
    /// - Returns: `true` if the date string is valid, otherwise `false`.
    public func isValidDate(_ dateString: String, withFormat dateFormat: String) -> Bool {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        return dateFormatter.date(from: dateString) != nil
    }

    // MARK: - Range Validation

    /// Validates if a number is within a specified range.
    /// - Parameters:
    ///   - number: The number to check.
    ///   - range: The range to validate against.
    /// - Returns: `true` if the number is within the range, otherwise `false`.
    public func isNumber(_ number: Int, withinRange range: ClosedRange<Int>) -> Bool {
        return range.contains(number)
    }

    // MARK: - URL Validation

    

    /// Validates if the provided string is a valid URL.
    /// - Parameter urlString: The URL string to validate.
    /// - Returns: `true` if the URL is valid, otherwise `false`.
    public func isValidURL(_ urlString: String) -> Bool {
        if let url = URL(string: urlString) {
            return UIApplication.shared.canOpenURL(url)
        }
        return false
    }
}

