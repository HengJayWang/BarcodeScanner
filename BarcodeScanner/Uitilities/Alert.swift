//
//  Alert.swift
//  BarcodeScanner
//
//  Created by M100-M1MacMini on 2021/12/30.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input",
                                              message: "Some thing is wrong with camera. We are unable to capture the input.",
                                              dismissButton: .default(Text("OK")))
    static let invalidScannedValue = AlertItem(title: "Invalid Scanned Value",
                                               message: "The value scanned is not valid. This app scans EAN-8 and EAN-13 format.",
                                               dismissButton: .default(Text("OK")))
}
