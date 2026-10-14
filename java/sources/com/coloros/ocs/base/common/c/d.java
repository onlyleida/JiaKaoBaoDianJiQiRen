package com.coloros.ocs.base.common.c;

import android.os.Handler;
import com.coloros.ocs.base.common.AuthResult;

/* JADX INFO: loaded from: classes5.dex */
public interface d {
    void a(l lVar);

    AuthResult b();

    <T> void c(g<T> gVar);

    void connect();

    void d(f fVar, Handler handler);

    void disconnect();

    boolean isConnected();
}
