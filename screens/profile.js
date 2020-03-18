import React, {Component} from 'react';  
import {Platform, StyleSheet, Image, ScrollView, TouchableHighlight, Text, View} from 'react-native';  
  
const instructions = Platform.select({  
  ios: 'Press Cmd+R to reload,\n' + 'Cmd+D or shake for dev menu',  
  android:  
    'Double tap R on your keyboard to reload,\n' +  
    'Shake or press menu button for dev menu',  
});  
  
export default class App extends Component {  


  onClickListener = (viewId) => {
    this.props.navigation.navigate(viewId);
  }
  
  render() {  
    return (  
      
      <View style={styles.container}>

<ScrollView showsVerticalScrollIndicator={false}>

<View style={styles.button}>
<TouchableHighlight style={[styles.editbuttonContainer, styles.editButton]} onPress={() =>this.onClickListener('Editprofile')} >
       <Text style={styles.signUpText}>Edit</Text>
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
        <Text style={[styles.text]}> Compney Name: </Text>
        <Text style={[styles.text1, { fontWeight: "200", fontSize: 20 }]}>Balaji</Text>
        <Text style={[styles.text]}> Email: </Text>
        <Text style={[styles.text1, { fontWeight: "200", fontSize: 20 }]}>balajinamkin@gmail.com</Text>
        <Text style={[styles.text]} >Contact no.: </Text>
        <Text style={[styles.text1, { fontWeight: "200", fontSize: 20 }]}>9825826134</Text>
        <Text style={[styles.text]}>Address: </Text>
        <Text style={[styles.text1, { fontWeight: "200", fontSize: 20 }]}>balaji namakin,ring road, rajkot</Text>
        
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
  width:50,
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
