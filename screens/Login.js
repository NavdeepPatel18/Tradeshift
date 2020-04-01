import React, { Component } from 'react';
import {
  StyleSheet,
  Text,
  View,
  TextInput,
  Button,
  TouchableHighlight,
  Image,
  Alert
} from 'react-native';

import MaterialIcons from 'react-native-vector-icons/MaterialIcons';
import Entypo from 'react-native-vector-icons/Entypo'


export default class SignUpView extends Component {  

  
onClickListener = (viewId) => {
    this.props.navigation.navigate(viewId);
  }

  constructor(props) {
    super(props);
    this.state = {
      email_id:'',
      password: '',
    }
  }

  CheckLogin = () =>{
    return fetch('http://192.168.43.106/Ninelight/checkuser.php', 
    {
      method: 'POST',
      headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({
      email_id: this.state.email_id,
      password  : this.state.password
    })
  }).then((response) => response.json())

    .then((responseJson) => {
       // If server response message same as Data Matched
       if(responseJson == 1)
        {
            //Then open Profile activity and send user email to profile activity.
            this.onClickListener('SmartHomes_Shopkeeper');
 
        }
        else if(responseJson == 2)
        {
            //Then open Profile activity and send user email to profile activity.
            this.onClickListener('SmartHomes_Distributor');
 
        } 
        else if(responseJson == 3)
        {
            //Then open Profile activity and send user email to profile activity.
            this.onClickListener('SmartHomes_Manufacturer');
 
        }  
        else{
 
          Alert.alert(responseJson);
        }
      }).catch((error) => {
        console.error(error);
    });
  }

  render() {
    return (
      <View style={styles.container}>
       <View style={styles.center}>
        <View style={styles.inputContainer}>
          <MaterialIcons style={styles.inputIcon} name="email" size={32} color="lightblue" />
          <TextInput style={styles.inputs}
              placeholder="Email"
              keyboardType="email-address"
              underlineColorAndroid='transparent'
              onChangeText={(email_id) => this.setState({email_id})}/>
        </View>
        
        <View style={styles.inputContainer}>
         <Entypo style={styles.inputIcon} name="key" size={32} />
          <TextInput style={styles.inputs}
              placeholder="Password"
              secureTextEntry={true}
              underlineColorAndroid='transparent'
              onChangeText={(password) => this.setState({password})}/>
        </View>

          <TouchableHighlight style={[styles.loginbuttonContainer, styles.loginButton]} onPress={this.CheckLogin}>
            <Text style={styles.signUpText}>Login</Text>
          </TouchableHighlight>
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({

    center:{
    marginTop:40,
    justifyContent: 'center',
    alignItems: 'center',
    },
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#ecf0f1',
  },
  inputContainer: {
      borderBottomColor: '#ffffff',
      backgroundColor: '#ffffff',
      borderRadius:30,
      borderBottomWidth: 1,
      width:270,
      height:45,
      marginBottom:20,
      flexDirection: 'row',
      alignItems:'center'
  },
  inputs:{
      height:45,
      marginLeft:16,
      borderBottomColor: '#FFFFFF',
      flex:1,
  },
  inputIcon:{
    width:30,
    height:30,
    marginLeft:15,
    justifyContent: 'center',
    color: '#ff8913',
  },

  signupbuttonContainer: {
    height:35,
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
    marginBottom:20,
    marginTop:150,
    width:150,

  },

   loginbuttonContainer: {
    height:45,
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
    marginBottom:20,
    marginTop:20,
    width:150,
    borderRadius:30,
  },
  
  signupButton: {
      width:'50%',
    backgroundColor: "#979a9a",
  },

  loginButton: {
    backgroundColor: "#FF8913",
  },
  signUpText: {
    color: 'white',
  }
});