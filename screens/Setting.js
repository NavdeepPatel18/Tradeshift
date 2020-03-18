import React, {Component} from 'react';

import {Text, StyleSheet, View,Button,TouchableHighlight} from 'react-native';


  class Setting extends Component {
    onClickListener = (viewId) => {
    this.props.navigation.navigate(viewId);
  }

  render() {
    return (
      
      <View style={styles.container}>
        
        <View style={styles.center}>
        <TouchableHighlight style={[styles.buttonContainer, styles.Button]} onPress={() => this.onClickListener('Menu')}>
         <Text style={styles.buttonfont}>Go To Dashboard</Text>
        </TouchableHighlight>
        </View>
        
      </View>
    );
  }
}

export default Setting;


const styles = StyleSheet.create({

    title:{
    fontSize: 20,
    textAlign: 'left',
    margin: 0,
    marginBottom: 200
  },



  container: {
    
    flex: 1,
    backgroundColor: '#ecf0f1',
  },

 /* welcome: {
    fontSize: 20,
    justifyContent: 'center',
    alignItems: 'center',
    fontWeight: '600',
    letterSpacing: -0.4,
    lineHeight: 20 ,
  },*/
center:{
  marginTop:280,
    justifyContent:'center',
     alignItems: 'center'
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
 Button: {
    backgroundColor: "#ff8913",
    
  },

  buttonfont:{
    color:'#ffffff'
  }
 
  
 
});
