import React, {Component} from 'react';  
import {Platform, StyleSheet, Image, ScrollView,Alert, TouchableHighlight, Text, View, TextInput} from 'react-native';  
 
const instructions = Platform.select({  
  ios: 'Press Cmd+R to reload,\n' + 'Cmd+D or shake for dev menu',  
  android:  
    'Double tap R on your keyboard to reload,\n' +  
    'Shake or press menu button for dev menu',  
});  
  
export default class App extends Component {  


  onClickListener(){
    Alert.alert('Updated');
  }
  render() {  
    return (  

      <View style={styles.container}>

<ScrollView showsVerticalScrollIndicator={false}>

<View style={styles.button}>
<TouchableHighlight style={[styles.editbuttonContainer, styles.editButton] }  onPress={this.onClickListener} >
       <Text style={styles.signUpText}>Update</Text>
     </TouchableHighlight>
     </View>

        <View style={styles.center}>  
        <View style={styles.profileImage}>
         <Image source={require("../img/1.jpg")} style={styles.image} resizeMode="center"/>
      </View>
        <View>
          <Text style={styles.title}>Dharmesh rathod</Text>
        </View>
        <View style={styles.const1}>
        <Text style={[styles.text]}> Company Name: </Text>
        <TextInput
        style={{height: 40,width: 250, borderColor: 'gray', borderWidth: 1}}
        
      />
        <Text style={[styles.text]}> Email: </Text>
        <TextInput
        style={{height: 40,width: 250, borderColor: 'gray', borderWidth: 1}}
        />
        <Text style={[styles.text]} >Contact no.: </Text>
        <TextInput
        style={{height: 40,width: 250, borderColor: 'gray', borderWidth: 1}}
       />
        <Text style={[styles.text]}>Address: </Text>
        <TextInput
        style={{height: 40, width: 250, borderColor: 'gray', borderWidth: 1}}
      
      />
      </View>
      

     </View>
     </ScrollView>
     </View>
     
    );  
  }  
}  
  
const styles = StyleSheet.create({  
  center:{
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#ecf0f1',
    },
    image:{
      marginTop: 50,
      marginLeft:20,
      height: 150,
      width: 150,
      borderRadius: 1050/2,
      borderColor: '#ff8913',
      marginRight:50,
    },
  container: {
    flex: 1,
    //justifyContent: 'center',
    //alignItems: 'center',
    backgroundColor: '#ecf0f1',
  },
  profileImage: {
    margin:0,
    width: '100%',
    height: 200, 
    alignItems: 'center',
    overflow: "hidden"
    
  },
  title:
  {
    marginTop:10,
    fontFamily: "HelveticaNeue",
    textTransform: "uppercase",
    color: "#52575D",
    fontSize: 18,
    marginBottom:15,
  },
const1:
{
  fontSize: 32,
  color: "#AEB5BC",
  textTransform: "uppercase",
  fontWeight: "500"
},
text: {
  marginTop:15,
  fontFamily: "HelveticaNeue",
  color: "#52575D",
  fontWeight: "200",
  fontSize: 14
},
text1:
{

  fontFamily: "HelveticaNeue",
  //color: "#52575D"
},

editbuttonContainer: {
  height:20,
  flexDirection: 'row',
  justifyContent: 'center',
  alignItems: 'center',
  marginBottom:20,
  marginTop:40,
  width:70,
  borderRadius: 30
},

editButton: {
  backgroundColor: "#FF8913",
},
button:{
  height:70,
  alignItems:'flex-end',
  marginRight:30
}
});

//export default App;
