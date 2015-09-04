/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 */
'use strict';

var React = require('react-native');
var {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  requireNativeComponent
} = React;

var CaptureView = require('NativeModules').CaptureView;

var CaptureViewExample = React.createClass({
  render: function() {
    return (
      <View style={styles.container}>
        <Text style={styles.avoid}>This should not be captured.</Text>
        <CaptureView>
          <Text style={styles.welcome}>
            Welcome to React Native!
          </Text>
        </CaptureView>
      </View>
    );
  }
});

var styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  avoid: {
    color: '#FF0000',
    fontSize: 20
  },
  welcome: {
    fontSize: 50,
    textAlign: 'center',
    margin: 10,
  }
});

AppRegistry.registerComponent('CaptureViewExample', () => CaptureView);
