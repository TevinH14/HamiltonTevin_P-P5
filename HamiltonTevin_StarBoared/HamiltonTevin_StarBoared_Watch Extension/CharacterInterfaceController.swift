//
//  CharacterInterfaceController.swift
//  HamiltonTevin_StarBoared_Watch Extension
//
//  Created by Tevin Hamilton on 3/24/20.
//  Copyright © 2020 Tevin Hamilton. All rights reserved.
//

import Foundation
import WatchKit

class CharacterInterfaceController: WKInterfaceController {
    
    var charaArray = [StarWarsCharacter]()
    @IBOutlet weak var tableView: WKInterfaceTable!
    
    
    override func awake(withContext context: Any?) {
        downloadData()
        
        
    }
    
    override func willActivate() {
        super.willActivate()
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        pushController(withName: "DetailInterfaceController", context: charaArray[rowIndex])
    }
    
    func loadTableView(){
        tableView.setNumberOfRows(charaArray.count, withRowType: "row_id2")
        
        for (index,item) in charaArray.enumerated(){
            if let rowController = tableView.rowController(at: index) as? RowController{
                rowController.rowCharacterName.setText(item.name)
            }
        }
    }
    
    // download people data from the swapi api
    func downloadData(){
        let config = URLSessionConfiguration.default
        
        //Create a session
        let session = URLSession(configuration: config)
        var counter:Int = 0
        if let validURL = URL(string: "https://swapi.co/api/people/") {
            
            //Create a task that will download whatever is found at validURL as a Data object
            let task = session.dataTask(with: validURL) { (data, response, error) in
                
                //If there is an error the bail out of this entire method (return)
                if let error = error {
                    
                    print("Data task failed with error " + error.localizedDescription)
                }
                
                //If we get this then we have gotten the info at the URL as a Data Object and we can now use it
                print("Success")
                
                //Check response status, validate the data
                guard let httpResponse = response as? HTTPURLResponse,
                    httpResponse.statusCode == 200,
                    let validData = data
                    else {print("JSON Object creation failed."); return}
                do {
                    
                    // take in thw whole url data
                    let jsonObj = try JSONSerialization.jsonObject(with: validData, options: .mutableLeaves) as? [String: Any]
                    
                    guard let json = jsonObj
                        else{print("something went wrong");return}
                    //dig threw the first level of the json object
                    for (key,value) in json
                    {
                        print(key)
                        if key == "results" {
                            for item in value as! [[String: Any]]{
                                guard let name = item["name"] as? String ,
                                    let gender = item["gender"] as? String,
                                    let height = item["height"] as? String,
                                    let eyeColor = item["eye_color"] as? String,
                                    let birthYear = item["birth_year"] as? String
                                    else {continue}
                                self.charaArray.append(StarWarsCharacter.init(name: name, gender: gender, birth_year: birthYear, height: height, eye_color: eyeColor))
                            }
                        }
                    }
                }catch {
                    print(error.localizedDescription)
                }
                
                DispatchQueue.main.async {
                    //reload the the tableview with data.
                    self.loadTableView()
                }
                
            }
            counter += 1
            //start task
            task.resume()
        }
        print("Test")
    }
    
}

