package androidx.lifecycle;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Map<Class<?>, Integer> f1526a = new HashMap();
    private static Map<Class<?>, List<Constructor<? extends k>>> b = new HashMap();

    private static k a(Constructor<? extends k> constructor, Object obj) {
        try {
            return constructor.newInstance(obj);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException(e2);
        } catch (InstantiationException e3) {
            throw new RuntimeException(e3);
        } catch (InvocationTargetException e4) {
            throw new RuntimeException(e4);
        }
    }

    private static Constructor<? extends k> b(Class<?> cls) {
        try {
            Package r0 = cls.getPackage();
            String canonicalName = cls.getCanonicalName();
            String name = r0 != null ? r0.getName() : "";
            if (!name.isEmpty()) {
                canonicalName = canonicalName.substring(name.length() + 1);
            }
            String strC = c(canonicalName);
            if (!name.isEmpty()) {
                strC = name + "." + strC;
            }
            Constructor declaredConstructor = Class.forName(strC).getDeclaredConstructor(cls);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return declaredConstructor;
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (NoSuchMethodException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static String c(String str) {
        return str.replace(".", "_") + "_LifecycleAdapter";
    }

    private static int d(Class<?> cls) {
        Integer num = f1526a.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int iG = g(cls);
        f1526a.put(cls, Integer.valueOf(iG));
        return iG;
    }

    private static boolean e(Class<?> cls) {
        return cls != null && q.class.isAssignableFrom(cls);
    }

    static o f(Object obj) {
        boolean z = obj instanceof o;
        boolean z2 = obj instanceof j;
        if (z && z2) {
            return new FullLifecycleObserverAdapter((j) obj, (o) obj);
        }
        if (z2) {
            return new FullLifecycleObserverAdapter((j) obj, null);
        }
        if (z) {
            return (o) obj;
        }
        Class<?> cls = obj.getClass();
        if (d(cls) != 2) {
            return new ReflectiveGenericLifecycleObserver(obj);
        }
        List<Constructor<? extends k>> list = b.get(cls);
        if (list.size() == 1) {
            return new SingleGeneratedAdapterObserver(a(list.get(0), obj));
        }
        k[] kVarArr = new k[list.size()];
        for (int i = 0; i < list.size(); i++) {
            kVarArr[i] = a(list.get(i), obj);
        }
        return new CompositeGeneratedAdaptersObserver(kVarArr);
    }

    private static int g(Class<?> cls) {
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends k> constructorB = b(cls);
        if (constructorB != null) {
            b.put(cls, Collections.singletonList(constructorB));
            return 2;
        }
        if (d.c.d(cls)) {
            return 1;
        }
        Class<? super Object> superclass = cls.getSuperclass();
        ArrayList arrayList = null;
        if (e(superclass)) {
            if (d(superclass) == 1) {
                return 1;
            }
            arrayList = new ArrayList(b.get(superclass));
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            if (e(cls2)) {
                if (d(cls2) == 1) {
                    return 1;
                }
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.addAll(b.get(cls2));
            }
        }
        if (arrayList == null) {
            return 1;
        }
        b.put(cls, arrayList);
        return 2;
    }
}
