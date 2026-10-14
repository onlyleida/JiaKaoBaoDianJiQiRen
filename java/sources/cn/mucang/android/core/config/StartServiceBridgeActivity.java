package cn.mucang.android.core.config;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class StartServiceBridgeActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            startService((Intent) getIntent().getParcelableExtra("key.intent"));
        } catch (Exception unused) {
        }
        finish();
    }
}
