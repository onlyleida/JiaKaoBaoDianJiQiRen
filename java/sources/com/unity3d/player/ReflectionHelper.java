package com.unity3d.player;

import androidx.exifinterface.media.ExifInterface;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.iflytek.speech.VoiceWakeuperAidl;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
final class ReflectionHelper {
    protected static boolean LOG = false;
    protected static final boolean LOGV = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a[] f14213a = new a[4096];
    private static long b;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public volatile Member f14217a;
        private final Class b;
        private final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f14218d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f14219e;

        a(Class cls, String str, String str2) {
            this.b = cls;
            this.c = str;
            this.f14218d = str2;
            this.f14219e = ((((cls.hashCode() + 527) * 31) + str.hashCode()) * 31) + str2.hashCode();
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                if (this.f14219e == aVar.f14219e && this.f14218d.equals(aVar.f14218d) && this.c.equals(aVar.c) && this.b.equals(aVar.b)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return this.f14219e;
        }
    }

    protected interface b extends InvocationHandler {
        void a(long j, boolean z);
    }

    ReflectionHelper() {
    }

    private static float a(Class cls, Class cls2) {
        if (cls.equals(cls2)) {
            return 1.0f;
        }
        if (cls.isPrimitive() || cls2.isPrimitive()) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        try {
            if (cls.asSubclass(cls2) != null) {
                return 0.5f;
            }
        } catch (ClassCastException unused) {
        }
        try {
            if (cls2.asSubclass(cls) != null) {
                return 0.1f;
            }
            return BitmapDescriptorFactory.HUE_RED;
        } catch (ClassCastException unused2) {
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    private static float a(Class cls, Class[] clsArr, Class[] clsArr2) {
        if (clsArr2.length == 0) {
            return 0.1f;
        }
        int i = 0;
        if ((clsArr == null ? 0 : clsArr.length) + 1 != clsArr2.length) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        float f2 = 1.0f;
        if (clsArr != null) {
            int length = clsArr.length;
            int i2 = 0;
            float fA = 1.0f;
            while (i < length) {
                fA *= a(clsArr[i], clsArr2[i2]);
                i++;
                i2++;
            }
            f2 = fA;
        }
        return f2 * a(cls, clsArr2[clsArr2.length - 1]);
    }

    private static Class a(String str, int[] iArr) {
        while (iArr[0] < str.length()) {
            int i = iArr[0];
            iArr[0] = i + 1;
            char cCharAt = str.charAt(i);
            if (cCharAt != '(' && cCharAt != ')') {
                if (cCharAt == 'L') {
                    int iIndexOf = str.indexOf(59, iArr[0]);
                    if (iIndexOf == -1) {
                        return null;
                    }
                    String strSubstring = str.substring(iArr[0], iIndexOf);
                    iArr[0] = iIndexOf + 1;
                    try {
                        return Class.forName(strSubstring.replace('/', '.'));
                    } catch (ClassNotFoundException unused) {
                        return null;
                    }
                }
                if (cCharAt == 'Z') {
                    return Boolean.TYPE;
                }
                if (cCharAt == 'I') {
                    return Integer.TYPE;
                }
                if (cCharAt == 'F') {
                    return Float.TYPE;
                }
                if (cCharAt == 'V') {
                    return Void.TYPE;
                }
                if (cCharAt == 'B') {
                    return Byte.TYPE;
                }
                if (cCharAt == 'C') {
                    return Character.TYPE;
                }
                if (cCharAt == 'S') {
                    return Short.TYPE;
                }
                if (cCharAt == 'J') {
                    return Long.TYPE;
                }
                if (cCharAt == 'D') {
                    return Double.TYPE;
                }
                if (cCharAt == '[') {
                    return Array.newInstance((Class<?>) a(str, iArr), 0).getClass();
                }
                g.Log(5, "! parseType; " + cCharAt + " is not known!");
                return null;
            }
        }
        return null;
    }

    private static synchronized void a(a aVar, Member member) {
        aVar.f14217a = member;
        f14213a[aVar.hashCode() & (f14213a.length - 1)] = aVar;
    }

    private static synchronized boolean a(a aVar) {
        a aVar2 = f14213a[aVar.hashCode() & (f14213a.length - 1)];
        if (!aVar.equals(aVar2)) {
            return false;
        }
        aVar.f14217a = aVar2.f14217a;
        return true;
    }

    private static Class[] a(String str) {
        Class clsA;
        int i = 0;
        int[] iArr = {0};
        ArrayList arrayList = new ArrayList();
        while (iArr[0] < str.length() && (clsA = a(str, iArr)) != null) {
            arrayList.add(clsA);
        }
        Class[] clsArr = new Class[arrayList.size()];
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            clsArr[i] = (Class) it.next();
            i++;
        }
        return clsArr;
    }

    protected static void endUnityLaunch() {
        b++;
    }

    protected static Constructor getConstructorID(Class cls, String str) {
        Constructor<?> constructor;
        a aVar = new a(cls, "", str);
        if (a(aVar)) {
            constructor = (Constructor) aVar.f14217a;
        } else {
            Class[] clsArrA = a(str);
            float f2 = BitmapDescriptorFactory.HUE_RED;
            Constructor<?> constructor2 = null;
            for (Constructor<?> constructor3 : cls.getConstructors()) {
                float fA = a(Void.TYPE, constructor3.getParameterTypes(), clsArrA);
                if (fA > f2) {
                    constructor2 = constructor3;
                    if (fA == 1.0f) {
                        break;
                    }
                    f2 = fA;
                }
            }
            a(aVar, constructor2);
            constructor = constructor2;
        }
        if (constructor != null) {
            return constructor;
        }
        throw new NoSuchMethodError("<init>" + str + " in class " + cls.getName());
    }

    protected static Field getFieldID(Class cls, String str, String str2, boolean z) {
        Field field;
        Class superclass = cls;
        a aVar = new a(superclass, str, str2);
        if (a(aVar)) {
            field = (Field) aVar.f14217a;
        } else {
            Class[] clsArrA = a(str2);
            float f2 = BitmapDescriptorFactory.HUE_RED;
            Field field2 = null;
            while (superclass != null) {
                for (Field field3 : superclass.getDeclaredFields()) {
                    if (z == Modifier.isStatic(field3.getModifiers()) && field3.getName().compareTo(str) == 0) {
                        float fA = a(field3.getType(), (Class[]) null, clsArrA);
                        if (fA > f2) {
                            field2 = field3;
                            if (fA == 1.0f) {
                                f2 = fA;
                                break;
                            }
                            f2 = fA;
                        } else {
                            continue;
                        }
                    }
                }
                if (f2 == 1.0f || superclass.isPrimitive() || superclass.isInterface() || superclass.equals(Object.class) || superclass.equals(Void.TYPE)) {
                    break;
                }
                superclass = superclass.getSuperclass();
            }
            a(aVar, field2);
            field = field2;
        }
        if (field != null) {
            return field;
        }
        Object[] objArr = new Object[4];
        objArr[0] = z ? "static" : "non-static";
        objArr[1] = str;
        objArr[2] = str2;
        objArr[3] = superclass.getName();
        throw new NoSuchFieldError(String.format("no %s field with name='%s' signature='%s' in class L%s;", objArr));
    }

    protected static String getFieldSignature(Field field) {
        Class<?> type = field.getType();
        if (!type.isPrimitive()) {
            if (type.isArray()) {
                return type.getName().replace('.', '/');
            }
            return "L" + type.getName().replace('.', '/') + VoiceWakeuperAidl.PARAMS_SEPARATE;
        }
        String name = type.getName();
        if ("boolean".equals(name)) {
            return "Z";
        }
        if ("byte".equals(name)) {
            return "B";
        }
        if ("char".equals(name)) {
            return "C";
        }
        if ("double".equals(name)) {
            return "D";
        }
        if ("float".equals(name)) {
            return "F";
        }
        if ("int".equals(name)) {
            return "I";
        }
        if ("long".equals(name)) {
            return "J";
        }
        return "short".equals(name) ? ExifInterface.LATITUDE_SOUTH : name;
    }

    protected static Method getMethodID(Class cls, String str, String str2, boolean z) {
        Method method;
        a aVar = new a(cls, str, str2);
        if (a(aVar)) {
            method = (Method) aVar.f14217a;
        } else {
            Class[] clsArrA = a(str2);
            float f2 = BitmapDescriptorFactory.HUE_RED;
            Method method2 = null;
            while (cls != null) {
                for (Method method3 : cls.getDeclaredMethods()) {
                    if (z == Modifier.isStatic(method3.getModifiers()) && method3.getName().compareTo(str) == 0) {
                        float fA = a(method3.getReturnType(), method3.getParameterTypes(), clsArrA);
                        if (fA > f2) {
                            method2 = method3;
                            if (fA == 1.0f) {
                                f2 = fA;
                                break;
                            }
                            f2 = fA;
                        } else {
                            continue;
                        }
                    }
                }
                if (f2 == 1.0f || cls.isPrimitive() || cls.isInterface() || cls.equals(Object.class) || cls.equals(Void.TYPE)) {
                    break;
                }
                cls = cls.getSuperclass();
            }
            a(aVar, method2);
            method = method2;
        }
        if (method != null) {
            return method;
        }
        Object[] objArr = new Object[4];
        objArr[0] = z ? "static" : "non-static";
        objArr[1] = str;
        objArr[2] = str2;
        objArr[3] = cls.getName();
        throw new NoSuchMethodError(String.format("no %s method with name='%s' signature='%s' in class L%s;", objArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeProxyFinalize(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native Object nativeProxyInvoke(long j, String str, Object[] objArr);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeProxyLogJNIInvokeException(long j);

    protected static Object newProxyInstance(long j, Class cls) {
        return newProxyInstance(j, new Class[]{cls});
    }

    protected static Object newProxyInstance(final long j, final Class[] clsArr) {
        return Proxy.newProxyInstance(ReflectionHelper.class.getClassLoader(), clsArr, new b() { // from class: com.unity3d.player.ReflectionHelper.1
            private long c = ReflectionHelper.b;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private long f14215d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private boolean f14216e;

            private Object a(Object obj, Method method, Object[] objArr) throws NoSuchMethodException {
                if (objArr == null) {
                    try {
                        objArr = new Object[0];
                    } catch (NoClassDefFoundError unused) {
                        g.Log(6, String.format("Java interface default methods are only supported since Android Oreo", new Object[0]));
                        ReflectionHelper.nativeProxyLogJNIInvokeException(this.f14215d);
                        return null;
                    }
                }
                Class<?> declaringClass = method.getDeclaringClass();
                Constructor declaredConstructor = MethodHandles.Lookup.class.getDeclaredConstructor(Class.class, Integer.TYPE);
                declaredConstructor.setAccessible(true);
                return ((MethodHandles.Lookup) declaredConstructor.newInstance(declaringClass, 2)).in(declaringClass).unreflectSpecial(method, declaringClass).bindTo(obj).invokeWithArguments(objArr);
            }

            @Override // com.unity3d.player.ReflectionHelper.b
            public final void a(long j2, boolean z) {
                this.f14215d = j2;
                this.f14216e = z;
            }

            protected final void finalize() throws Throwable {
                try {
                    if (this.c == ReflectionHelper.b) {
                        ReflectionHelper.nativeProxyFinalize(j);
                    }
                } finally {
                    super.finalize();
                }
            }

            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) {
                long j2;
                if (this.c != ReflectionHelper.b) {
                    g.Log(6, "Scripting proxy object was destroyed, because Unity player was unloaded.");
                    return null;
                }
                this.f14215d = 0L;
                this.f14216e = false;
                Object objNativeProxyInvoke = ReflectionHelper.nativeProxyInvoke(j, method.getName(), objArr);
                if (!this.f14216e) {
                    j2 = this.f14215d;
                    if (j2 != 0) {
                    }
                    return objNativeProxyInvoke;
                }
                if ((method.getModifiers() & 1024) == 0) {
                    return a(obj, method, objArr);
                }
                j2 = this.f14215d;
                ReflectionHelper.nativeProxyLogJNIInvokeException(j2);
                return objNativeProxyInvoke;
            }
        });
    }

    protected static void setNativeExceptionOnProxy(Object obj, long j, boolean z) {
        ((b) Proxy.getInvocationHandler(obj)).a(j, z);
    }
}
