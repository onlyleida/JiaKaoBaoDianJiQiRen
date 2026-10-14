package cn.mucang.android.jiakaoyi.teachingk2.config;

import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.g;
import kotlinx.coroutines.j0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007J\b\u0010\u000b\u001a\u00020\fH\u0007R2\u0010\u0003\u001a&\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004j\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfigManager;", "", "()V", "configList", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "getBoolean", "", "config", "Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;", "getConfig", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class JxConfigManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final HashMap<String, String> f6975a = new HashMap<>();

    public static final boolean b(JxConfig config) {
        r.e(config, "config");
        String str = f6975a.get(config.getCode());
        Boolean boolValueOf = str == null ? null : Boolean.valueOf(Boolean.parseBoolean(str));
        return boolValueOf == null ? ((Boolean) config.getDefault()).booleanValue() : boolValueOf.booleanValue();
    }

    public static final void c() {
        f6975a.clear();
        g.b(j0.b(), null, null, new JxConfigManager$getConfig$1(null), 3, null);
    }
}
