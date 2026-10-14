package cn.mucang.android.core.webview;

import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<WeakReference<InterfaceC0084c>> f2692a;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static c f2693a = new c();
    }

    /* JADX INFO: renamed from: cn.mucang.android.core.webview.c$c, reason: collision with other inner class name */
    public interface InterfaceC0084c {
        void a(String str, String str2, int i);
    }

    public static c b() {
        return b.f2693a;
    }

    public void a(InterfaceC0084c interfaceC0084c) {
        if (interfaceC0084c == null) {
            return;
        }
        synchronized (this.f2692a) {
            this.f2692a.add(new WeakReference<>(interfaceC0084c));
        }
    }

    public void c(int i, String str, String str2) {
        synchronized (this.f2692a) {
            Iterator<WeakReference<InterfaceC0084c>> it = this.f2692a.iterator();
            while (it.hasNext()) {
                InterfaceC0084c interfaceC0084c = it.next().get();
                if (interfaceC0084c != null) {
                    interfaceC0084c.a(str, str2, i);
                } else {
                    it.remove();
                }
            }
        }
    }

    public void d(InterfaceC0084c interfaceC0084c) {
        synchronized (this.f2692a) {
            Iterator<WeakReference<InterfaceC0084c>> it = this.f2692a.iterator();
            while (it.hasNext()) {
                InterfaceC0084c interfaceC0084c2 = it.next().get();
                if (interfaceC0084c2 != null && interfaceC0084c2.equals(interfaceC0084c)) {
                    it.remove();
                }
            }
        }
    }

    private c() {
        this.f2692a = new LinkedList();
    }
}
