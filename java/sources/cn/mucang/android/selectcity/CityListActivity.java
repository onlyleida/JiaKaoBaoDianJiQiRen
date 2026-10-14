package cn.mucang.android.selectcity;

import android.os.Bundle;
import androidx.fragment.app.Fragment;

/* JADX INFO: loaded from: classes4.dex */
public class CityListActivity extends f.a.a.e.a.a.b {
    @Override // f.a.a.e.a.a.b
    protected String g() {
        return "城市列表";
    }

    @Override // f.a.a.e.a.a.b, f.a.a.e.a.a.a, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        cn.mucang.android.selectcity.b0.a aVar = (cn.mucang.android.selectcity.b0.a) Fragment.instantiate(this, cn.mucang.android.selectcity.b0.a.class.getName(), null);
        this.fragment = aVar;
        replaceFragment(aVar);
    }
}
