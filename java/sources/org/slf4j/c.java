package org.slf4j;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import org.slf4j.helpers.d;
import org.slf4j.impl.StaticLoggerBinder;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static volatile int f16307a;
    static final org.slf4j.helpers.c b = new org.slf4j.helpers.c();
    static final org.slf4j.helpers.a c = new org.slf4j.helpers.a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String[] f16308d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f16309e;

    static {
        d.c("slf4j.detectLoggerNameMismatch");
        f16308d = new String[]{"1.6", "1.7"};
        f16309e = "org/slf4j/impl/StaticLoggerBinder.class";
    }

    private c() {
    }

    private static final void a() {
        Set<URL> setF = null;
        try {
            if (!k()) {
                setF = f();
                q(setF);
            }
            StaticLoggerBinder.getSingleton();
            f16307a = 3;
            p(setF);
            g();
            n();
            b.b();
        } catch (Exception e2) {
            e(e2);
            throw new IllegalStateException("Unexpected initialization failure", e2);
        } catch (NoClassDefFoundError e3) {
            if (!l(e3.getMessage())) {
                e(e3);
                throw e3;
            }
            f16307a = 4;
            d.a("Failed to load class \"org.slf4j.impl.StaticLoggerBinder\".");
            d.a("Defaulting to no-operation (NOP) logger implementation");
            d.a("See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.");
        } catch (NoSuchMethodError e4) {
            String message = e4.getMessage();
            if (message != null && message.contains("org.slf4j.impl.StaticLoggerBinder.getSingleton()")) {
                f16307a = 2;
                d.a("slf4j-api 1.6.x (or later) is incompatible with this binding.");
                d.a("Your binding is version 1.5.5 or earlier.");
                d.a("Upgrade your binding to version 1.6.x.");
            }
            throw e4;
        }
    }

    private static void b(org.slf4j.event.b bVar, int i) {
        if (bVar.a().b()) {
            c(i);
        } else {
            if (bVar.a().c()) {
                return;
            }
            d();
        }
    }

    private static void c(int i) {
        d.a("A number (" + i + ") of logging calls during the initialization phase have been intercepted and are");
        d.a("now being replayed. These are subject to the filtering rules of the underlying logging system.");
        d.a("See also http://www.slf4j.org/codes.html#replay");
    }

    private static void d() {
        d.a("The following set of substitute loggers may have been accessed");
        d.a("during the initialization phase. Logging calls during this");
        d.a("phase were not honored. However, subsequent logging calls to these");
        d.a("loggers will work as normally expected.");
        d.a("See also http://www.slf4j.org/codes.html#substituteLogger");
    }

    static void e(Throwable th) {
        f16307a = 2;
        d.b("Failed to instantiate SLF4J LoggerFactory", th);
    }

    static Set<URL> f() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        try {
            ClassLoader classLoader = c.class.getClassLoader();
            Enumeration<URL> systemResources = classLoader == null ? ClassLoader.getSystemResources(f16309e) : classLoader.getResources(f16309e);
            while (systemResources.hasMoreElements()) {
                linkedHashSet.add(systemResources.nextElement());
            }
        } catch (IOException e2) {
            d.b("Error getting resources from path", e2);
        }
        return linkedHashSet;
    }

    private static void g() {
        org.slf4j.helpers.c cVar = b;
        synchronized (cVar) {
            cVar.e();
            for (org.slf4j.helpers.b bVar : cVar.d()) {
                bVar.f(i(bVar.a()));
            }
        }
    }

    public static a h() {
        if (f16307a == 0) {
            synchronized (c.class) {
                if (f16307a == 0) {
                    f16307a = 1;
                    m();
                }
            }
        }
        int i = f16307a;
        if (i == 1) {
            return b;
        }
        if (i == 2) {
            throw new IllegalStateException("org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also http://www.slf4j.org/codes.html#unsuccessfulInit");
        }
        if (i == 3) {
            return StaticLoggerBinder.getSingleton().getLoggerFactory();
        }
        if (i == 4) {
            return c;
        }
        throw new IllegalStateException("Unreachable code");
    }

    public static b i(String str) {
        return h().a(str);
    }

    private static boolean j(Set<URL> set) {
        return set.size() > 1;
    }

    private static boolean k() {
        String strD = d.d("java.vendor.url");
        if (strD == null) {
            return false;
        }
        return strD.toLowerCase().contains("android");
    }

    private static boolean l(String str) {
        if (str == null) {
            return false;
        }
        return str.contains("org/slf4j/impl/StaticLoggerBinder") || str.contains("org.slf4j.impl.StaticLoggerBinder");
    }

    private static final void m() {
        a();
        if (f16307a == 3) {
            r();
        }
    }

    private static void n() {
        LinkedBlockingQueue<org.slf4j.event.b> linkedBlockingQueueC = b.c();
        int size = linkedBlockingQueueC.size();
        ArrayList<org.slf4j.event.b> arrayList = new ArrayList(128);
        int i = 0;
        while (linkedBlockingQueueC.drainTo(arrayList, 128) != 0) {
            for (org.slf4j.event.b bVar : arrayList) {
                o(bVar);
                int i2 = i + 1;
                if (i == 0) {
                    b(bVar, size);
                }
                i = i2;
            }
            arrayList.clear();
        }
    }

    private static void o(org.slf4j.event.b bVar) {
        if (bVar == null) {
            return;
        }
        org.slf4j.helpers.b bVarA = bVar.a();
        String strA = bVarA.a();
        if (bVarA.d()) {
            throw new IllegalStateException("Delegate logger cannot be null at this state.");
        }
        if (bVarA.c()) {
            return;
        }
        if (bVarA.b()) {
            bVarA.e(bVar);
        } else {
            d.a(strA);
        }
    }

    private static void p(Set<URL> set) {
        if (set == null || !j(set)) {
            return;
        }
        d.a("Actual binding is of type [" + StaticLoggerBinder.getSingleton().getLoggerFactoryClassStr() + "]");
    }

    private static void q(Set<URL> set) {
        if (j(set)) {
            d.a("Class path contains multiple SLF4J bindings.");
            Iterator<URL> it = set.iterator();
            while (it.hasNext()) {
                d.a("Found binding in [" + it.next() + "]");
            }
            d.a("See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.");
        }
    }

    private static final void r() {
        try {
            String str = StaticLoggerBinder.REQUESTED_API_VERSION;
            boolean z = false;
            for (String str2 : f16308d) {
                if (str.startsWith(str2)) {
                    z = true;
                }
            }
            if (z) {
                return;
            }
            d.a("The requested version " + str + " by your slf4j binding is not compatible with " + Arrays.asList(f16308d).toString());
            d.a("See http://www.slf4j.org/codes.html#version_mismatch for further details.");
        } catch (NoSuchFieldError unused) {
        } catch (Throwable th) {
            d.b("Unexpected problem occured during version sanity check", th);
        }
    }
}
