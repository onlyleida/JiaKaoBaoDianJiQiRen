package cn.mucang.android.jiakaoyi.framework.utils;

import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.utils.l0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0004R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0005¨\u0006\b"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/utils/SchoolDeviceUtil;", "", "()V", "isSchoolDevice", "", "Ljava/lang/Boolean;", "setSchoolDevice", "", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SchoolDeviceUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SchoolDeviceUtil f3622a = new SchoolDeviceUtil();
    private static Boolean b;

    private SchoolDeviceUtil() {
    }

    public final boolean a() {
        if (!AppUtils.g()) {
            return false;
        }
        if (b == null) {
            b = Boolean.valueOf(i0.b("isSchoolDevice", false));
        }
        Boolean bool = b;
        kotlin.jvm.internal.r.c(bool);
        return bool.booleanValue();
    }

    public final void b(boolean z) {
        if (!AppUtils.g()) {
            b = Boolean.FALSE;
        } else {
            b = Boolean.valueOf(z);
            i0.i("isSchoolDevice", z);
        }
    }
}
