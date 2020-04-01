import React, { Component } from 'react';
import { View, Image, TouchableOpacity } from 'react-native';
import {createAppContainer} from 'react-navigation';
import {createDrawerNavigator} from 'react-navigation-drawer';
import {createStackNavigator} from 'react-navigation-stack';


import Dashboard from './Dashboard_Distributor';
import View_Category from '../screens/View_Category';
import Signup from '../screens/Signup';
import View_User from '../screens/View_User';



class NavigationDrawerStructure extends Component {
  //Structure for the navigatin Drawer
  toggleDrawer = () => {
    //Props to open/close the drawer
    this.props.navigationProps.toggleDrawer();
  };
  render() {
    return (
      <View style={{ flexDirection: 'row' }}>
        <TouchableOpacity onPress={this.toggleDrawer.bind(this)}>
          {/*Donute Button Image */}
          <Image
            source={require('../image/drawer.png')}
            style={{ width: 25, height: 25, marginLeft: 5 }}
          />
        </TouchableOpacity>
      </View>
    );
  }
}
 
const Dashboard_StackNavigator = createStackNavigator({
  //All the screen from the Screen1 will be indexed here
  First: {
    screen: Dashboard,
    navigationOptions: ({ navigation }) => ({
      title: 'Home',
      headerLeft: <NavigationDrawerStructure navigationProps={navigation} />,
      headerStyle: {
        backgroundColor: '#FF8913',
      },
      headerTintColor: '#fff',
    }),
  },
});
 
const View_Category_StackNavigator = createStackNavigator({
  //All the screen from the Screen3 will be indexed here
  Second: {
    screen: View_Category,
    navigationOptions: ({ navigation }) => ({
      title: 'View Product',
      headerLeft: <NavigationDrawerStructure navigationProps={navigation} />,
      headerStyle: {
        backgroundColor: '#FF8913',
      },
      headerTintColor: '#fff',
    }),
  },
});

const Signup_StackNavigator = createStackNavigator({
  //All the screen from the Screen3 will be indexed here
  Third: {
    screen: Signup,
    navigationOptions: ({ navigation }) => ({
      title: 'Add Shopkeeper',
      headerLeft: <NavigationDrawerStructure navigationProps={navigation} />,
      headerStyle: {
        backgroundColor: '#FF8913',
      },
      headerTintColor: '#fff',
    }),
  },
});

const View_User_StackNavigator = createStackNavigator({
  //All the screen from the Screen3 will be indexed here
  Seventh: {
    screen: View_User,
    navigationOptions: ({ navigation }) => ({
      title: 'My Ahopkeeper',
      headerLeft: <NavigationDrawerStructure navigationProps={navigation} />,
      headerStyle: {
        backgroundColor: '#FF8913',
      },
      headerTintColor: '#fff',
    }),
  },
});
 
const DrawerNavigatorExample = createDrawerNavigator({
  //Drawer Optons and indexing
  Home: {
    //Title
    screen: Dashboard_StackNavigator,
    navigationOptions: {
      drawerLabel: 'Home',
    },
  },

  View_Category: {
    //Title
    screen: View_Category_StackNavigator,
    navigationOptions: {
      drawerLabel: 'View Product',
    },
  },

  Signup: {
    //Title
    screen: Signup_StackNavigator,
    navigationOptions: {
      drawerLabel: 'Add Shopkeeper',
    },
  },
  
  View_User: {
    //Title
    screen: View_User_StackNavigator,
    navigationOptions: {
      drawerLabel: 'My Shopkeeper',
    },
  },
},
{
  initialRouteName: 'Home',
}
);
 
export default createAppContainer(DrawerNavigatorExample);