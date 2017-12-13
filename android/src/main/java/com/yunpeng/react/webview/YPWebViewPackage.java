package com.yunpeng.react.webview;

import com.facebook.react.ReactPackage;
import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.uimanager.ViewManager;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class YPWebViewPackage implements ReactPackage {

  @Override
  public List<ViewManager> createViewManagers(ReactApplicationContext reactContext) {
    List<ViewManager> modules = new ArrayList<>();

    modules.add(new YPWebViewManager());
    return modules;
  }

  @Override
  public List<NativeModule> createNativeModules(
                              ReactApplicationContext reactContext) {

    return Collections.emptyList();
  }

}
