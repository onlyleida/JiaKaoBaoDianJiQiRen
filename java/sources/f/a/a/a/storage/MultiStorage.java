package f.a.a.a.storage;

import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: f.a.a.a.r.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0002J\n\u0010\n\u001a\u0004\u0018\u00010\u0003H\u0016J\b\u0010\u000b\u001a\u00020\bH\u0016J\u0012\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\rH\u0016R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/core/storage/MultiStorage;", "Lcn/mucang/android/core/storage/Storage;", Constant.PROTOCOL_WEBVIEW_NAME, "", "storageList", "", "(Ljava/lang/String;Ljava/util/List;)V", "clear", "", "clearData", "get", "release", "save", "", "string", "setValueChangedListener", "l", "Lcn/mucang/android/core/storage/ValueChangedListener;", "valid", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MultiStorage implements Storage {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<? extends Storage> f14482a;

    public MultiStorage(String name, List<? extends Storage> storageList) {
        r.e(name, "name");
        r.e(storageList, "storageList");
        this.f14482a = storageList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : storageList) {
            if (((Storage) obj).a()) {
                arrayList.add(obj);
            }
        }
        if (arrayList.size() != this.f14482a.size()) {
            this.f14482a = arrayList;
        }
        if (this.f14482a.isEmpty()) {
            throw new IllegalArgumentException("storageList is empty");
        }
    }

    private final void c() {
        Iterator<T> it = this.f14482a.iterator();
        while (it.hasNext()) {
            ((Storage) it.next()).b(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001d A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:11:0x001f A[ORIG_RETURN, RETURN] */
    @Override // f.a.a.a.storage.Storage
    public boolean a() {
        for (Object obj : this.f14482a) {
            if (((Storage) obj).a()) {
                if (obj != null) {
                    return true;
                }
                return false;
            }
        }
        obj = null;
        if (obj != null) {
            return true;
        }
        return false;
    }

    @Override // f.a.a.a.storage.Storage
    public boolean b(String str) {
        Iterator<T> it = this.f14482a.iterator();
        while (it.hasNext()) {
            if (!((Storage) it.next()).b(str)) {
                c();
                return false;
            }
        }
        return true;
    }

    @Override // f.a.a.a.storage.Storage
    public String get() {
        int i = 0;
        String str = null;
        for (Object obj : this.f14482a) {
            int i2 = i + 1;
            if (i < 0) {
                s.t();
                throw null;
            }
            String str2 = ((Storage) obj).get();
            if (str == null && i == 0) {
                str = str2;
            }
            if (!r.a(str, str2)) {
                c();
                return null;
            }
            i = i2;
        }
        return str;
    }
}
