package cn.mucang.android.jiakaoyi.teachingk2.model;

import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.model.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/model/NavCheckModel;", "", "text", "", "success", "", "(Ljava/lang/String;Z)V", "getSuccess", "()Z", "setSuccess", "(Z)V", "getText", "()Ljava/lang/String;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class NavCheckModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7411a;
    private boolean b;

    public NavCheckModel(String text, boolean z) {
        r.e(text, "text");
        this.f7411a = text;
        this.b = z;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final boolean getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getF7411a() {
        return this.f7411a;
    }

    public final void c(boolean z) {
        this.b = z;
    }

    public /* synthetic */ NavCheckModel(String str, boolean z, int i, o oVar) {
        this(str, (i & 2) != 0 ? false : z);
    }
}
