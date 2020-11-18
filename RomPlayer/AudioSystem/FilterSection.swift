//
//  FilterSection.swift
//  ROM Player
//
//  Created by Aurelius Prochazka, revision history on Github.
//  Copyright © 2016 AudioKit. All rights reserved.
//

import AudioKit
import AVKit

class FilterSection: Node {
    var parameters: [Double] = [1_000, 0.9, 1_000, 1, 0]

    var cutoffFrequency: Double = 1_000 {
        didSet {
            parameters[0] = cutoffFrequency
            output.parameters = parameters
        }
    }

    var resonance: Double = 0.9 {
        didSet {
            parameters[1] = resonance
            output.parameters = parameters
        }
    }

    var lfoAmplitude: Double = 1_000 {
        didSet {
            parameters[2] = lfoAmplitude
            output.parameters = parameters
        }
    }

    var lfoRate: Double = 1 {
        didSet {
            parameters[3] = lfoRate
            output.parameters = parameters
        }
    }

    var lfoIndex: Double = 0 {
        didSet {
            parameters[4] = lfoIndex
            output.parameters = parameters
        }
    }

    var output: OperationEffect

    var inputNode: AVAudioNode {
        return output.avAudioNode
    }

    init(_ input: Node) {

        output = OperationEffect(input) { input, parameters in

            let cutoff = parameters[0]
            let rez = parameters[1]
            let oscAmp = parameters[2]
            let oscRate = parameters[3]
            let oscIndex = parameters[4]

            let lfo = Operation.morphingOscillator(frequency: oscRate,
                                                     amplitude: oscAmp,
                                                     index: oscIndex)

            return input.moogLadderFilter(cutoffFrequency: max(lfo + cutoff, 0),
                                          resonance: rez)
        }
        output.parameters = parameters

        super.init(avAudioUnit: <#AVAudioUnit#>)
        self.avAudioNode = output.avAudioNode

    }
}
