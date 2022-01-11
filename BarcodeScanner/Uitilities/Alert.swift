//
//  Alert.swift
//  BarcodeScanner
//
//  Created by M100-M1MacMini on 2021/12/30.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: Text("Invalid Device Input"),
                                              message: Text("Some thing is wrong with camera. We are unable to capture the input."),
                                              dismissButton: .default(Text("OK")))
    static let invalidScannedValue = AlertItem(title: Text("Invalid Scanned Value"),
                                               message: Text("The value scanned is not valid. This app scans EAN-8 and EAN-13 format."),
                                               dismissButton: .default(Text("OK")))
}
