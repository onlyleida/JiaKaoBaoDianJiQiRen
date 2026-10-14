package f.a.a.a.storage;

import android.os.FileObserver;
import android.system.Os;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import com.amap.api.fence.GeoFence;
import com.mobile.auth.BuildConfig;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: f.a.a.a.r.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f*\u0001\n\b\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0003H\u0002J\b\u0010\u0017\u001a\u00020\u0011H\u0016J\u0012\u0010\u0018\u001a\u00020\u00052\b\u0010\u0019\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u000fH\u0016J\b\u0010\u001c\u001a\u00020\u0005H\u0016R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\f\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/core/storage/ShareMultiProcessStorage;", "Lcn/mucang/android/core/storage/Storage;", Constant.PROTOCOL_WEBVIEW_NAME, "", "logEnable", "", "(Ljava/lang/String;Z)V", "internalFileStorage", "Lcn/mucang/android/core/storage/InternalFileStorage;", "observer", "cn/mucang/android/core/storage/ShareMultiProcessStorage$observer$1", "Lcn/mucang/android/core/storage/ShareMultiProcessStorage$observer$1;", "released", "strCache", "valueChangedListener", "Lcn/mucang/android/core/storage/ValueChangedListener;", "clear", "", "doGet", "force", "get", BuildConfig.FLAVOR_type, SocialConstants.PARAM_SEND_MSG, "release", "save", "string", "setValueChangedListener", "l", "valid", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class ShareMultiProcessStorage implements Storage {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f14483a;
    private final boolean b;
    private ValueChangedListener c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f14484d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final InternalFileStorage f14485e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f14486f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a f14487g;

    /* JADX INFO: renamed from: f.a.a.a.r.e$a */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/core/storage/ShareMultiProcessStorage$observer$1", "Landroid/os/FileObserver;", "onEvent", "", GeoFence.BUNDLE_KEY_FENCESTATUS, "", "path", "", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends FileObserver {
        a(String str, int i) {
            super(str, i);
        }

        @Override // android.os.FileObserver
        public void onEvent(int event, String path) {
            ShareMultiProcessStorage.this.g(true);
            ValueChangedListener valueChangedListener = ShareMultiProcessStorage.this.c;
            if (valueChangedListener != null) {
                valueChangedListener.a(ShareMultiProcessStorage.this.f14484d);
            }
            ShareMultiProcessStorage shareMultiProcessStorage = ShareMultiProcessStorage.this;
            shareMultiProcessStorage.h(r.m("file changed,new content:", shareMultiProcessStorage.f14484d));
        }
    }

    public ShareMultiProcessStorage(String name, boolean z) {
        r.e(name, "name");
        this.f14483a = name;
        this.b = z;
        InternalFileStorage internalFileStorage = new InternalFileStorage(name);
        this.f14485e = internalFileStorage;
        a aVar = new a(internalFileStorage.getC().getAbsolutePath(), 1032);
        this.f14487g = aVar;
        aVar.startWatching();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String g(boolean z) {
        String str = this.f14484d;
        if (str == null || z) {
            this.f14484d = this.f14485e.get();
        }
        if (!r.a(str, this.f14484d)) {
            h(r.m("newValue：", this.f14484d));
        }
        return this.f14484d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(String str) {
        if (this.b) {
            t.d("coreMulti", "process:" + Os.getpid() + ",file:" + this.f14483a + ',' + str);
        }
    }

    @Override // f.a.a.a.storage.Storage
    public boolean a() {
        return this.f14485e.a();
    }

    @Override // f.a.a.a.storage.Storage
    public synchronized boolean b(String str) {
        if (!this.f14485e.b(str)) {
            return false;
        }
        this.f14484d = str;
        return true;
    }

    @Override // f.a.a.a.storage.Storage
    public synchronized String get() {
        return g(false);
    }

    public void i() {
        if (this.f14486f) {
            return;
        }
        this.f14487g.stopWatching();
        this.f14486f = true;
        this.c = null;
        h("release");
    }

    public /* synthetic */ ShareMultiProcessStorage(String str, boolean z, int i, o oVar) {
        this(str, (i & 2) != 0 ? MucangConfig.v() : z);
    }
}
