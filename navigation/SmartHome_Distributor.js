import React from 'react';
import {createStackNavigator} from 'react-navigation-stack';

import Menu from './Menu_Distributor';
import Dashboard from './Dashboard_Distributor';
import Signup from '../screens/Signup';
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
    View_User: {
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
