//
//  TestViewController.swift
//  Smart UAE
//
//  Created by Nnamdi Ugwuoke on 4/19/19.
//  Copyright © 2019 Manipal University Dubai. All rights reserved.
//

import UIKit
import ConversationV1
import TextToSpeechV1
import RestKit
import AVFoundation

class TestViewController: UIViewController {
   var lastcontext: Context?
    override func viewDidLoad() {
        super.viewDidLoad()
        let username = "apikey"
        let password = "L_VICETBI6uWnxf57DS99aV_7AY5hoZy8pTHNIcCQ8Fp"
        let version = "2019-04-18" // use today's date for the most recent version
        let assistant = Conversation(version: version, apiKey: password)
        let workspaceID = "62cc6b1e-93f9-4c72-a404-c6d9d6ae27dd"
        let  input = InputData(text: "come here")
      
        let failure = { (error: Error) in print(error) }
        let request = MessageRequest(input: input, context: self.lastcontext)
        OperationQueue.main.addOperation {
            assistant.message(workspaceID: workspaceID, request: request, failure: failure) { response in
                // print(response.output.text)
                self.lastcontext = response.context
                let responseEntity = response.entities.first
                let responseIntent = response.intents.first
                var toppingtype: String?
                if let entity = responseEntity{
                    let entityLabel  = entity.entity
                    let entityValue = entity.value
                    if entityLabel == "toppings"{
                        toppingtype = entityValue
                    }
                    if let intent = responseIntent{
                        let contextualIntent = intent.intent
                        if contextualIntent == "topping"{
                            toppingtype = "tooping1" //just Example
                            print("Job Finish" + toppingtype!)
                        }
                    }
                }
                //To be re do
                //let defaults = UserDefaults.standard
                //let name: String =  defaults.string(forKey: "name")!
                //   let text1 =   name +  response.output.text.first!
                OperationQueue.main.addOperation{
                    //self.conversationList.text = self.conversationList.text + "Watson:" + response.output.text.first! + "\n"
                    //self.watson.text = "AIA: " + response.output.text.first! + "\n"
                    //self.giveMe.loadGif(name: "MealOrderTake")
                    //   self.giveMe.setImage(UIImage: "Cam_3_00047.png")
                    // let username1 = "5b7100c8-8476-4acb-918f-a6181d7208de"
                    // let password1 = "ujI842yLtvsH"
                    let username1 = "apikey"
                    let password1 = "L_VICETBI6uWnxf57DS99aV_7AY5hoZy8pTHNIcCQ8Fp"
                    let textToSpeech = TextToSpeech(username: username1, password: password1)
                    
                    
                    
                    
                    
                    //var audioPlayer = AVAudioPlayer() // see note below
                    
                    //let text =   name +  response.output.text.first!
                    // let text =   name +  "I can tell you' re hungry what food will order for you today"
                    let text =  ""
                    let failure1 = { (error: Error) in print(error) }
                    
                    
                    
                    
                    textToSpeech.synthesize(text: text, failure: failure1) { data in
                        do{
                            
                            //try audioSession1.overrideOutputAudioPort(AVAudioSessionPortOverride.speaker)
                            
                            try AVAudioSession.sharedInstance().overrideOutputAudioPort(AVAudioSession.PortOverride.speaker)
                        }
                        catch{
                            print ("could not speak through the device printer")
                        }
                        
                  
                        //self.giveMe.loadGif(name: "MealOrderTake.gif")
                        //audioPlayer = try! AVAudioPlayer(data: data)
                        //audioPlayer.prepareToPlay()
                        //audioPlayer.play()
                    }
                    
                    
                    
                    
                    
                    // end of text to speech
                    
                }
                
                
                OperationQueue.main.addOperation{
                    //self.conversationList.text = self.conversationList.text + "Watson:" + response.output.text.first! + "\n"
                    //  self.watson.text = "Hi," +  " I can tell you forgot to off your air conditioner do want to off it now"
                    //name
                  
                    //self.watson.text = "AIA: " + response.output.text.first! + "\n"
                    //self.giveMe.loadGif(name: "MealOrderTake")
                    //   self.giveMe.setImage(UIImage: "Cam_3_00047.png")
                    //let username1 = "5b7100c8-8476-4acb-918f-a6181d7208de"
                    // let password1 = "ujI842yLtvsH"
                    let username1 = "apikey"
                    let password1 = "L_VICETBI6uWnxf57DS99aV_7AY5hoZy8pTHNIcCQ8Fp"
                    let textToSpeech = TextToSpeech(username: username1, password: password1)
                    
                    
                    
                    
                    
                    //var audioPlayer = AVAudioPlayer() // see note below
                    // let text =  "Hi, " +  name +  " I can tell you' re hungry what food will order for you today"
                    //names
                    let text =  "Hi, " +  " I can help you with queries regarding UAE open datasets"
                    //  let text = response.output.text.first!
                    //let text = self.conversationList.text!
                    let failure1 = { (error: Error) in print(error) }
                    
                    let accept = "audio/wav"
                    let failure = { (error: Error) in print(error) }
                    
                    // let failure = { (error: Error) in print(error) }
                    textToSpeech.synthesize(text: text, accept: accept, failure: failure) { data in
                        
                        //  textToSpeech.synthesize(text: text, failure: failure1) { data in
                        do{
                            
                            //try audioSession1.overrideOutputAudioPort(AVAudioSessionPortOverride.speaker)
                            
                            try AVAudioSession.sharedInstance().overrideOutputAudioPort(AVAudioSession.PortOverride.speaker)
                            
                         
                        }
                        catch{
                            print ("could not speak through the device printer")
                        }
                        
                        
                        
                        //self.giveMe.loadGif(name: "MealOrderTake.gif")
                        //audioPlayer = try! AVAudioPlayer(data: data)
                        //audioPlayer.prepareToPlay()
                        //audioPlayer.play()
                    }
                    
                    
                    
                    
                    
                    // end of text to speech
                    
                }
                
            }
            
            
        }
    }
    


}
