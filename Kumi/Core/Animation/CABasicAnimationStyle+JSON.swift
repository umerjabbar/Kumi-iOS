//
//  CABasicAnimationStyle+JSON.swift
//  Kumi
//
//  Created by VIRAKRI JINANGKUL on 6/4/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import SwiftyJSON

extension CABasicAnimationStyle {
    
    public init(json _json: JSON) {
        let json = _json.kumiValue
        var duration: TimeInterval = 0.35
        var delay: TimeInterval = 0
        var timingFunction: CAMediaTimingFunction = CAMediaTimingFunction(controlPoints: 0, 0, 1, 1)
        var isRemovedOnCompletion: Bool = false

        if let durationValue = json["duration"].kumiValue.double {
            duration = durationValue
        }

        if let delayValue = json["delay"].kumiValue.double {
            delay = delayValue
        }

        
        if let timingFunctionValue = CAMediaTimingFunction(json: json["timingFunction"]) {
            timingFunction = timingFunctionValue
        }
    

        if let isRemovedOnCompletionValue = json["isRemovedOnCompletion"].kumiValue.bool {
            isRemovedOnCompletion = isRemovedOnCompletionValue
        }

        self.init(duration: duration,
                  delay: delay,
                  timingFunction: timingFunction,
                  isRemovedOnCompletion: isRemovedOnCompletion)
    }

}
