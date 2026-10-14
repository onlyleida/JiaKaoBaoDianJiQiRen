package org.extra.relinker;

import android.content.Context;
import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
public class c {

    public interface a {
        void a(Context context, String[] strArr, String str, File file, org.extra.relinker.d dVar);
    }

    public interface b {
        String a(String str);

        String[] a();

        void b(String str);

        void c(String str);

        String d(String str);
    }

    /* JADX INFO: renamed from: org.extra.relinker.c$c, reason: collision with other inner class name */
    public interface InterfaceC0373c {
        void a();

        void a(Throwable th);
    }

    public interface d {
        void a(String str);
    }

    public static void a(Context context, String str) {
        b(context, str, null, null);
    }

    public static void b(Context context, String str, String str2, InterfaceC0373c interfaceC0373c) {
        new org.extra.relinker.d().d(context, str, str2, interfaceC0373c);
    }
}
