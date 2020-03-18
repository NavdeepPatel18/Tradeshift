import React, { Component } from 'react';
import { Text, StyleSheet, View, Button, TouchableHighlight, TouchableOpacity } from 'react-native';


class Dashboard extends Component {

  onClickListener = (viewId) => {
    this.props.navigation.navigate(viewId);
  }

  render() {
    return (

      <View style={styles.container}>

        <View style={styles.center1}>

          <TouchableOpacity style={styles.icon} activeOpacity={0.5} onPress={() => this.onClickListener('Profile')}><Text style={styles.baseText}>
            Profile</Text>
          </TouchableOpacity>

          <TouchableOpacity style={styles.icon} activeOpacity={0.5} onPress={() => this.onClickListener('Setting')}><Text style={styles.baseText}>Report</Text>
          </TouchableOpacity>
        </View>

        <View style={styles.center}>
          <TouchableOpacity style={styles.icon} activeOpacity={0.5} onPress={() => this.onClickListener('ViewItems')}><Text style={styles.baseText}>View Items</Text>
          </TouchableOpacity>

          <TouchableOpacity style={styles.icon} activeOpacity={0.5} onPress={() => this.onClickListener('Signup')}><Text style={styles.baseText}>Add Distributor</Text>
          </TouchableOpacity>
        </View>

        <View style={styles.center}>

          <TouchableOpacity style={styles.icon} activeOpacity={0.5} onPress={() => this.onClickListener('addItem')}><Text style={styles.baseText}>Add Items</Text>
          </TouchableOpacity>

          <TouchableOpacity style={styles.icon} activeOpacity={0.5} onPress={() => this.onClickListener('addcategory')}><Text style={styles.baseText}>Add Category</Text>
          </TouchableOpacity>
        </View>
      </View>
    );
  }
}

export default Dashboard;


const styles = StyleSheet.create({

  title: {

    fontSize: 20,
    textAlign: 'left',
    margin: '0%',

    marginBottom: '0%',
  },

  container: {

    flex: 1,
    backgroundColor: '#ecf0f1',
  },

  icon: {
    flexDirection: 'row',
    marginLeft: '3.5%',
    alignItems: 'center',
    backgroundColor: '#ff8913',
    borderWidth: 0.5,
    borderColor: '#fff',
    height: 145,
    width: 150,
    borderRadius: 25,
    margin: 5,
  },



  baseText: {
    fontSize: 20,
    marginLeft: 31,
    marginRight: 20,
    justifyContent: 'center',
    alignItems: 'center',
    color: 'white',
  },


  center1: {

    marginLeft: 10,
    marginTop: '15%',
    //justifyContent:'center',
    flexDirection: 'row',
  },
  center: {

    marginLeft: 10,
    marginTop: '3%',
    //justifyContent:'center',
    flexDirection: 'row',
  },

  inputIcon: {
    width: 100,
    height: 100,
    marginLeft: 15,
    justifyContent: 'center'
  },


  buttonContainer: {
    height: 45,
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
    marginBottom: 20,
    marginTop: 20,
    width: 90,
    height: 90,
    borderRadius: 20,
  },


});
