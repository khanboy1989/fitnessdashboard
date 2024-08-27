//
//  Date+Ext.swift
//  FitnessDashboard
//
//  Created by Serhan Khan on 27/08/2024.
//

import Foundation

extension Date {
    static var startOfDay: Date {
        let calendar = Calendar.current
        return calendar.startOfDay(for: Date())
    }
}
