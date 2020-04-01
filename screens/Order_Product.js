import React, { Component } from 'react';

import {  ScrollView,StyleSheet, FlatList, Text, View, Alert, ActivityIndicator, Platform} from 'react-native';


export default class Project extends Component {

  static navigationOptions = {  


    title: 'Order',  
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
    isLoading: true
  }
  }
  componentDidMount() {

    const { navigation } = this.props;  
    const c_id = navigation.getParam('category_id', 'NO-User'); 
    
    return fetch('http://192.168.43.106/Ninelight/View_Product.php',
    {
      method: 'POST',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
       id: c_id,
      })
    })
      .then((response) => response.json())
      .then((responseJson) => {
        this.setState({
         
          isLoading: false,
          dataSource: responseJson
        }, function() {
          // In this block you can do something with new state.
        });
      })
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

      

      const nn='Hii';

        return (
    
    <View style={styles.MainContainer}>
      
           <FlatList
           
              data={ this.state.dataSource }
              
              ItemSeparatorComponent = {this.FlatListItemSeparator}
    
              renderItem={({item}) => <Text style={styles.FlatListItemStyle} onPress={()=>this.props.navigation.navigate('Order_List', {  
                product_name: item.product_name,
            product_id: item.product_id,
            price:item.product_price_shopkeeper,
            product_weight: item.product_weight, })} > {item.product_name} 
            <Text style={styles.fonts}>{"\n"}{"\n"}Weight: {item.product_weight} Price: {item.product_price_shopkeeper} </Text></Text>}
            
              keyExtractor = { (item, index) => index.toString() }
              
             />
        
        
    </View>
          
        );
      }
    }

    const styles = StyleSheet.create({

        MainContainer :{
        
        justifyContent: 'center',
        flex:1,
        margin: 10,
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