package cn.mucang.jiakaoyi.uilib.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.jiakaoyi.uilib.ui.check.SelfCheckActivity;
import java.text.SimpleDateFormat;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.s.l, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/utils/MainPageUtils;", "", "()V", "launchMainOrCheck", "", "context", "Landroid/content/Context;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MainPageUtils {
    @SuppressLint({"SimpleDateFormat"})
    public static final void a(Context context) {
        r.e(context, "context");
        if (r.a(i0.g("keyFirstLaunch", ""), new SimpleDateFormat("yyyy-MM-dd").format(new Date()))) {
            AppUtils.s(context);
        } else {
            SelfCheckActivity.a.c(SelfCheckActivity.f9767h, context, false, false, 6, null);
        }
    }
}
