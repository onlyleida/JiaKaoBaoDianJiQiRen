package cn.mucang.jiakaoyi.uilib.api.cache;

import cn.mucang.android.core.api.cache.impl.e;

/* JADX INFO: loaded from: classes5.dex */
public class f extends e {
    @Override // cn.mucang.android.core.api.cache.impl.e
    public boolean b(String str) {
        return str.equals("serialNumber") || str.equals("deviceNum") || str.equals("hardwareId") || str.equals("kemu");
    }
}
