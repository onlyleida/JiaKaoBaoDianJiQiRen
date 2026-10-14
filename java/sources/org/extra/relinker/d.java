package org.extra.relinker;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Set<String> f16218a;
    protected final c.b b;
    protected final c.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected boolean f16219d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected boolean f16220e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected c.d f16221f;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f16222a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ c.InterfaceC0373c f16223d;

        a(Context context, String str, String str2, c.InterfaceC0373c interfaceC0373c) {
            this.f16222a = context;
            this.b = str;
            this.c = str2;
            this.f16223d = interfaceC0373c;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            try {
                d.this.i(this.f16222a, this.b, this.c);
                this.f16223d.a();
            } catch (UnsatisfiedLinkError e2) {
                this.f16223d.a(e2);
            } catch (org.extra.relinker.b e3) {
                this.f16223d.a(e3);
            }
        }
    }

    class b implements FilenameFilter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f16225a;

        b(d dVar, String str) {
            this.f16225a = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.startsWith(this.f16225a);
        }
    }

    protected d() {
        this(new e(), new org.extra.relinker.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(Context context, String str, String str2) throws Throwable {
        if (this.f16218a.contains(str) && !this.f16219d) {
            f("%s already loaded previously!", str);
            return;
        }
        try {
            this.b.b(str);
            this.f16218a.add(str);
            f("%s (%s) was loaded normally!", str, str2);
        } catch (UnsatisfiedLinkError e2) {
            f("Loading the library normally failed: %s", Log.getStackTraceString(e2));
            f("%s (%s) was not loaded normally, re-linking...", str, str2);
            File fileH = h(context, str, str2);
            if (!fileH.exists() || this.f16219d) {
                if (this.f16219d) {
                    f("Forcing a re-link of %s (%s)...", str, str2);
                }
                c(context, str, str2);
                this.c.a(context, this.b.a(), this.b.a(str), fileH, this);
            }
            try {
                if (this.f16220e) {
                    org.extra.relinker.a.j jVar = null;
                    try {
                        org.extra.relinker.a.j jVar2 = new org.extra.relinker.a.j(fileH);
                        try {
                            List<String> listG = jVar2.g();
                            jVar2.close();
                            Iterator<String> it = listG.iterator();
                            while (it.hasNext()) {
                                b(context, this.b.d(it.next()));
                            }
                        } catch (Throwable th) {
                            th = th;
                            jVar = jVar2;
                            jVar.close();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            } catch (IOException unused) {
            }
            this.b.c(fileH.getAbsolutePath());
            this.f16218a.add(str);
            f("%s (%s) was re-linked!", str, str2);
        }
    }

    protected File a(Context context) {
        return context.getDir("lib", 0);
    }

    public void b(Context context, String str) {
        d(context, str, null, null);
    }

    protected void c(Context context, String str, String str2) {
        File fileA = a(context);
        File fileH = h(context, str, str2);
        File[] fileArrListFiles = fileA.listFiles(new b(this, this.b.a(str)));
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (this.f16219d || !file.getAbsolutePath().equals(fileH.getAbsolutePath())) {
                try {
                    file.delete();
                } catch (SecurityException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public void d(Context context, String str, String str2, c.InterfaceC0373c interfaceC0373c) {
        if (context == null) {
            throw new IllegalArgumentException("Given context is null");
        }
        if (f.a(str)) {
            throw new IllegalArgumentException("Given library is either null or empty");
        }
        f("Beginning load of %s...", str);
        if (interfaceC0373c == null) {
            i(context, str, str2);
            return;
        }
        try {
            new Thread(new a(context, str, str2, interfaceC0373c)).start();
        } catch (Error | Exception e2) {
            interfaceC0373c.a(e2);
        }
    }

    public void e(String str) {
        c.d dVar = this.f16221f;
        if (dVar != null) {
            dVar.a(str);
        }
    }

    public void f(String str, Object... objArr) {
        e(String.format(Locale.US, str, objArr));
    }

    protected File h(Context context, String str, String str2) {
        String strA = this.b.a(str);
        if (f.a(str2)) {
            return new File(a(context), strA);
        }
        return new File(a(context), strA + "." + str2);
    }

    protected d(c.b bVar, c.a aVar) {
        this.f16218a = new HashSet();
        if (bVar == null) {
            throw new IllegalArgumentException("Cannot pass null library loader");
        }
        if (aVar == null) {
            throw new IllegalArgumentException("Cannot pass null library installer");
        }
        this.b = bVar;
        this.c = aVar;
    }
}
