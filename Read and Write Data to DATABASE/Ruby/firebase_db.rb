require 'firebase'

#connection to firebase
firebase_uri = 'https://dream-team-18d5b.firebaseio.com/'
@firebase = Firebase::Client.new(firebase_uri)

#Easy Way to Pull ALL DATA in FIREBASE DATABASE
def read_data
  theData = @firebase.get('Example_Data')
  puts ("Unstructured DATA: \n")
  puts (theData.raw_body)
end
#Push DATA to Firebase
def push_Data
  raw_push = @firebase.push('Ruby_Example_Data', {:ex_data => 'DATA'})
  puts("\nPUSH\n")
  puts(raw_push.raw_body)
end

read_data #READ CALL
push_Data #push CALL
