//
//  Extensions.swift
//  Audio
//
//  Created by Philip Lee on 2022/3/21.
//

import Foundation

extension DateComponentsFormatter {
    static let abbreviated: DateComponentsFormatter = {
        print("Initioalizing DateComponentsFormatter.abbreviated")
        let formatter = DateComponentsFormatter()
        
        formatter.allowedUnits = [.hour, .minute, .second]
        formatter.unitsStyle = .abbreviated
        
        return formatter
    }()

static let positional: DateComponentsFormatter = {
    print("Initioalizing DateComponentsFormatter.positional")
    let formatter = DateComponentsFormatter()
    
    formatter.allowedUnits = [.minute, .second]
    formatter.unitsStyle = .positional
    formatter.zeroFormattingBehavior = .pad
    
    return formatter
}()
}
