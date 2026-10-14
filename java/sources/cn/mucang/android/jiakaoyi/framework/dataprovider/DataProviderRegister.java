package cn.mucang.android.jiakaoyi.framework.dataprovider;

import android.os.Bundle;
import androidx.exifinterface.media.ExifInterface;
import cn.mucang.android.core.utils.s;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.dataprovider.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J1\u0010\t\u001a\u0004\u0018\u0001H\n\"\b\b\u0000\u0010\n*\u00020\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\n0\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eJ.\u0010\u000f\u001a\u00020\u0010\"\b\b\u0000\u0010\n*\u00020\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\n0\u00052\u000e\u0010\u0011\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\n0\u0005J\u001e\u0010\u0012\u001a\u00020\u0010\"\b\b\u0000\u0010\n*\u00020\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\n0\u0005RB\u0010\u0003\u001a6\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u00050\u0004j\u001a\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u0005`\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R6\u0010\b\u001a*\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004j\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006`\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/dataprovider/DataProviderRegister;", "", "()V", "providerClazzMap", "Ljava/util/HashMap;", "Ljava/lang/Class;", "Lcn/mucang/android/jiakaoyi/framework/dataprovider/BaseDataProvider;", "Lkotlin/collections/HashMap;", "providerMap", "getImpl", ExifInterface.GPS_DIRECTION_TRUE, "provider", "args", "Landroid/os/Bundle;", "(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/BaseDataProvider;", "register", "", "impl", "unregister", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DataProviderRegister {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DataProviderRegister f3433a = new DataProviderRegister();
    private static final HashMap<Class<?>, Class<? extends BaseDataProvider>> b = new HashMap<>();
    private static final HashMap<Class<?>, BaseDataProvider> c = new HashMap<>();

    private DataProviderRegister() {
    }

    public static /* synthetic */ BaseDataProvider b(DataProviderRegister dataProviderRegister, Class cls, Bundle bundle, int i, Object obj) {
        if ((i & 2) != 0) {
            bundle = null;
        }
        return dataProviderRegister.a(cls, bundle);
    }

    public final <T extends BaseDataProvider> T a(Class<T> provider, Bundle bundle) {
        r.e(provider, "provider");
        HashMap<Class<?>, BaseDataProvider> map = c;
        BaseDataProvider baseDataProvider = map.get(provider);
        T t = baseDataProvider instanceof BaseDataProvider ? (T) baseDataProvider : null;
        Class<? extends BaseDataProvider> cls = b.get(provider);
        if (t != null || cls == null) {
            if (t == null) {
                return t;
            }
            if (bundle == null) {
                bundle = new Bundle();
            }
            t.setArgs(bundle);
            return t;
        }
        Object[] objArr = new Object[1];
        if (bundle == null) {
            bundle = new Bundle();
        }
        objArr[0] = bundle;
        T t2 = (T) s.c(cls, objArr);
        map.put((Class<?>) provider, t2);
        return t2;
    }

    public final <T extends BaseDataProvider> void c(Class<T> provider, Class<? extends T> impl) {
        r.e(provider, "provider");
        r.e(impl, "impl");
        b.put(provider, impl);
    }
}
