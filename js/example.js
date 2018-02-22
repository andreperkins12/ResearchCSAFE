// Initialize Firebase
var config = {
  apiKey: "AIzaSyDizS61FEPeIlrkR5XhW0HSxl3rI_n0VFs",
  authDomain: "dream-team-18d5b.firebaseapp.com",
  databaseURL: "https://dream-team-18d5b.firebaseio.com",
  projectId: "dream-team-18d5b",
  storageBucket: "dream-team-18d5b.appspot.com",
  messagingSenderId: "649519256286"
};
firebase.initializeApp(config);

var DATABASE = firebase.database();
var REFERENCE = DATABASE.ref('Example_Data');
var REF_CHILD = REFERENCE.child('Ex_Structure/DATA:');
var counter = 0;

function loadData(){

REF_CHILD.on('value', gotData,errorData);

}

function gotData(data){

  var value = data.val(); //GETS THE VALUE OF THE DATA IN FIREBASE REFERENCE
  var keys = Object.keys(value);  //CURRENT USER ID
  console.log(keys);  //DISPLAYS IN CONSOLE ALL THE DATA IN DATABASE

  for (var i = 0; i < keys.length; i++) {
    var k =  keys[i];
    var theKey = value[k];
    var theCount = value[k].count; //COUNTER DATA THAT IS STORED IN COUNT:
  }
    var theList = document.createElement('div');
    theList.innerHTML = '<div> ' + theCount + ' USER KEY FOR DATA: \n' + k +  '</div>';
    document.body.appendChild(theList); //TO SEE COUNT OF PARTICULAR USER KEY
}

function errorData(){ //IF ERROR OCCURS READING DATA
  alert("Could not Load Data");
}

function writeData(){ //WRITE RANDOM DATA
  counter++;
  var example_data = {
              content: "CONTENT",
              downloadURL: "URL",
              count: counter
            };
  REF_CHILD.push(example_data); //PUSHING TO FIREBASE HERE
}
