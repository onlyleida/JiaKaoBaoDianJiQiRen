package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;

/* JADX INFO: loaded from: classes.dex */
public class a extends j0 {

    @SuppressLint({"StaticFieldLeak"})
    private Application mApplication;

    public a(Application application) {
        this.mApplication = application;
    }

    public <T extends Application> T getApplication() {
        return (T) this.mApplication;
    }
}
