package com.nirvana.tools.core;

import android.content.Context;
import android.util.Log;

/* JADX INFO: loaded from: classes6.dex */
public abstract class BaseDelegate {
    private static final String TAG = "com.nirvana.tools.core.BaseDelegate";
    protected static volatile Boolean sComponentClassExist;

    public BaseDelegate() {
        Boolean bool = Boolean.FALSE;
        if (sComponentClassExist == null) {
            Context context = ComponentSdkCore.sApplicationContext;
            if (context == null) {
                Log.e(TAG, "ComponentSdkCore.sApplicationContext is null!");
                sComponentClassExist = bool;
                return;
            }
            try {
                context.getClassLoader().loadClass(getSubClassName());
                sComponentClassExist = Boolean.TRUE;
            } catch (ClassNotFoundException unused) {
                Log.d(TAG, "Load class " + getSubClassName() + " failed!");
                sComponentClassExist = bool;
            }
        }
    }

    protected abstract String getSubClassName();
}
