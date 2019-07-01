//
//  RiderVc.swift
//  Arcab
//
//  Created by Khalid Ahli on 11/24/17.
//  Copyright © 2017 Khalid Ahli. All rights reserved.
//
/*
 import UIKit
 import MapKit
 import Speech
 //import ConversationV1
 //import RestKit
 //import TextToSpeechV1
 import AVFoundation
 
 /*
 [
 {
 "elementType": "geometry",
 "stylers": [
 {
 "color": "#f5f5f5"
 }
 ]
 },
 {
 "elementType": "labels.icon",
 "stylers": [
 {
 "visibility": "off"
 }
 ]
 },
 {
 "elementType": "labels.text.fill",
 "stylers": [
 {
 "color": "#616161"
 }
 ]
 },
 {
 "elementType": "labels.text.stroke",
 "stylers": [
 {
 "color": "#f5f5f5"
 }
 ]
 },
 {
 "featureType": "administrative.land_parcel",
 "elementType": "labels",
 "stylers": [
 {
 "visibility": "off"
 }
 ]
 },
 {
 "featureType": "administrative.land_parcel",
 "elementType": "labels.text.fill",
 "stylers": [
 {
 "color": "#bdbdbd"
 }
 ]
 },
 {
 "featureType": "poi",
 "elementType": "geometry",
 "stylers": [
 {
 "color": "#eeeeee"
 }
 ]
 },
 {
 "featureType": "poi",
 "elementType": "labels.text",
 "stylers": [
 {
 "visibility": "off"
 }
 ]
 },
 {
 "featureType": "poi",
 "elementType": "labels.text.fill",
 "stylers": [
 {
 "color": "#757575"
 }
 ]
 },
 {
 "featureType": "poi.park",
 "elementType": "geometry",
 "stylers": [
 {
 "color": "#e5e5e5"
 }
 ]
 },
 {
 "featureType": "poi.park",
 "elementType": "labels.text.fill",
 "stylers": [
 {
 "color": "#9e9e9e"
 }
 ]
 },
 {
 "featureType": "road",
 "elementType": "geometry",
 "stylers": [
 {
 "color": "#ffffff"
 }
 ]
 },
 {
 "featureType": "road.arterial",
 "elementType": "labels.text.fill",
 "stylers": [
 {
 "color": "#757575"
 }
 ]
 },
 {
 "featureType": "road.highway",
 "elementType": "geometry",
 "stylers": [
 {
 "color": "#dadada"
 }
 ]
 },
 {
 "featureType": "road.highway",
 "elementType": "labels.text.fill",
 "stylers": [
 {
 "color": "#616161"
 }
 ]
 },
 {
 "featureType": "road.local",
 "elementType": "labels",
 "stylers": [
 {
 "visibility": "off"
 }
 ]
 },
 {
 "featureType": "road.local",
 "elementType": "labels.text.fill",
 "stylers": [
 {
 "color": "#9e9e9e"
 }
 ]
 },
 {
 "featureType": "transit.line",
 "elementType": "geometry",
 "stylers": [
 {
 "color": "#e5e5e5"
 }
 ]
 },
 {
 "featureType": "transit.station",
 "elementType": "geometry",
 "stylers": [
 {
 "color": "#eeeeee"
 }
 ]
 },
 {
 "featureType": "water",
 "elementType": "geometry",
 "stylers": [
 {
 "color": "#c9c9c9"
 }
 ]
 },
 {
 "featureType": "water",
 "elementType": "labels.text.fill",
 "stylers": [
 {
 "color": "#9e9e9e"
 }
 ]
 }
 ]
 */
 
 class RiderVc:UIViewController, MKMapViewDelegate, CLLocationManagerDelegate, AVAudioPlayerDelegate, SFSpeechRecognizerDelegate, UITextFieldDelegate {
 /*
 @IBOutlet weak var textView: UITextView!
 @IBOutlet weak var textViewType: UITextField!
 @IBOutlet weak var watson: UITextView!
 @IBOutlet weak var myMap: MKMapView!
 private var locationManager = CLLocationManager();
 private var userLocation: CLLocationCoordinate2D?
 
 var player: AVAudioPlayer!
 var recorder: AVAudioRecorder!
 override func viewDidLoad() {
 super.viewDidLoad()
 initializeLocationManager();
 // Do any additional setup after loading the view.
 }
 
 private func initializeLocationManager(){
 locationManager.delegate = self;
 locationManager.desiredAccuracy = kCLLocationAccuracyBest;
 locationManager.requestWhenInUseAuthorization();
 locationManager.startUpdatingLocation();
 }
 
 func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
 {
 
 if let location = locationManager.location?.coordinate {
 userLocation = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
 let region = MKCoordinateRegion(center: userLocation!, span: MKCoordinateSpan(latitudeDelta:0.01, longitudeDelta: 0.01))
 myMap.setRegion(region, animated: true)
 myMap.removeAnnotation(myMap.annotations as! MKAnnotation)
 let annotation = MKPointAnnotation();
 annotation.coordinate = userLocation!;
 annotation.title = "Riders Location"
 myMap.addAnnotation(annotation)
 }
 
 }
 override func didReceiveMemoryWarning() {
 super.didReceiveMemoryWarning()
 // Dispose of any resources that can be recreated.
 }
 
 @IBAction func callTaxi(_ sender: UIButton) {
 }
 
 
 @IBAction func logout(_ sender: Any) {
 if  AuthProvider.Instance.logOut(){
 dismiss(animated:true, completion: nil)
 }else{
 let alert = UIAlertController(title: "We could not logout", message: "We cold not log you out at the moment please try again later", preferredStyle: .alert)
 let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
 
 alert.addAction(ok)
 self.present(alert, animated: false, completion: nil)
 //self.alertTheUser(title: "Email and Password is required", message: "Please Enter the Email and Password in the textfield below")
 
 }
 }
 /*
 
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destinationViewController.
 // Pass the selected object to the new view controller.
 }
 */
 */
 
 }
 
 */

