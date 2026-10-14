package f.a.a.a.storage;

import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.text.t;

/* JADX INFO: renamed from: f.a.a.a.r.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\n\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\n\u001a\u00020\u0007H\u0016J\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\fH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/core/storage/EncryptionStorage;", "Lcn/mucang/android/core/storage/Storage;", "storage", "encryption", "Lcn/mucang/android/core/storage/Encryption;", "(Lcn/mucang/android/core/storage/Storage;Lcn/mucang/android/core/storage/Encryption;)V", "clear", "", "get", "", "release", "save", "", "string", "setValueChangedListener", "l", "Lcn/mucang/android/core/storage/ValueChangedListener;", "valid", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class EncryptionStorage implements Storage {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Storage f14480a;
    private final Encryption b;

    public EncryptionStorage(Storage storage, Encryption encryption) {
        r.e(storage, "storage");
        r.e(encryption, "encryption");
        this.f14480a = storage;
        this.b = encryption;
    }

    @Override // f.a.a.a.storage.Storage
    public boolean a() {
        return this.f14480a.a();
    }

    @Override // f.a.a.a.storage.Storage
    public boolean b(String str) {
        if (str != null) {
            str = this.b.a(str);
        }
        return this.f14480a.b(str);
    }

    @Override // f.a.a.a.storage.Storage
    public String get() {
        String str = this.f14480a.get();
        if (str == null || t.r(str)) {
            return null;
        }
        return this.b.b(str);
    }

    public /* synthetic */ EncryptionStorage(Storage storage, Encryption encryption, int i, o oVar) {
        this(storage, (i & 2) != 0 ? new SimpleEncryption("__tnpn__") : encryption);
    }
}
