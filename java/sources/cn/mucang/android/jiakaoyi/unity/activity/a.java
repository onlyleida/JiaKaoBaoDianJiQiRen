package cn.mucang.android.jiakaoyi.unity.activity;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import cn.mucang.android.core.config.n;
import com.unity3d.player.IUnityPlayerLifecycleEvents;
import com.unity3d.player.UnityPlayer;

/* JADX INFO: loaded from: classes4.dex */
public class a extends n implements IUnityPlayerLifecycleEvents {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected UnityPlayer f8796a;
    private int b = 0;
    private boolean c = false;

    @Override // androidx.appcompat.app.d, androidx.core.app.f, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return keyEvent.getAction() == 2 ? this.f8796a.injectEvent(keyEvent) : super.dispatchKeyEvent(keyEvent);
    }

    protected String g(String str) {
        return str;
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "unity页面";
    }

    @Override // androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f8796a.configurationChanged(configuration);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("unity");
        g(stringExtra);
        getIntent().putExtra("unity", stringExtra);
        cn.mucang.android.jiakaoyi.unity.a aVar = new cn.mucang.android.jiakaoyi.unity.a(this);
        this.f8796a = aVar;
        setContentView(aVar);
        this.f8796a.requestFocus();
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        this.f8796a.destroy();
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        return this.f8796a.injectEvent(motionEvent);
    }

    @Override // androidx.appcompat.app.d, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.f8796a.injectEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return this.f8796a.injectEvent(keyEvent);
    }

    @Override // androidx.fragment.app.d, android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.f8796a.lowMemory();
    }

    @Override // androidx.fragment.app.d, android.app.Activity
    protected void onNewIntent(Intent intent) {
        setIntent(intent);
        this.f8796a.newIntent(intent);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.f8796a.pause();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.c = true;
        this.f8796a.resume();
        int i = this.b + 1;
        this.b = i;
        if (i > 1) {
            this.f8796a.windowFocusChanged(true);
        }
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onStart() {
        super.onStart();
        if (this.c) {
            this.f8796a.resume();
            onWindowFocusChanged(true);
        }
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.f8796a.injectEvent(motionEvent);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        if (i == 15) {
            this.f8796a.lowMemory();
        }
    }

    @Override // com.unity3d.player.IUnityPlayerLifecycleEvents
    public void onUnityPlayerQuitted() {
    }

    @Override // com.unity3d.player.IUnityPlayerLifecycleEvents
    public void onUnityPlayerUnloaded() {
        moveTaskToBack(true);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        this.f8796a.windowFocusChanged(z);
    }
}
