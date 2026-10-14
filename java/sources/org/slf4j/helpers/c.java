package org.slf4j.helpers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes6.dex */
public class c implements org.slf4j.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f16315a = false;
    final Map<String, b> b = new HashMap();
    final LinkedBlockingQueue<org.slf4j.event.b> c = new LinkedBlockingQueue<>();

    @Override // org.slf4j.a
    public synchronized org.slf4j.b a(String str) {
        b bVar;
        bVar = this.b.get(str);
        if (bVar == null) {
            bVar = new b(str, this.c, this.f16315a);
            this.b.put(str, bVar);
        }
        return bVar;
    }

    public void b() {
        this.b.clear();
        this.c.clear();
    }

    public LinkedBlockingQueue<org.slf4j.event.b> c() {
        return this.c;
    }

    public List<b> d() {
        return new ArrayList(this.b.values());
    }

    public void e() {
        this.f16315a = true;
    }
}
