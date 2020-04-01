import React, { Component } from 'react';

import {  ScrollView,StyleSheet, FlatList, Text, View, Alert, ActivityIndicator, Platform,TouchableHighlight} from 'react-native';
import { Button } from 'native-base';


export default class Project extends Component {

  static navigationOptions = {  


    title: 'Cart',  
    headerStyle: {  
        backgroundColor: '#f4511e',  
    },  

    headerTitleStyle: {  
        fontWeight: 'bold',  
    },  
}; 

constructor(props)
  {
    super(props);

    this.state = { 
    quantity:'hii',
    isLoading: true
  }
  }


  order = () => {

    
    

    return fetch('http://192.168.43.161/Ninelight/Order_List.php')
    .then((response) => response.json())
    .then((responseJson) => {
      Alert.alert(responseJson);
     ()=> this.props.navigation.goback();
    }).catch((error) => {
      console.error(error);
    });

    
  }


  componentDidMount() {
    
    return fetch('http://192.168.43.106/Ninelight/View_Cart.php')
      .then((response) => response.json())
      .then((responseJson) => {
        
        if(responseJson==="NO"){
                Alert.alert("Cart is Empty");
        }
        else{
        this.setState({
          isLoading: false,
          dataSource: responseJson
        }, function() {
          // In this block you can do something with new state.
        });
      }})
      .catch((error) => {
        console.error(error);
      });
  }

  
FlatListItemSeparator = () => {
    return (
      <View
        style={{
          height: 2,
          width: "100%",

          backgroundColor: "#ff8913",
        }}
      />
    );
  }


    render() {

        if (this.state.isLoading) {
          return (
            <View style={{flex: 1, paddingTop: 20}}>
              <ActivityIndicator />
            </View>
          );
        }

        const { navigation } = this.props;  
      const c_id = navigation.getParam('id', 'NO-User'); 

        return (
    
    <View style={styles.MainContainer}>
      
           <FlatList

           Vertical={true}
           
              data={ this.state.dataSource }
              
              ItemSeparatorComponent = {this.FlatListItemSeparator}
    
              renderItem={({item}) =>(<Text style={styles.FlatListItemStyle}  > {item.product_id} 
              
              
              
            <Text style={styles.fonts}>{"\n"}{"\n"}quantity: {item.quantity} {(c_id)} Total Price {item.total_price} </Text></Text>)}

      keyExtractor = { (item, index) => index.toString() }
            
              
             />
             
             <View>

             <TouchableHighlight style={[styles.buttonContainer, styles.signupButton]}  onPress={this.order}  >
              <Text style={styles.signUpText}>Confirm Order</Text>
            </TouchableHighlight>


               
               </View>
          
        
    </View>
          
        );
      }
    }

    const styles = StyleSheet.create({

        buttonContainer: {
    
            height: 50,
            flexDirection: 'row',
            justifyContent: 'center',
            alignItems: 'center',
            marginBottom: 20,
            marginTop: 20,
            width: 150,
            borderRadius: 30,
            marginLeft: '28%',
          },
          signupButton: {
            backgroundColor: "#FF8913",
          },
          signUpText: {
            color: 'white',
          },


          buttonContainer2: {
    
            height: 50,
            flexDirection: 'row',
            justifyContent: 'center',
            alignItems: 'center',
            marginBottom: 20,
            marginTop: 20,
            width: 150,
            borderRadius: 30,
            marginLeft: '28%',
          },
          signupButton2: {
            backgroundColor: "#FF8913",
          },
          signUpText2: {
            color: 'white',
          },
        MainContainer :{
        
        justifyContent: 'center',
        flex:1,
        backgroundColor:'#ecf0f1',
      
        paddingTop: (Platform.OS === 'ios') ? 20 : 0,
        
        },
        
        FlatListItemStyle: {
            padding: 10,
            fontSize: 25,
          },

          Flat: {
            flex: 1,
          },

          fonts: {
            fontSize:12,
          },
        
        });