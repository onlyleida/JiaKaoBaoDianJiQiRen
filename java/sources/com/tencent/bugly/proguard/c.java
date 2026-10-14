package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class c extends a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected HashMap<String, byte[]> f13869d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private HashMap<String, Object> f13870e = new HashMap<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private h f13871f = new h();

    @Override // com.tencent.bugly.proguard.a
    public final /* bridge */ /* synthetic */ void a(String str) {
        super.a(str);
    }

    public final <T> T b(String str, T t) throws b {
        HashMap<String, byte[]> map = this.f13869d;
        if (map != null) {
            if (!map.containsKey(str)) {
                return null;
            }
            if (this.f13870e.containsKey(str)) {
                return (T) this.f13870e.get(str);
            }
            try {
                this.f13871f.a(this.f13869d.get(str));
                this.f13871f.a(this.b);
                T t2 = (T) this.f13871f.a((Object) t, 0, true);
                if (t2 != null) {
                    this.f13870e.put(str, t2);
                }
                return t2;
            } catch (Exception e2) {
                throw new b(e2);
            }
        }
        if (!this.f13804a.containsKey(str)) {
            return null;
        }
        if (this.f13870e.containsKey(str)) {
            return (T) this.f13870e.get(str);
        }
        byte[] value = new byte[0];
        Iterator<Map.Entry<String, byte[]>> it = this.f13804a.get(str).entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry<String, byte[]> next = it.next();
            next.getKey();
            value = next.getValue();
        }
        try {
            this.f13871f.a(value);
            this.f13871f.a(this.b);
            T t3 = (T) this.f13871f.a((Object) t, 0, true);
            this.f13870e.put(str, t3);
            return t3;
        } catch (Exception e3) {
            throw new b(e3);
        }
    }

    public void c() {
        this.f13869d = new HashMap<>();
    }

    @Override // com.tencent.bugly.proguard.a
    public <T> void a(String str, T t) {
        if (this.f13869d == null) {
            super.a(str, t);
            return;
        }
        if (str == null) {
            throw new IllegalArgumentException("put key can not is null");
        }
        if (t == null) {
            throw new IllegalArgumentException("put value can not is null");
        }
        if (t instanceof Set) {
            throw new IllegalArgumentException("can not support Set");
        }
        i iVar = new i();
        iVar.a(this.b);
        iVar.a(t, 0);
        this.f13869d.put(str, k.a(iVar.a()));
    }

    @Override // com.tencent.bugly.proguard.a
    public byte[] a() {
        if (this.f13869d != null) {
            i iVar = new i(0);
            iVar.a(this.b);
            iVar.a((Map) this.f13869d, 0);
            return k.a(iVar.a());
        }
        return super.a();
    }

    @Override // com.tencent.bugly.proguard.a
    public void a(byte[] bArr) {
        try {
            super.a(bArr);
        } catch (Exception unused) {
            this.f13871f.a(bArr);
            this.f13871f.a(this.b);
            HashMap map = new HashMap(1);
            map.put("", new byte[0]);
            this.f13869d = this.f13871f.a((Map) map, 0, false);
        }
    }
}
