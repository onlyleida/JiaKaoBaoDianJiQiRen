package cn.mucang.android.jiakaoyi.framework.utils;

import com.alibaba.fastjson.JSON;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class r0<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object f3640a;
    private final T b;
    private final Class c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f3641d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Class f3642e;

    private r0(String str, T t, Class<T> cls, Class cls2) {
        this.b = t;
        this.f3641d = str;
        this.c = cls;
        this.f3642e = cls2;
    }

    private static <C> r0<C> a(String str, C c, Class<C> cls, Class cls2) {
        return new r0<>(str, c, cls, cls2);
    }

    private boolean c() {
        return !"site_model_data_list".equals(this.f3641d);
    }

    public static r0<Boolean> d(String str, Boolean bool) {
        return a(str, bool, Boolean.class, null);
    }

    public static r0<Float> e(String str, float f2) {
        return a(str, Float.valueOf(f2), Float.class, null);
    }

    public static r0<Integer> f(String str, int i) {
        return a(str, Integer.valueOf(i), Integer.class, null);
    }

    /* JADX WARN: Incorrect types in method signature: <T::Ljava/io/Serializable;>(Ljava/lang/String;TT;Ljava/lang/Class<TT;>;Ljava/lang/Class;)Lcn/mucang/android/jiakaoyi/framework/utils/r0<TT;>; */
    public static r0 g(String str, Serializable serializable, Class cls, Class cls2) {
        return a(str, serializable, cls, cls2);
    }

    /* JADX WARN: Incorrect types in method signature: <T::Ljava/io/Serializable;>(Ljava/lang/String;TT;Ljava/lang/Class<TT;>;)Lcn/mucang/android/jiakaoyi/framework/utils/r0<TT;>; */
    public static r0 h(String str, Serializable serializable, Class cls) {
        return a(str, serializable, cls, null);
    }

    public static r0<String> i(String str, String str2) {
        return a(str, str2, String.class, null);
    }

    public synchronized T b() {
        if (this.f3640a == null) {
            Class cls = this.c;
            if (cls == Integer.class) {
                this.f3640a = Integer.valueOf(i0.d(this.f3641d, ((Integer) this.b).intValue()));
            } else if (cls == Float.class) {
                this.f3640a = Float.valueOf(i0.c(this.f3641d, ((Float) this.b).floatValue()));
            } else if (cls == String.class) {
                this.f3640a = i0.g(this.f3641d, (String) this.b);
            } else if (cls == Boolean.class) {
                this.f3640a = Boolean.valueOf(i0.b(this.f3641d, ((Boolean) this.b).booleanValue()));
            } else if (cls == Long.class) {
                this.f3640a = Long.valueOf(i0.f(this.f3641d, ((Long) this.b).longValue()));
            } else if (cls != null) {
                String strG = i0.g(this.f3641d, null);
                if (cn.mucang.android.core.utils.n0.e(strG)) {
                    this.f3640a = this.b;
                } else {
                    Class cls2 = this.f3642e;
                    if (cls2 != null) {
                        this.f3640a = JSON.parseArray(strG, cls2);
                    } else {
                        this.f3640a = JSON.parseObject(strG, this.c);
                    }
                }
                if (c()) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("初始化: key = " + this.f3641d + " , value = " + strG);
                }
                return (T) this.f3640a;
            }
            if (c()) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("初始化: key = " + this.f3641d + " , value = " + this.f3640a);
            }
        }
        return (T) this.f3640a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized void j(T t) {
        if (c()) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("设置: key = " + this.f3641d + " , value = " + JSON.toJSONString(t) + " , oldValue = " + JSON.toJSONString(this.f3640a));
        }
        this.f3640a = t;
        Class cls = this.c;
        if (cls == Integer.class) {
            i0.k(this.f3641d, ((Integer) t).intValue());
        } else if (cls == Float.class) {
            i0.j(this.f3641d, ((Float) t).floatValue());
        } else if (cls == String.class) {
            i0.m(this.f3641d, (String) t);
        } else if (cls == Boolean.class) {
            i0.i(this.f3641d, ((Boolean) t).booleanValue());
        } else if (cls == Long.class) {
            i0.l(this.f3641d, ((Long) t).longValue());
        } else if (cls != null) {
            if (t == 0) {
                i0.m(this.f3641d, null);
            } else {
                i0.m(this.f3641d, JSON.toJSONString(t));
            }
        }
    }
}
