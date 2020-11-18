# AudioKit ROM / Sample Player

[![Build Status](https://travis-ci.org/AudioKit/ROMPlayer.svg)](https://travis-ci.org/AudioKit/ROMPlayer)
[![License](https://img.shields.io/cocoapods/l/AudioKit.svg?style=flat)](https://github.com/AudioKit/ROMPlayer/blob/master/LICENSE)
[![Twitter Follow](https://img.shields.io/twitter/follow/AudioKitPro.svg?style=social)](http://twitter.com/AudioKitPro)

![AK ROM Player](https://i.imgur.com/B9NJ6Ps.png)

Welcome to the official AudioKit example of a sample-based music instrument written in Swift. It can be modified to play EXS24, Wave, or Sound Fonts. This code is lightweight and demonstrates how you can make a beautiful sounding, pro-level instrument with small amount of code. 

If you're new to [AudioKit](https://audiokitpro.com/), you can learn more and view getting started links: [here](https://audiokitpro.com/audiokit/).

## App Store Example

Video introduction for this app and project:  
[https://vimeo.com/244897673](https://vimeo.com/244897673)

The AudioKit FM Player is built with this code:  
[Download in App Store here](https://itunes.apple.com/us/app/fm-player-classic-dx-synths/id1307785646?ls=1&mt=8).

## New AKSampler Version ##
This updated code is powered by the new, superior [AKSampler](https://github.com/AudioKit/AudioKit/blob/v4.2/Documentation/AKSampler.md) code written by Shane Dunne. Special thanks to [Shane Dunne](https://github.com/getdunne) for his great work in making this happen. There is a [legacy branch](https://github.com/AudioKit/ROMPlayer/tree/legacy-avsampler) for the previous code based on Apple's sample-playback code. The legacy code plays EXS files. While this new code plays SFZ files.

Shane has also documented tips for [preparing samples](https://github.com/AudioKit/AudioKit/blob/v4.2/Documentation/PreparingSampleSets.md) to use with the new AKSampler. 

## Code Features

- Beautiful sound engine
- MIDI input for notes, pitch bend, mod wheel, after touch
- On screen "Piano" keyboard that can be customized 
- Reverb, Delay, Bitcrush, AutoPan, Stereo Fatten
- Lowpass Filter and LFO
- MIDI Learn knobs
- Features the new cross-platform AKSampler engine
- Example code written entirely in Swift 4 & AudioKit 4
- Attack and Release Knobs 

## Getting Started

I have tried to streamline this code. There is a focus on the core-functionality to make it easy-to-understand. That being said, audio programming can be challenging. This may be difficult for complete beginners. And, new frameworks can be overwhelming, even for experienced developers. 

**Installation via Swift Package Manager**  

To add AudioKit to your Xcode project, select File -> Swift Packages -> Add Package Depedancy. Enter https://github.com/AudioKit/AudioKit for the URL. Check the use branch option and enter v5-main or v5-develop.


## Requirements

- Mac or computer running Xcode 12 ([Free Download](https://itunes.apple.com/us/app/xcode/id497799835?mt=12))
- Some knowledge of programming, specifically Swift & the iOS SDK

If you are new to iOS development, I highly recommend the [Ray Wenderlich](https://www.raywenderlich.com/) videos. There is also a great tutorial on basic synthesis with AudioKit  [here.](https://www.raywenderlich.com/145770/audiokit-tutorial-getting-started) 


## Included Sounds

![AK Sample Player](https://i.imgur.com/8FiDeJH.png)

In this repo, I've included four preset sounds I sampled from my TX81z hardware FM synthesizer using the sampling software [SampleRobot](http://www.samplerobot.com). The LoTine81z sound includes 3 velocity layers. The other sounds include a few samples to demonstrate the sounds while keeping the repo size tight.


You are free to use the instruments included in this repo as you see fit- In a game, music app, or just for whatever. It would be cool if you didn't resell them.

AKSampler reads `.wv` files compressed using the open-source [Wavpack](http://www.wavpack.com) software. On the Mac, you must first install the Wavpack command-line tools. Then you can use the following Python 2 script to compress a whole folder-full of `.wav` files. See this excellent [documentation](https://github.com/AudioKit/AudioKit/blob/v4.2/Documentation/PreparingSampleSets.md) by Shane Dunne for more info on preparing samples. 


## Using Samples

You can replace the included example sample instruments with your own instruments. 

![add samples](https://i.imgur.com/TX0j9dy.jpg)

1. Add your SFZ files and samples to the `/Sounds/sfz/` directory
2. Type in the name of the instruments in the ParentViewController.swift file

**Other Sampler File Formats**  
You can use a tool you already know (such as Kontakt) to create and arrange the sample instrument key mapping and velocity layers. Then, you can easily convert Kontakt instruments to SFZ with tools such as [this](http://www.chickensys.com/translator/). Then, remake the effects using AudioKit. That way, you'll have dynamic sounds and complete control over the effects.

This example code loads SFZ intruments. It is recommended that you convert your file formats to SFZ. If you have to use EXS or SF2, there are [other types](https://github.com/AudioKit/AudioKit/blob/v4.2/Documentation/Samplers.md) of sample playback routines in AudioKit you can use instead.
 

## Sound Manipulation

There are all kinds of filters, effects, and other audio manipulation classes included with AudioKit to get you started. You can browse the documentation [here](http://audiokit.io/docs/index.html). 

And, explore over [100+ playgrounds](http://audiokit.io/playgrounds/), created by the lovely & talented [Aure Prochazka](https://twitter.com/audiokitman). These byte size code playgrounds allow you to easily experiment with sound & code.

You may also want to explore AU Lab, a free tool from Apple. It is available from the "more" section of the [Apple Developer portal](https://developer.apple.com/download/more/). As of this text, the current version is in the [Additional Tools for Xcode 9 package](https://download.developer.apple.com/Developer_Tools/Additional_Tools_for_Xcode_9/Additional_Tools_for_Xcode_9.dmg). 

Additionally, these [docs and tips](https://developer.apple.com/library/content/technotes/tn2331/_index.html) will also prove valuable if you want to dive in at a deeper level than the AKSampler. 

## Making Graphics

IMPORTANT: You need to change the graphics to upload an app to the app store. Apple does not allow apps to use stock template graphics. Plus, you want your app to be part of the expression of your artistic vision. 

For example, if you were releasing a new music album, you would not want to use someone else's album artwork. You would want your own! 

Think of the GUI as an extension of your sample/music artform. It is a way to impress upon users your own style and give them a feel for your sonic personality. 

If graphic coding is not your cup of tea, the easiest way to make synth controls and knobs with code is to use [PaintCode](https://www.paintcodeapp.com/). I made almost all the graphic elements for this app with PaintCode. I've included the PaintCode source files for most of these UI elements [here](https://github.com/AudioKit/AudioKitGraphics). You can use them as a starting place to learn how to make controls. You can start with these files and change the color, sizes, etc. 

Luckily, I've already included the coding part of handling knobs in this repo. You only have to worry about the graphics. 

![knob in ib](https://i.imgflip.com/1svkul.gif)

Or, if you want to just completely use graphics instead of code - 

If you'd rather make knobs and controls with a graphic rendering software packgage that exports image frames (or a dedicated tool like KnobMan), here's some example code I wrote demonstrating using images to create knobs [here](https://github.com/analogcode/3D-Knobs).

![Knobs](http://audiokitpro.com/images/knob.gif) 

## Code Usage

You are free to:

(1) Use this app as a learning tool.  
(2) Re-skin this app (change the graphics), use your own sound samples, and upload to the app store.   
(3) Change the graphics, use your own sounds, and include this as part of a bigger app you are building.  
(4) Contribute code back to this project and improve this code for other people.

If you use any code, it would be great if you gave this project some credit or a mention. The more love this code receives, the better we can make it for everyone. And, always give AudioKit a shout-out when you can! :) 

If you make an app with this code, please let us know! We think you're awesome, and would love to hear from you and/or feature your app.

IMPORTANT: You must change the graphics and sounds if you upload this to the app store.

## What Sounds Can You Use In Your App?

![DX](https://i.imgur.com/g86gqfI.png)

Please get permission from the content creators before you use any free sounds on the internet. Even if sounds are available for free, it does not mean they are licensed to be used in an interactive app. 

The best thing to do is to create or sample your own custom instruments. Generally, you can sample an acoustic instrument or voice without worry. This includes things like Pianos, Flutes, Horns, Human Voice, Guitars, Hand Claps, Foot stomps, etc.

There is a gray area when it comes to keyboards. You can sample pure synthesizers. However, you can not sample keyboards and synthesizers based on PCM or wavetable samples. E.g. A vintage Juno 106 can be legally sampled. But, a modern Juno can not. The modern version uses recorded oscillator waveforms for its source sounds. A Mini-Moog or DX7 can be sampled. But, from the same era, the Roland D-50 or Korg M1 can not. As they use short PCM samples mixed with the oscillators.  

More examples: A Korg MS-20 can be sampled. However, a microKORG can not. (As the microKORG uses digital audio samples for its oscillators). Modern soft synths like Massive and Serum are also waveform based and can not be sampled. It is also illegal to sample other people's sample libraries and sample based apps (like the app store version of this code). Additionally, modern hardware keyboard workstations are almost completely sample-based and you can not sample anything from those legally. 

Many companies will not hesitate to send you a Cease & Desist notice. For example, hardware manufacturers have shut down and/or sued many apps, VSTs, and sample libraries (including popular apps like Rebirth). They have even shut down a free and open-source web app drum machine reminiscent of a TR-808. 

Bottom line: Even if your app is free and doesn't make any money, don't violate copyright laws. It will save you loads of headaches. And, allows you to focus on making something unique and creative. 

## AudioBus & IAA MIDI

AudioBus requires a unique key for every app. And, adds complexity to the code. As we have other examples of using AudioBus, it was left out of this example to make the ROM Player code focused and easier-to-understand.

However, here's some tips:
There's information on adding [AudioBus with AudioKit](http://audiokit.io/audiobus/) on our doc site. Plus, our [Analog Synth X](https://github.com/AudioKit/AudioKit/tree/master/Examples/iOS/AnalogSynthX) example code is an example of an app using AudioBus.

Need more hints? I got you covered!  

Here's a gist of the AudioBus 3 MIDI listening code in FM Player:
[https://gist.github.com/analogcode/fa097afb59ee57ccd29e59dfb2526977](https://gist.github.com/analogcode/fa097afb59ee57ccd29e59dfb2526977)

**Host Icon**   
Here's how to add a Host Icon to your app (the icons for AudioBus 3, GarageBand, etc).  

Add these methods to your ParentViewController:
[https://gist.github.com/analogcode/3b3dac2699a6e85c5d3fb86fe48e4ccb](https://gist.github.com/analogcode/3b3dac2699a6e85c5d3fb86fe48e4ccb)

Then, add a button/imageview to your storyboard where you want the icon to appear. Connect it to the IBAction in the gist.

**Is there a way to listen for IAA MIDI in Swift?**  
Here's a bit of code used in the FM Player to listen for IAA MIDI. I'm pretty sure there's a better way to do this. If anyone has any tips, please let us know. It was added to the ViewDidLoad method in the ParentViewController:
[https://gist.github.com/analogcode/27b327d3ca71187ddc47715b19a50977](https://gist.github.com/analogcode/27b327d3ca71187ddc47715b19a50977)

Transport Controls - I don't have any experience adding transport controls with Swift. If you get them to work, please get in touch so that we may help other people.


## FAQ

Q: Is this free? I really don't have to pay you anything if I make an app with this code?  

A: Yes! You are correct. This is open source, you can do whatever you want with it. It's usually cool to thank the project if you use the code. Go build stuff. Enjoy.  

Q: How can I ever repay you?

A: If you want to contribute to the AudioKit code, or ROM Player code, there are many things that can be improved. Or, you could pay it forward by helping other developers.  

Q: How do I save FX settings with each patch like in FM Player?

A: Every developer has their own favorite solution for file persistance (saving/loading), we left that out to keep this code focused on music functionality. There are many robust solutions including Core Data and Realm. In FM Player, we used something lightweight and easy, [Disk](https://github.com/saoudrizwan/Disk). It is a wrapper for native Swift 4 functions. And, beginner friendly. Saving and loading data is a very common thing to do in iOS. There are many blogs, books, videos, and even non-music developers that can help you.

Q: My EXS24 files work in the simulator. But, not in a device?

A: The most common cause of this is that the file references in your EXS24 files are pointing to a folder specifically on your computer, and not relative to their current location. Users of your app will not have access to your computer. This is a good error to catch before uploading to the app store! 

Fixing EXS24 file references is beyond the scope of this readme...  

You can fix file refrences with Logic. Or, if you're making Kontakt Libraries and then converting to EXS24 using something like [Chicken Systems Translator](http://www.chickensys.com/translator/), you can fix the file references by making sure you have everything checked properly on [this screen](http://www.chickensys.com/translator/documentation/options/fixreferences.html). And, a good tip is to run the file translating on the EXS24 files again once they are ALREADY in your app bundle folder (/Sounds/Sampler Instruments/). Sometimes I run the translator on EXS24 files twice for good measure.

If this is driving you mad, this [thread](https://github.com/audiokit/AudioKit/issues/903) will help. 

Q: How did you make sounds loop and sustain? (See the 'TX Brass' sample instrument for example)

A: Luckily, there is no extra code needed. The loop points are set in the EXS24 files. For the looping presets in FM Player, I used Kontakt to set loop points in the audio files. When I converted to EXS, the loop points remained. The same is done with velocity layers. Those are all set in the sample files (and not in code). 

Q: How many notes and layers should I sample for an instrument? 

A: This is up to you. Sampling is the part of the process where you really get to use your artistic vision and ears. For FM Player, every preset sound was sampled with different settings. Here's the challenge: iOS storage space is at a premium. A sample library that takes up more space is not always better. More samples could lead to artifacts or loop point mistakes. The key is to find the right balance between storage space and musicality. Sample too much, eat up storage space. Sample not enough, miss out on tone variations and introduce aliasing.

Q: That makes sense. But, what's a good starting place for sampling settings?

A: For many instrument/synth sounds, 3 or 4 velocity layers is a good compromise between sound quality and storage space. Please keep in mind that many instruments do not have a linear tone curve. i.e. You may have to sample at different velocity points for each sound to capture its essence.

Q: Do you recommend Mainstage AutoSampler?

A: If you are making instruments for your own purposes, it might do the trick. It may not achieve the quality for a commercial "pro-level" iOS instrument. Professional sound designers and sample library producers spend  as much time handcrafting, sampling, and fine-tuning sounds as developers spend writing code. If sampling is not your thing, you may want to partner with a talented sound designer. 

Q: I need help getting started. Can you Skype/help me?

A: We are all volunteers. As we have many commitments, obligations, and projects, it is hard to find time for one-on-one assistance. Please do not be offended. For support, please visit [StackOverflow](https://stackoverflow.com/questions/tagged/audiokit?mixed=1) and tag your question “AudioKit”. We try to help where we can. Unfortunately, we do not have the bandwidth for phone or video support. By using StackOverflow it allows more people to benefit from your questions and answers. Thus, allowing us to help more people at once. We try to upvote and encourage all AudioKit questions. There is no shame with needing help or asking questions! You can often receive points on StackOverflow just for asking AudioKit related questions.

## Thanks and Credits

Huge thanks to all the beta testers and the folks on the AudioKit Slack Group, AudioBus Forum, & Facebook iPad Musician group! Without your support and positive feedback and reviews, this would not be possible.

Original ROM Player Code, UI, and Sounds by  
[Matthew M. Fecher](mailto:matthew@audiokitpro.com) | Twitter [@analogmatthew](http://twitter.com/analogmatthew) | Github [analogcode](http://github.com/analogcode) 

New AKSampler by
[Shane Dunne](http://github.com/getdunne)

AudioKit Founder [Aure Prochazka](http://twitter.com/audiokitman)

3D Renderings by [Kevin Loustau](https://twitter.com/KevinLoustau)

Additional MIDI Enhancements by [Mark Jeschke](https://twitter.com/drumkickapp)

This app would not be possible without all the AudioKit contributors:  
[AudioKit Contributions](https://github.com/AudioKit/AudioKit/graphs/contributors)

## Legal Notices

This is an open-source project intended to bring joy and music to people, and enlighten people on how to build custom instruments and iOS apps. All product names and images, trademarks and artists names are the property of their respective owners, which are in no way associated or affiliated with the creators of this app, including AudioKit, AudioKit Pro, LLC, and the other contributors. Product names and images are used solely for the purpose of identifying the specific products related to synthesizers, sampling, sound design, and music making. Use of these names and images does not imply any cooperation or endorsement. Kontakt is a trademark property of Native Instruments. Roland, TR-808, D-50, Juno, and Juno 106 are trademarks property of Roland Corporation. Korg, microKorg, and MS-20 are trademarks of Korg Inc. Yamaha, DX7, DX7II, and TX81z are trademarks property of Yamaha Corporation. We appreciate their amazing work in creating such classic and inspiring instruments. 

This Readme text does not constitute legal advice. We take no responsibility for any actions resulting from using this code or sampling based on any of our advice or text. If you are unsure of your usage, please contact a music licensing attorney or the content creators of the sources you are sampling.
