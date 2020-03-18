import React from 'react';
import {createStackNavigator} from 'react-navigation-stack';

import {createAppContainer,StackNavigator} from 'react-navigation';

import SmartHome from './navigation/SmartHome';




const AppNavigator = createStackNavigator({
 
 SmartHomes: {
   screen:SmartHome,
    navigationOptions:{
   header: null
 },
},
})

 //const MainNavigation = StackNavigator({
  //headerMode: 'none',
  //navigationOptions: {
    //headerVisible: false,
  //}
 //}
//);



const AppContainer = createAppContainer(AppNavigator);

export default AppContainer;