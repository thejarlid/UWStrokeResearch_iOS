//
//  ViewController.swift
//  UWStrokeResearch
//
//  Created by Dilraj Devgun on 11/27/16.
//  Copyright © 2016 Dilraj Devgun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var hander:QuestionHandler!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.hander = QuestionHandler()
        
        
        
        
//        handler.giveInput(input: "start", forNode: nil)
//        print(handler.getCurrentQuestion().question + " " + handler.getCurrentQuestion().node!.QID)
//        
//        handler.giveInput(input: "yes", forNode: nil)
//        print(handler.getCurrentQuestion().question + " " + handler.getCurrentQuestion().node!.QID)
//        
//        handler.giveInput(input: "no", forNode: nil)
//        print(handler.getCurrentQuestion().question + " " + handler.getCurrentQuestion().node!.QID)
//        
//        handler.giveInput(input: "8", forNode: nil)
//        print(handler.getCurrentQuestion().question + " " + handler.getCurrentQuestion().node!.QID)
//        
//        handler.giveInput(input: "yes", forNode: (handler.currentQuestion as! LogicNode).firstN)
//        print(handler.getCurrentQuestion().question + " " + handler.getCurrentQuestion().node!.QID)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        print(hander.getCurrentQuestion().question + " " + (hander.getCurrentQuestion().node!.QID)!)
        let questionView = BaseQuestionView(frame: CGRect(x: 0, y: 0, width:self.view.frame.width, height:self.view.frame.height), question: hander.getCurrentQuestion().question)
        self.view.addSubview(questionView)
    }
}

