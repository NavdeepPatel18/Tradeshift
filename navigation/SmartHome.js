import React from 'react';
import {createStackNavigator} from 'react-navigation-stack';

import Dashboard from '../screens/Dashboard';
import Setting from '../screens/Setting';
import Signup from '../screens/Signup';
import Login from '../screens/Login';
import addItem from '../screens/addItems';
import addcategory from '../screens/addcategory';
import ViewItems from '../screens/ViewItems';
import Menu from '../screens/Menu';
import Profile from '../screens/profile';

export default createStackNavigator(
  {
    Menu: {
      screen:Menu,
      navigationOptions:{
        header: null
      },
    },

    Profile: {
      screen:Profile,
      navigationOptions:{
        header: null
      },
    },
    Dashboard: {
      screen:Dashboard,
      // navigationOptions:{
      //   header: null
      // },
    },
    Setting: {
      screen:Setting,
      navigationOptions:{
        header: null
      },
    },
    Signup: {
      screen:Signup,
      navigationOptions:{
        header: null
      },
    },
    Login: {
      screen:Login,
      navigationOptions:{
        header: null
      },
    },
    addItem: {
      screen:addItem,
      navigationOptions:{
        header: null
      },
    },
    addcategory: {
      screen:addcategory,
      navigationOptions:{
        header: null
      },
    },
    ViewItems: {
      screen:ViewItems,
      navigationOptions:{
        header: null
      },
    }
  },
  {
    initialRouteName: 'Login',
  },
);
