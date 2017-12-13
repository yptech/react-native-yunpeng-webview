package com.yunpeng.react.webview;

import com.facebook.react.views.webview.ReactWebViewManager;
import com.facebook.react.uimanager.annotations.ReactProp;

import android.webkit.WebView;

@ReactModule(name = YPWebViewManager.REACT_CLASS)
public class YPWebViewManager extends ReactWebViewManager {

  protected static final String REACT_CLASS = "RCTYPWebView";

  @ReactProp(name = "scalesPageToFit")
  @Override
  public void setScalesPageToFit(WebView view, boolean enabled) {
    view.getSettings().setUseWideViewPort(enabled);
  }

}
