import React, { Component } from 'react';
import {
  StyleSheet,
  Text,
  View,
  TextInput,
  ScrollView,
  TouchableHighlight,
  Alert,
  Picker,
} from 'react-native';


export default class SignUpView extends Component {

  static navigationOptions = {  


    title: 'Add Customer',  
    headerStyle: {  
        backgroundColor: '#f4511e',  
    },  

    headerTitleStyle: {  
        fontWeight: 'bold',  
    },  
}; 

  onClickListener = (viewId) => {
    this.props.navigation.navigate(viewId);
  }

  constructor(props) {
    super(props);
    this.state = {
      first_name: '',
      last_name: '',
      user_name: '',
      email_id: '',
      password: '',
      phone_no: '',
      area_street: '',
      village: '',
      city: '',
      district: '',
      state: '',
      country: '',
      pincode: '',
      shop_name: ''
    }
  }

  checkdetail = () => {
    let reg = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

    if (this.state.first_name == "") {
      Alert.alert("Please Enter Firstname!");
    }

    else if (this.state.last_name == "") {
      Alert.alert("Please Enter Lastname!");
    }

    else if (this.state.user_name == "") {
      Alert.alert("Please Enter Username!");
    }

    else if (this.state.email_id == "") {
      Alert.alert("Please Enter Email Address!");
    }

    else if (reg.test(this.state.email_id) === false) {
      Alert.alert("Email is Not Valid!");

    }

    else if (this.state.password == "") {

      Alert.alert("Please Enter Password!");
    }

    else if (this.state.confpassword == "") {

      Alert.alert("Please Enter Confirm Password!");
    }

    else if (this.state.password.length < 8 || this.state.password.length > 8) {
      Alert.alert("Password Should be length of 8 character!");

    }

    else if (this.state.password != this.state.confpassword) {
      Alert.alert("Password and Confirm Password are not same!");

    }

    else if (this.state.phone_no == "") {
      Alert.alert("Please Enter Phone no.!");
    }

    else if (this.state.phone_no.length < 10 || this.state.phone_no.length > 10) {
      Alert.alert("Phone no. Should be length of 10 digits!");

    }

    else if (this.state.area_street == "") {
      Alert.alert("Please Enter Proper Area Street!");
    }

    else if (this.state.city == "") {
      Alert.alert("Please Select Your City!");
    }

    else if (this.state.district == "") {
      Alert.alert("Please Select Your District!");
    }

    else if (this.state.state == "") {
      Alert.alert("Please Select Your State!");
    }

    else if (this.state.country == "") {
      Alert.alert("Please Select Your Country!");
    }

    else if (this.state.pincode == "") {
      Alert.alert("Please Enter Pincode!");
    }

    else if (this.state.pincode.length < 6 || this.state.pincode.length > 6) {
      Alert.alert("Pincode Should be length of 6 digits!");

    }

    else if (this.state.shop_name == "") {
      Alert.alert("Please Enter Shopename!");
    }

    else{
  //   else {
  //     this.AddUser;
  //   }

  // }

  // AddUser = () => {
    return fetch('http://192.168.43.106/Ninelight/Insertuser.php',
      {
        method: 'POST',
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          first_name: this.state.first_name,
          last_name: this.state.last_name,
          user_name: this.state.user_name,
          email_id: this.state.email_id,
          password: this.state.password,
          phone_no: this.state.phone_no,
          area_street: this.state.area_street,
          village: this.state.village,
          city: this.state.city,
          district: this.state.district,
          state: this.state.state,
          country: this.state.country,
          pincode: this.state.pincode,
          shop_name: this.state.shop_name
        })
      }).then((response) => response.json())
      .then((responseJson) => {
        Alert.alert(responseJson);
      }).catch((error) => {
        console.error(error);
      });
    }
  }
  render() {
    return (


      <View style={styles.container}>
        <ScrollView showsVerticalScrollIndicator={false}>

          <View style={styles.scroll}>
            <View style={styles.inputContainer}>
              <TextInput style={styles.inputs}
                placeholder="First Name"
                keyboardType="default"
                underlineColorAndroid='transparent'
                onChangeText={(first_name) => this.setState({ first_name })} />
            </View>

            <View style={styles.inputContainer}>
              <TextInput style={styles.inputs}
                placeholder="Last Name"
                keyboardType="default"
                underlineColorAndroid='transparent'
                onChangeText={(last_name) => this.setState({ last_name })} />
            </View>

            <View style={styles.inputContainer}>
              <TextInput style={styles.inputs}
                placeholder="User Name"
                keyboardType="default"
                underlineColorAndroid='transparent'
                onChangeText={(user_name) => this.setState({ user_name })} />
            </View>

            <View style={styles.inputContainer}>
              <TextInput style={styles.inputs}
                placeholder="Email ID"
                keyboardType="email-address"
                underlineColorAndroid='transparent'
                onChangeText={(email_id) => this.setState({ email_id })} />
            </View>

            <View style={styles.inputContainer}>
              <TextInput style={styles.inputs}
                placeholder="Password"
                secureTextEntry={true}
                underlineColorAndroid='transparent'
                onChangeText={(password) => this.setState({ password })} />
            </View>

            <View style={styles.inputContainer}>
              <TextInput style={styles.inputs}
                placeholder="Confirm Password"
                secureTextEntry={true}
                underlineColorAndroid='transparent'
                onChangeText={(confpassword) => this.setState({ confpassword })} />
            </View>

            <View style={styles.inputContainer}>
              <TextInput style={styles.inputs}
                placeholder="Phone No."
                keyboardType="numeric"
                underlineColorAndroid='transparent'
                onChangeText={(phone_no) => this.setState({ phone_no })} />
            </View>

            <View style={styles.inputContainer}>
              <TextInput style={styles.inputs}
                placeholder="Area and Street"
                keyboardType="default"
                underlineColorAndroid='transparent'
                onChangeText={(area_street) => this.setState({ area_street })} />
            </View>

            <View style={styles.inputContainer}>
              <TextInput style={styles.inputs}
                placeholder="Village"
                keyboardType="default"
                underlineColorAndroid='transparent'
                onChangeText={(village) => this.setState({ village })} />
            </View>

            <View style={styles.inputContainer}>
              <TextInput style={styles.inputs}
                placeholder="City Or Town"
                keyboardType="default"
                underlineColorAndroid='transparent'
                onChangeText={(city) => this.setState({ city })} />
            </View>

            <View style={styles.inputContainer}>
              <Picker style={styles.Picker} selectedValue={this.state.district} onValueChange={(itemValue, itemIndex) => this.setState({ district: itemValue })}>
                <Picker.Item label="Select your district" value=""></Picker.Item>
                <Picker.Item label="Junagadh" value="Junagadh"></Picker.Item>
                <Picker.Item style={styles.itempick} label="Rajkot" value="Rajkot"></Picker.Item>
                <Picker.Item label="Ahmedabad" value="Ahmedabad"></Picker.Item>
                <Picker.Item label="Nadiad" value="Nadiad"></Picker.Item>
                <Picker.Item label="Anand" value="Anand"></Picker.Item>
                <Picker.Item label="Vadodara" value="Vadodara"></Picker.Item>
              </Picker>
            </View>

            <View style={styles.inputContainer}>
              <Picker style={styles.Picker} selectedValue={this.state.state} onValueChange={(itemValue, itemIndex) => this.setState({ state: itemValue })}>
                <Picker.Item label="Select your state" value=""></Picker.Item>
                <Picker.Item label="Gujarat" value="Gujarat"></Picker.Item>
              </Picker>
            </View>

            <View style={styles.inputContainer}>
              <Picker style={styles.Picker} selectedValue={this.state.country} onValueChange={(itemValue, itemIndex) => this.setState({ country: itemValue })}>
                <Picker.Item label="Select your country" value=""></Picker.Item>
                <Picker.Item label="India" value="India"></Picker.Item>
              </Picker>
            </View>

            <View style={styles.inputContainer}>
              <TextInput style={styles.inputs}
                placeholder="Pincode"
                keyboardType="numeric"
                underlineColorAndroid='transparent'
                onChangeText={(pincode) => this.setState({ pincode })} />
            </View>
            <View style={styles.inputContainer}>
              <TextInput style={styles.inputs}
                placeholder="Shopname"
                keyboardType="default"
                underlineColorAndroid='transparent'
                onChangeText={(shop_name) => this.setState({ shop_name })} />
            </View>

            <TouchableHighlight style={[styles.buttonContainer, styles.signupButton]} onPress={this.checkdetail}>
              <Text style={styles.signUpText}>Sign up</Text>
            </TouchableHighlight>
          </View>
        </ScrollView>
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

  itempick: {

  },

  scroll: {
    marginTop: 100,
  },

  Picker: {
    width: "100%",
  },

  inputContainer: {
    borderBottomColor: '#ffffff',
    borderBottomWidth: 2,
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

  buttonContainer: {
    marginLeft: 50,
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