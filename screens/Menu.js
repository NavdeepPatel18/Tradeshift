import React, { Component } from 'react';
import { View, Image, TouchableOpacity } from 'react-native';
import {createAppContainer} from 'react-navigation';
import {createDrawerNavigator} from 'react-navigation-drawer';
import {createStackNavigator} from 'react-navigation-stack';
import Dashboard from './Dashboard';
import Setting from './Setting';
import addItem from './addItems';
import ViewItems from './ViewItems';
import Signup from './Signup';
import Distributors from './Distributors';
 
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
 
const addItem_StackNavigator = createStackNavigator({
  //All the screen from the Screen2 will be indexed here
  Second: {
    screen: addItem,
    navigationOptions: ({ navigation }) => ({
      title: 'AddItem',
      headerLeft: <NavigationDrawerStructure navigationProps={navigation} />,
      headerStyle: {
        backgroundColor: '#FF8913',
      },
      headerTintColor: '#fff',
    }),
  },
});
 
const Distributors_StackNavigator = createStackNavigator({
  //All the screen from the Screen3 will be indexed here
  Third: {
    screen: Distributors,
    navigationOptions: ({ navigation }) => ({
      title: 'Distributors',
      headerLeft: <NavigationDrawerStructure navigationProps={navigation} />,
      headerStyle: {
        backgroundColor: '#FF8913',
      },
      headerTintColor: '#fff',
    }),
  },
});

const ViewItem_StackNavigator = createStackNavigator({
  //All the screen from the Screen3 will be indexed here
  Fourth: {
    screen: ViewItems,
    navigationOptions: ({ navigation }) => ({
      title: 'ViewItem',
      headerLeft: <NavigationDrawerStructure navigationProps={navigation} />,
      headerStyle: {
        backgroundColor: '#FF8913',
      },
      headerTintColor: '#fff',
    }),
  },
});

const Setting_StackNavigator = createStackNavigator({
  //All the screen from the Screen3 will be indexed here
  Fifth: {
    screen: Setting,
    navigationOptions: ({ navigation }) => ({
      title: 'Setting',
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
  Sixth: {
    screen: Signup,
    navigationOptions: ({ navigation }) => ({
      title: 'Add User',
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
  AddItems: {
    //Title
    screen: addItem_StackNavigator,
    navigationOptions: {
      drawerLabel: 'AddItem',
    },
  },
  Distributors: {
    //Title
    screen: Distributors_StackNavigator,
    navigationOptions: {
      drawerLabel: 'Distributors',
    },
  },

  ViewItems: {
    //Title
    screen: ViewItem_StackNavigator,
    navigationOptions: {
      drawerLabel: 'ViewItem',
    },
  },
  Setting: {
    //Title
    screen: Setting_StackNavigator,
    navigationOptions: {
      drawerLabel: 'Setting',
    },
  },
  Signup: {
    //Title
    screen: Signup_StackNavigator,
    navigationOptions: {
      drawerLabel: 'Setting',
    },
  },
},
{
  initialRouteName: 'Home',
}
);
 
export default createAppContainer(DrawerNavigatorExample);