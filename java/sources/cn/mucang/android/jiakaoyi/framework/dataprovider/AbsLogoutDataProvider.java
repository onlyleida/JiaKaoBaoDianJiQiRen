package cn.mucang.android.jiakaoyi.framework.dataprovider;

import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbsLogoutDataProvider extends BaseDataProvider {
    public AbsLogoutDataProvider(Bundle bundle) {
        super(bundle);
    }

    public abstract void handleLogout();
}
