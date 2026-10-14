package com.tencent.bugly.proguard;

import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class d extends c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static HashMap<String, byte[]> f13872f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static HashMap<String, HashMap<String, byte[]>> f13873g;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private f f13874e;

    public d() {
        f fVar = new f();
        this.f13874e = fVar;
        fVar.f13876a = (short) 2;
    }

    @Override // com.tencent.bugly.proguard.c, com.tencent.bugly.proguard.a
    public final <T> void a(String str, T t) {
        if (!str.startsWith(".")) {
            super.a(str, t);
        } else {
            throw new IllegalArgumentException("put name can not startwith . , now is " + str);
        }
    }

    public final void b(String str) {
        this.f13874e.c = str;
    }

    @Override // com.tencent.bugly.proguard.c
    public final void c() {
        super.c();
        this.f13874e.f13876a = (short) 3;
    }

    public final void c(String str) {
        this.f13874e.f13877d = str;
    }

    @Override // com.tencent.bugly.proguard.c, com.tencent.bugly.proguard.a
    public final byte[] a() {
        f fVar = this.f13874e;
        if (fVar.f13876a == 2) {
            if (!fVar.c.equals("")) {
                if (this.f13874e.f13877d.equals("")) {
                    throw new IllegalArgumentException("funcName can not is null");
                }
            } else {
                throw new IllegalArgumentException("servantName can not is null");
            }
        } else {
            if (fVar.c == null) {
                fVar.c = "";
            }
            if (fVar.f13877d == null) {
                fVar.f13877d = "";
            }
        }
        i iVar = new i(0);
        iVar.a(this.b);
        if (this.f13874e.f13876a == 2) {
            iVar.a((Map) this.f13804a, 0);
        } else {
            iVar.a((Map) ((c) this).f13869d, 0);
        }
        this.f13874e.f13878e = k.a(iVar.a());
        i iVar2 = new i(0);
        iVar2.a(this.b);
        this.f13874e.a(iVar2);
        byte[] bArrA = k.a(iVar2.a());
        int length = bArrA.length + 4;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
        byteBufferAllocate.putInt(length).put(bArrA).flip();
        return byteBufferAllocate.array();
    }

    @Override // com.tencent.bugly.proguard.c, com.tencent.bugly.proguard.a
    public final void a(byte[] bArr) {
        if (bArr.length >= 4) {
            try {
                h hVar = new h(bArr, 4);
                hVar.a(this.b);
                this.f13874e.a(hVar);
                f fVar = this.f13874e;
                if (fVar.f13876a == 3) {
                    h hVar2 = new h(fVar.f13878e);
                    hVar2.a(this.b);
                    if (f13872f == null) {
                        HashMap<String, byte[]> map = new HashMap<>();
                        f13872f = map;
                        map.put("", new byte[0]);
                    }
                    ((c) this).f13869d = hVar2.a((Map) f13872f, 0, false);
                    return;
                }
                h hVar3 = new h(fVar.f13878e);
                hVar3.a(this.b);
                if (f13873g == null) {
                    f13873g = new HashMap<>();
                    HashMap<String, byte[]> map2 = new HashMap<>();
                    map2.put("", new byte[0]);
                    f13873g.put("", map2);
                }
                this.f13804a = hVar3.a((Map) f13873g, 0, false);
                new HashMap();
                return;
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
        throw new IllegalArgumentException("decode package must include size head");
    }

    public final void a(int i) {
        this.f13874e.b = 1;
    }
}
