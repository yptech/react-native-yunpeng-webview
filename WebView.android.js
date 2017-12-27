/**
 */
'use strict';

import React, {Component} from 'react';
import PropTypes from 'prop-types';
import {WebView, requireNativeComponent} from 'react-native';

export default class YPWebView extends Component {
  static propTypes = WebView.propTypes;

  render() {
    return (
      <WebView
        ref={w => this.webview = w}
        {...this.props}
        nativeConfig={{
          component: RCTYPWebView
        }}
      />
    );
  }

  postMessage(data) {
    this.webview.postMessage(data);
  }
}

const RCTYPWebView = requireNativeComponent(
  'RCTYPWebView',
  YPWebView,
  WebView.extraNativeComponentConfig
);
