import React from 'react';
import {createStackNavigator} from 'react-navigation-stack';

import Menu from './Menu_Manufacturer';
import Dashboard from './Dashboard_Manufacturer';
import Signup from '../screens/Signup';
import Add_Product from '../screens/Add_Product';
import Add_Category from '../screens/Add_Category';
import View_Category from '../screens/View_Category';
import View_Product from '../screens/View_Products';
import View_User from '../screens/View_User';

export default createStackNavigator(
  {
    Menu: {
      screen:Menu,
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
    Signup: {
      screen:Signup,
      // navigationOptions:{
      //   header: null
      // },
    },
    Add_Product: {
      screen:Add_Product,
      // navigationOptions:{
      //   header: null
      // },
    },
    Add_Category: {
      screen:Add_Category,
      // navigationOptions:{
      //   header: null
      // },
    },
    View_Category: {
      screen:View_Category,
      // navigationOptions:{
      //   header: null
      // },
    },
    View_Product: {
      screen:View_Product,
      // navigationOptions:{
      //   header: null
      // },
    },
    View_user: {
      screen:View_User,
      // navigationOptions:{
      //   header: null
      // },
    }
  },
  {
    initialRouteName: 'Menu',
  },
);
