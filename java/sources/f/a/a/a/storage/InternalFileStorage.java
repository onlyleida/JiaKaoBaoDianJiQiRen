package f.a.a.a.storage;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.encode.Digests;
import com.mobile.auth.gatewayauth.Constant;
import java.io.File;
import java.io.FileOutputStream;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.text.Charsets;
import kotlin.v;

/* JADX INFO: renamed from: f.a.a.a.r.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\r\u001a\u00020\u000eH\u0016J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u0016J\b\u0010\u0010\u001a\u00020\u000eH\u0016J\u0012\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\fH\u0016J\b\u0010\u0016\u001a\u00020\u0012H\u0016R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcn/mucang/android/core/storage/InternalFileStorage;", "Lcn/mucang/android/core/storage/Storage;", Constant.PROTOCOL_WEBVIEW_NAME, "", "(Ljava/lang/String;)V", "file", "Ljava/io/File;", "getFile", "()Ljava/io/File;", "getName", "()Ljava/lang/String;", "valueChangedListener", "Lcn/mucang/android/core/storage/ValueChangedListener;", "clear", "", "get", "release", "save", "", "string", "setValueChangedListener", "l", "valid", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class InternalFileStorage implements Storage {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f14481a;
    private ValueChangedListener b;
    private final File c;

    public InternalFileStorage(String name) {
        r.e(name, "name");
        this.f14481a = name;
        this.c = new File(MucangConfig.getContext().getFilesDir(), Digests.md5(name));
    }

    @Override // f.a.a.a.storage.Storage
    public boolean a() {
        return true;
    }

    @Override // f.a.a.a.storage.Storage
    public boolean b(String str) {
        Object objM139constructorimpl;
        v vVar;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (str == null) {
                return getC().delete();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(getC());
            try {
                byte[] bytes = str.getBytes(Charsets.f15811a);
                r.d(bytes, "(this as java.lang.String).getBytes(charset)");
                fileOutputStream.write(bytes);
                fileOutputStream.flush();
                Result.m139constructorimpl(v.f15822a);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m139constructorimpl(k.a(th));
            }
            try {
                Result.Companion companion3 = Result.INSTANCE;
                fileOutputStream.close();
                Result.m139constructorimpl(v.f15822a);
            } catch (Throwable th2) {
                Result.Companion companion4 = Result.INSTANCE;
                Result.m139constructorimpl(k.a(th2));
            }
            ValueChangedListener valueChangedListener = this.b;
            if (valueChangedListener == null) {
                vVar = null;
            } else {
                valueChangedListener.a(str);
                vVar = v.f15822a;
            }
            objM139constructorimpl = Result.m139constructorimpl(vVar);
        } catch (Throwable th3) {
            Result.Companion companion5 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th3));
        }
        return Result.m146isSuccessimpl(objM139constructorimpl);
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final File getC() {
        return this.c;
    }

    @Override // f.a.a.a.storage.Storage
    public String get() {
        Object objM139constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(FilesKt__FileReadWriteKt.f(getC(), null, 1, null));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
        return (String) (Result.m145isFailureimpl(objM139constructorimpl) ? null : objM139constructorimpl);
    }
}
