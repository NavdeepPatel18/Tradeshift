import React, { Component } from 'react';
import {
  StyleSheet,
  Text,
  View,
  TextInput,
  Button,
  TouchableHighlight,
  Image,
  Alert,
  Picker,
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
      product_name: '',
      category_name: '',
      product_weight: '',
      product_price_distributor: '',
      product_price_shopkeeper: '',
    }
  }

  InsertuserRecordsToServer = () => {
    return fetch('http://192.168.43.106/Ninelight/Insertproduct.php',
      {
        method: 'POST',
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          product_name: this.state.product_name,
          category_name: this.state.category_name,
          product_weight: this.state.product_weight,
          product_price_distributor: this.state.product_price_distributor,
          product_price_shopkeeper: this.state.product_price_shopkeeper,
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
          <Picker style={styles.Picker} selectedValue={this.state.category_name} onValueChange={(itemValue, itemIndex) => this.setState({ category_name: itemValue })}>
            <Picker.Item label="Select your Category" value=""></Picker.Item>
            <Picker.Item label="Waferrs" value="Wafers"></Picker.Item>
            <Picker.Item label="Namkeen" value="Namkeen"></Picker.Item>
            <Picker.Item label="Western Snacks" value="Western Snacks"></Picker.Item>
          </Picker>
        </View>

        <View style={styles.inputContainer}>
          <TextInput style={styles.inputs}
            placeholder="Product Name"
            keyboardType="default"
            underlineColorAndroid='transparent'
            onChangeText={(product_name) => this.setState({ product_name })} />
        </View>

        <View style={styles.inputContainer}>
          <TextInput style={styles.inputs}
            placeholder="Product Weight(in Gram)"
            keyboardType="numeric"
            underlineColorAndroid='transparent'
            onChangeText={(product_weight) => this.setState({ product_weight })} />
        </View>

        <View style={styles.inputContainer}>
          <TextInput style={styles.inputs}
            placeholder="Product price for distributor(In Rs.)"
            keyboardType="numeric"
            underlineColorAndroid='transparent'
            onChangeText={(product_price_distributor) => this.setState({ product_price_distributor })} />
        </View>

        <View style={styles.inputContainer}>
          <TextInput style={styles.inputs}
            placeholder="Product price for shopkeeper(in Rs.)"
            keyboardType="numeric"
            underlineColorAndroid='transparent'
            onChangeText={(product_price_shopkeeper) => this.setState({ product_price_shopkeeper })} />
        </View>

        <TouchableHighlight style={[styles.buttonContainer, styles.signupButton]} onPress={this.InsertuserRecordsToServer}>
          <Text style={styles.signUpText}>Add Product</Text>
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
  Picker: {
    width: "100%",
  },
  inputContainer: {
    borderBottomColor: '#ffffff',
    backgroundColor: '#ffffff',
    borderRadius: 30,
    borderBottomWidth: 1,
    width: 270,
    height: 45,
    marginBottom: 20,
    flexDirection: 'row',
    alignItems: 'center'
  },
  inputs: {
    height: 45,
    marginLeft: 16,
    borderBottomColor: '#FFFFFF',
    flex: 1,
  },
  inputIcon: {
    width: 30,
    height: 30,
    marginLeft: 15,
    justifyContent: 'center',
    color: '#ff8913',
  },
  buttonContainer: {
    height: 45,
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
    marginBottom: 20,
    marginTop: 20,
    width: 150,
    borderRadius: 30,
  },
  signupButton: {
    backgroundColor: "#FF8913",
  },
  signUpText: {
    color: 'white',
  }
});