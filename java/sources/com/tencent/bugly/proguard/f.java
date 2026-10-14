package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class f extends j {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f13878e;
    private Map<String, String> i;
    private Map<String, String> j;
    private static /* synthetic */ boolean m = true;
    private static byte[] k = null;
    private static Map<String, String> l = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public short f13876a = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private byte f13879f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f13880g = 0;
    public int b = 0;
    public String c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f13877d = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f13881h = 0;

    @Override // com.tencent.bugly.proguard.j
    public final void a(i iVar) {
        iVar.a(this.f13876a, 1);
        iVar.a(this.f13879f, 2);
        iVar.a(this.f13880g, 3);
        iVar.a(this.b, 4);
        iVar.a(this.c, 5);
        iVar.a(this.f13877d, 6);
        iVar.a(this.f13878e, 7);
        iVar.a(this.f13881h, 8);
        iVar.a((Map) this.i, 9);
        iVar.a((Map) this.j, 10);
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            if (m) {
                return null;
            }
            throw new AssertionError();
        }
    }

    public final boolean equals(Object obj) {
        f fVar = (f) obj;
        return k.a(1, (int) fVar.f13876a) && k.a(1, (int) fVar.f13879f) && k.a(1, fVar.f13880g) && k.a(1, fVar.b) && k.a((Object) 1, (Object) fVar.c) && k.a((Object) 1, (Object) fVar.f13877d) && k.a((Object) 1, (Object) fVar.f13878e) && k.a(1, fVar.f13881h) && k.a((Object) 1, (Object) fVar.i) && k.a((Object) 1, (Object) fVar.j);
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(h hVar) {
        try {
            this.f13876a = hVar.a(this.f13876a, 1, true);
            this.f13879f = hVar.a(this.f13879f, 2, true);
            this.f13880g = hVar.a(this.f13880g, 3, true);
            this.b = hVar.a(this.b, 4, true);
            this.c = hVar.b(5, true);
            this.f13877d = hVar.b(6, true);
            if (k == null) {
                k = new byte[]{0};
            }
            this.f13878e = hVar.c(7, true);
            this.f13881h = hVar.a(this.f13881h, 8, true);
            if (l == null) {
                HashMap map = new HashMap();
                l = map;
                map.put("", "");
            }
            this.i = (Map) hVar.a(l, 9, true);
            if (l == null) {
                HashMap map2 = new HashMap();
                l = map2;
                map2.put("", "");
            }
            this.j = (Map) hVar.a(l, 10, true);
        } catch (Exception e2) {
            e2.printStackTrace();
            System.out.println("RequestPacket decode error " + e.a(this.f13878e));
            throw new RuntimeException(e2);
        }
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(StringBuilder sb, int i) {
        z zVar = new z(sb, i);
        zVar.a(this.f13876a, "iVersion");
        zVar.a(this.f13879f, "cPacketType");
        zVar.a(this.f13880g, "iMessageType");
        zVar.a(this.b, "iRequestId");
        zVar.a(this.c, "sServantName");
        zVar.a(this.f13877d, "sFuncName");
        zVar.a(this.f13878e, "sBuffer");
        zVar.a(this.f13881h, "iTimeout");
        zVar.a((Map) this.i, "context");
        zVar.a((Map) this.j, "status");
    }
}
