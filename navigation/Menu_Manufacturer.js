import React, { Component } from 'react';
import { View, Image, TouchableOpacity } from 'react-native';
import {createAppContainer} from 'react-navigation';
import {createDrawerNavigator} from 'react-navigation-drawer';
import {createStackNavigator} from 'react-navigation-stack';


import Dashboard from './Dashboard_Manufacturer';
import View_Category from '../screens/View_Category';
import Signup from '../screens/Signup';
import Viewuser from '../screens/View_User';
import Add_Category from '../screens/Add_Category';
import Add_Product from '../screens/Add_Product';


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
      title: 'Add Distributor',
      headerLeft: <NavigationDrawerStructure navigationProps={navigation} />,
      headerStyle: {
        backgroundColor: '#FF8913',
      },
      headerTintColor: '#fff',
    }),
  },
});

const Viewuser_StackNavigator = createStackNavigator({
  //All the screen from the Screen3 will be indexed here
  Fourth: {
    screen: Viewuser,
    navigationOptions: ({ navigation }) => ({
      title: 'My Distributor',
      headerLeft: <NavigationDrawerStructure navigationProps={navigation} />,
      headerStyle: {
        backgroundColor: '#FF8913',
      },
      headerTintColor: '#fff',
    }),
  },
});
 
const Add_Category_StackNavigator = createStackNavigator({
  //All the screen from the Screen3 will be indexed here
  Fourth: {
    screen: Add_Category,
    navigationOptions: ({ navigation }) => ({
      title: 'Add Category',
      headerLeft: <NavigationDrawerStructure navigationProps={navigation} />,
      headerStyle: {
        backgroundColor: '#FF8913',
      },
      headerTintColor: '#fff',
    }),
  },
});

const Add_Product_StackNavigator = createStackNavigator({
  //All the screen from the Screen3 will be indexed here
  Fourth: {
    screen: Add_Product,
    navigationOptions: ({ navigation }) => ({
      title: 'Add Product',
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
      drawerLabel: 'Add Distributor',
    },
  },
  
  Viewuser: {
    //Title
    screen: Viewuser_StackNavigator,
    navigationOptions: {
      drawerLabel: 'My Distributor',
    },
  },

  Add_Category: {
    //Title
    screen: Add_Category_StackNavigator,
    navigationOptions: {
      drawerLabel: 'Add Category',
    },
  },

  Add_Product: {
    //Title
    screen: Add_Product_StackNavigator,
    navigationOptions: {
      drawerLabel: 'Add Product',
    },
  },
},
{
  initialRouteName: 'Home',
}
);
 
export default createAppContainer(DrawerNavigatorExample);