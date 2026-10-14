package androidx.media;

import android.media.session.MediaSessionManager;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    c f1606a;

    public b(String str, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f1606a = new d(str, i, i2);
        } else {
            this.f1606a = new e(str, i, i2);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            return this.f1606a.equals(((b) obj).f1606a);
        }
        return false;
    }

    public int hashCode() {
        return this.f1606a.hashCode();
    }

    public b(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        this.f1606a = new d(remoteUserInfo);
    }
}
