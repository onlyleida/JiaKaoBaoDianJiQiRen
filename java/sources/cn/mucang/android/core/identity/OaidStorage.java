package cn.mucang.android.core.identity;

import f.a.a.a.storage.EncryptionStorage;
import f.a.a.a.storage.InternalFileStorage;
import f.a.a.a.storage.MultiStorage;
import f.a.a.a.storage.Storage;
import kotlin.Metadata;
import kotlin.collections.t;

/* JADX INFO: renamed from: cn.mucang.android.core.identity.l, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\n\u001a\u00020\u000bH\u0016J\n\u0010\f\u001a\u0004\u0018\u00010\u0004H\u0016J\n\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0007J\b\u0010\u000e\u001a\u00020\u000fH\u0007J\b\u0010\u0010\u001a\u00020\u000bH\u0007J\b\u0010\u0011\u001a\u00020\u000bH\u0016J\u0012\u0010\u0012\u001a\u00020\u000f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u000fH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcn/mucang/android/core/identity/OaidStorage;", "Lcn/mucang/android/core/storage/Storage;", "()V", "cachedOaid", "", "saveCache", "savedMarkStorage", "Lcn/mucang/android/core/storage/InternalFileStorage;", "storage", "Lcn/mucang/android/core/storage/MultiStorage;", "clear", "", "get", "getLastTimeOaid", "isOaidDoneFetch", "", "markOaidFetchDone", "release", "save", "string", "setValueChangedListener", "l", "Lcn/mucang/android/core/storage/ValueChangedListener;", "valid", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class OaidStorage implements Storage {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final OaidStorage f2568a = new OaidStorage();
    private static final MultiStorage b = new MultiStorage("oaid", t.d(new EncryptionStorage(new InternalFileStorage("oaid"), null, 2, null)));
    private static final InternalFileStorage c = new InternalFileStorage("_oaid_saved_mark_");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f2569d;

    private OaidStorage() {
    }

    public static final void c() {
        c.b(String.valueOf(System.currentTimeMillis()));
    }

    @Override // f.a.a.a.storage.Storage
    public boolean a() {
        return b.a();
    }

    @Override // f.a.a.a.storage.Storage
    public boolean b(String str) {
        return b.b(str);
    }

    @Override // f.a.a.a.storage.Storage
    public String get() {
        String str = f2569d;
        if (!(str == null || kotlin.text.t.r(str))) {
            return f2569d;
        }
        String str2 = b.get();
        f2569d = str2;
        return str2;
    }
}
