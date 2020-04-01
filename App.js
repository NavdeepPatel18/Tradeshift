import React from 'react';
import { createStackNavigator } from 'react-navigation-stack';

import { createAppContainer, StackNavigator } from 'react-navigation';

import SmartHomes_Distributor from './navigation/SmartHome_Distributor';
import SmartHomes_Manufacturer from './navigation/SmartHome_Manufacturer';
import SmartHomes_Shopkeeper from './navigation/SmartHome_Shopkeeper';
import Login from './screens/Login';




const AppNavigator = createStackNavigator({

  Login: {
    screen: Login,
    navigationOptions: {
      header: null
    },
  },
  SmartHomes_Manufacturer: {
    screen: SmartHomes_Manufacturer,
    navigationOptions: {
      header: null
    },
  },
  SmartHomes_Distributor: {
    screen: SmartHomes_Distributor,
    navigationOptions: {
      header: null
    },
  },
  SmartHomes_Shopkeeper: {
    screen: SmartHomes_Shopkeeper,
    navigationOptions: {
      header: null
    },
  },
},
  {
    initialRouteName: 'Login',
  },
)

const AppContainer = createAppContainer(AppNavigator);

export default AppContainer;
