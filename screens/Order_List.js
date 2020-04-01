import React from 'react';  
import { StyleSheet, View, Button, TextInput, Text,Alert,TouchableHighlight} from 'react-native';  
  
export default class HomeScreen extends React.Component {  
  
    constructor(props) {   
        super(props);  
        this.state = {  
            quantity:0,
            username: '',  
            total_price:'',
        };  
    }  
    static navigationOptions = {  
        title: 'Order',  
        headerStyle: {  
            backgroundColor: '#f4511e',  
        },  
  
        headerTitleStyle: {  
            fontWeight: 'bold',  
        },  
    };  





    addtocart = () => {

        const { navigation } = this.props;  
      
      const product_id = navigation.getParam('product_id', 'Nothing');
      
      const price = navigation.getParam('price', 'Nothing');

      this.state.total_price= (this.state.quantity * price)

        if(this.state.quantity<=0){
            Alert.alert("Quantity must be greater than zero");
        }


        else{
            
              return fetch('http://192.168.43.106/Ninelight/Cart.php',
                {
                  method: 'POST',
                  headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json',
                  },
                  body: JSON.stringify({
                    product_id: product_id,
                    quantity: this.state.quantity,
                    total_price: this.state.total_price,
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
        const { navigation } = this.props;  
      const product_name = navigation.getParam('product_name', 'Nothing');
      const product_id = navigation.getParam('product_id', 'Nothing');
      const weight = navigation.getParam('product_weight', 'Nothing');
      const price = navigation.getParam('price', 'Nothing');
       
        return (  

            <View style={styles.container}> 
            
            <View style={styles.containers}>
            <Text style={styles.paragraph}>
            {(product_name)}
              
            </Text>
            </View>

        <View style={styles.cont1}>
        <Text>
          Weight:{(weight)}
        </Text>

        <Text>
          Price:{(price)}
        </Text>


        <Text>
          Type:
        </Text>
        </View>
 
         
     <View style={styles.inputContainer}>
          
          <TextInput style={styles.inputs}
              placeholder="Quantity"
              keyboardType="numeric"
              underlineColorAndroid='transparent'
              onChangeText={quantity => this.setState({ quantity })}/>
        </View>

        <TouchableHighlight style={[styles.buttonContainer, styles.signupButton]} onPress={this.addtocart}>
              <Text style={styles.signUpText}>Add to Cart</Text>
            </TouchableHighlight>  
        </View>  
    );  
    }
    
}
const styles = StyleSheet.create({  

    inputContainer: {
        borderBottomColor: '#ffffff',
        backgroundColor: '#ffffff',
        borderRadius:30,
        borderBottomWidth: 1,
        width:270,
        height:45,
        marginBottom:90,
        flexDirection: 'row',
        alignItems:'center'
    },
    inputs:{
        height:45,
        marginLeft:16,
        borderBottomColor: '#FFFFFF',
        flex:1,
    },
    buttonContainer: {
        marginLeft: 0,
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
      },
    container: {  
        flex: 1,  
        backgroundColor: '#ecf0f1',  
        alignItems: 'center',  
        padding: 16,  
    },  

    textInput: {  
        height: '10%',
        width: "25%",
        color:"red",
        borderColor: "gray",
        borderWidth: 1,
        fontSize:20,  
    },  

    buttonStyle:{  
        width: "70%",  
        marginTop: 50,  
        backgroundColor: "grey",
    },

    cont: {
      marginRight:'70%',
      marginTop: '20%',
      height:'10%',
    },

    cont1: {
    flex: 1,
    marginTop:'10%',
    marginRight:'75%',
    height: '50%',
    },

    containers: {
        flex: 1,
        justifyContent: 'center',
        marginTop:'10%',
    },

    paragraph: {
    margin: 24,
    fontSize: 18,
    fontWeight: 'bold',
    textAlign: 'center',
  },
});  