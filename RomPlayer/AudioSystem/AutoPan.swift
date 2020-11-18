//
//  AutoPan.swift
//  ROM Player
//
//  Created by Matthew Fecher on 7/26/16.
//  Copyright © 2016 AudioKit. All rights reserved.
//

import AudioKit

class AutoPan: Node {
    
    var freq = 0.1 {
        didSet {
            output.parameters = [freq, mix]
        }
    }
    
    var mix = 1.0 {
        didSet {
            output.parameters = [freq, mix]
        }
    }
    
    fileprivate var output: OperationEffect
    
    init(_ input: Node) {
        
        output = OperationEffect(input) { input, parameters in
        
            let autoPanFrequency = Operation.parameters[0]
            let autoPanMix = Operation.parameters[1]
            
            // Now all of our operation work is in this block, nicely indented, away from harm's way
            let oscillator = Operation.sineWave(frequency: autoPanFrequency)
           
            let panner = input.pan(oscillator * autoPanMix)
            return panner
        }
       
        super.init(avAudioUnit: <#AVAudioUnit#>)
        self.avAudioNode = output.avAudioNode
        //input.connect(to: output)
        
    }
    
}
