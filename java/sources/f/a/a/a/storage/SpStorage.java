package f.a.a.a.storage;

import android.content.SharedPreferences;
import cn.mucang.android.core.utils.j0;
import com.mobile.auth.gatewayauth.Constant;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: f.a.a.a.r.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\f\u001a\u00020\rH\u0016J\n\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u0016J\b\u0010\u000f\u001a\u00020\rH\u0016J\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u000bH\u0016J\b\u0010\u0015\u001a\u00020\u0011H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\b0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcn/mucang/android/core/storage/SpStorage;", "Lcn/mucang/android/core/storage/Storage;", Constant.PROTOCOL_WEBVIEW_NAME, "", "(Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "sp", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "valueChangedListener", "Lcn/mucang/android/core/storage/ValueChangedListener;", "clear", "", "get", "release", "save", "", "string", "setValueChangedListener", "l", "valid", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SpStorage implements Storage {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f14491a;
    private ValueChangedListener b;
    private final SharedPreferences c;

    public SpStorage(String name) {
        r.e(name, "name");
        this.f14491a = name;
        this.c = j0.b(name);
    }

    @Override // f.a.a.a.storage.Storage
    public boolean a() {
        return true;
    }

    @Override // f.a.a.a.storage.Storage
    public boolean b(String str) {
        if (str == null) {
            this.c.edit().remove(this.f14491a).apply();
        } else {
            this.c.edit().putString(this.f14491a, str).apply();
        }
        ValueChangedListener valueChangedListener = this.b;
        if (valueChangedListener == null) {
            return true;
        }
        valueChangedListener.a(str);
        return true;
    }

    @Override // f.a.a.a.storage.Storage
    public String get() {
        return this.c.getString(this.f14491a, null);
    }
}
