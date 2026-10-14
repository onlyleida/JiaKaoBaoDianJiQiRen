package com.tencent.open.a;

import android.os.Bundle;
import java.io.Serializable;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public class b implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap<String, String> f14076a = new HashMap<>();

    public b(Bundle bundle) {
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                this.f14076a.put(str, bundle.getString(str));
            }
        }
    }
}
