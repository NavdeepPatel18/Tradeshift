import React, { Component } from 'react';

import {  ScrollView,StyleSheet, FlatList, Text, View, Alert, ActivityIndicator, Platform} from 'react-native';


export default class Project extends Component {

    static navigationOptions={
        header: null
      }

constructor(props)
  {
    super(props);

    this.state = { 
    isLoading: true
  }
  }
  componentDidMount() {
    
    return fetch('http://192.168.43.106/Ninelight/Viewproduct.php')
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

  GetFlatListItem (productName) {
   
    Alert.alert(productName);
  
    }

    render() {

        if (this.state.isLoading) {
          return (
            <View style={{flex: 1, paddingTop: 20}}>
              <ActivityIndicator />
            </View>
          );
        }
    
        return (
    
    <View style={styles.MainContainer}>
      
           <FlatList
           
              data={ this.state.dataSource }
              
              ItemSeparatorComponent = {this.FlatListItemSeparator}
    
              renderItem={({item}) => <Text style={styles.FlatListItemStyle} onPress={this.GetFlatListItem.bind(this, item.productName)} > {item.productName} </Text>}
    
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
            fontSize: 20,
            height: 50,
          },
        
        });