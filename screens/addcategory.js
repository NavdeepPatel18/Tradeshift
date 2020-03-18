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
      category_name:'',
    }
  }

  InsertcategoryToServer = () =>{
  return fetch('http://192.168.43.106/Ninelight/Insertcategory.php', 
  {
    method: 'POST',
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({
      category_name: this.state.category_name
    })
  }).then((response) => response.json())
    .then((responseJson) => {
        // Showing response message coming from server after inserting records.
        Alert.alert(responseJson);
    }).catch((error) => {
        console.error(error);
    });
}
  render() {
    return (
      <View style={styles.container}>
        

        <View style={styles.inputContainer}>
          
          <TextInput style={styles.inputs}
              placeholder="Category Name"
              keyboardType="default"
              underlineColorAndroid='transparent'
              onChangeText={(category_name) => this.setState({category_name})}/>
        </View>
        <TouchableHighlight style={[styles.buttonContainer, styles.signupButton]} onPress={this.InsertcategoryToServer}>
          <Text style={styles.signUpText}>Add Category</Text>
        </TouchableHighlight>
      </View>
    );
  }
}




const styles = StyleSheet.create({
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
  buttonContainer: {
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
    backgroundColor: "#FF8913",
  },
  signUpText: {
    color: 'white',
  }
});