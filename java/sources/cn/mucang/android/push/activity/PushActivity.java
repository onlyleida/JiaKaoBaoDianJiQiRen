package cn.mucang.android.push.activity;

import android.os.Bundle;
import cn.mucang.android.core.config.n;
import f.a.a.a.o.b;

/* JADX INFO: loaded from: classes4.dex */
public class PushActivity extends n {
    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "推送中转";
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        b.c().b(this, getIntent());
        finish();
    }
}
