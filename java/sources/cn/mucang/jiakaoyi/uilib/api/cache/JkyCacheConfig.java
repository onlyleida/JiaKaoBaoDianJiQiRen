package cn.mucang.jiakaoyi.uilib.api.cache;

import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.cache.CacheMode;
import cn.mucang.android.core.api.cache.c;
import cn.mucang.android.core.api.cache.f;
import cn.mucang.android.core.api.cache.g;
import cn.mucang.android.core.api.cache.i;
import cn.mucang.android.core.api.cache.impl.d;
import cn.mucang.android.core.config.MucangConfig;
import java.io.File;
import java.io.IOException;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.i.s.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\r\u001a\u00020\u000eJ\n\u0010\u000f\u001a\u0004\u0018\u00010\u0004H\u0002J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0004H\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\u0011"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/api/cache/JkyCacheConfig;", "", "()V", "cacheConfig", "Lcn/mucang/android/core/api/cache/CacheConfig;", "getCacheConfig", "()Lcn/mucang/android/core/api/cache/CacheConfig;", "setCacheConfig", "(Lcn/mucang/android/core/api/cache/CacheConfig;)V", "noCacheConfig", "getNoCacheConfig", "setNoCacheConfig", "createConfig", "needCache", "", "createDefault", "createNoCache", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class JkyCacheConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final JkyCacheConfig f9340a = new JkyCacheConfig();
    private static c b;
    private static c c;

    private JkyCacheConfig() {
    }

    private final c b() {
        try {
            File fileA = i.a(MucangConfig.getContext());
            if (fileA == null) {
                return null;
            }
            d.b bVar = new d.b();
            bVar.b(fileA.getAbsolutePath());
            d dVarA = bVar.a();
            if (dVarA == null) {
                return new c.a().a();
            }
            c.a aVar = new c.a();
            aVar.c(CacheMode.REMOTE_FIRST);
            aVar.d(dVarA);
            aVar.b(new f());
            aVar.e(new f() { // from class: cn.mucang.jiakaoyi.uilib.i.s.c
                @Override // cn.mucang.android.core.api.cache.f
                public final int a(ApiResponse apiResponse) {
                    return JkyCacheConfig.c(apiResponse);
                }
            });
            aVar.f(new g() { // from class: cn.mucang.jiakaoyi.uilib.i.s.a
                @Override // cn.mucang.android.core.api.cache.g
                public final int a(ApiResponse apiResponse) {
                    return JkyCacheConfig.d(apiResponse);
                }
            });
            aVar.g(10000L);
            aVar.h(true);
            return aVar.a();
        } catch (IOException unused) {
            return new c.a().a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int c(ApiResponse apiResponse) {
        return 31536000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int d(ApiResponse apiResponse) {
        return 0;
    }

    private final c e() {
        try {
            File fileA = i.a(MucangConfig.getContext());
            if (fileA == null) {
                return null;
            }
            d.b bVar = new d.b();
            bVar.b(fileA.getAbsolutePath());
            d dVarA = bVar.a();
            if (dVarA == null) {
                return new c.a().a();
            }
            c.a aVar = new c.a();
            aVar.c(CacheMode.REMOTE_FIRST);
            aVar.d(dVarA);
            aVar.b(new f());
            aVar.e(new f() { // from class: cn.mucang.jiakaoyi.uilib.i.s.d
                @Override // cn.mucang.android.core.api.cache.f
                public final int a(ApiResponse apiResponse) {
                    return JkyCacheConfig.f(apiResponse);
                }
            });
            aVar.f(new g() { // from class: cn.mucang.jiakaoyi.uilib.i.s.b
                @Override // cn.mucang.android.core.api.cache.g
                public final int a(ApiResponse apiResponse) {
                    return JkyCacheConfig.g(apiResponse);
                }
            });
            aVar.g(10000L);
            aVar.h(true);
            return aVar.a();
        } catch (IOException unused) {
            return new c.a().a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int f(ApiResponse apiResponse) {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int g(ApiResponse apiResponse) {
        return 0;
    }

    public final c a(boolean z) {
        if (z) {
            if (b == null) {
                b = b();
            }
            return b;
        }
        if (c == null) {
            c = e();
        }
        return c;
    }
}
