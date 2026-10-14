package com.amap.api.mapcore.util;

import android.content.Context;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class y8 extends g7 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Map<String, String> f11385f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f11386g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    String f11387h;
    String i;
    byte[] j;
    byte[] k;
    boolean l;
    String m;
    Map<String, String> n;
    boolean o;

    public y8(Context context, m5 m5Var) {
        super(context, m5Var);
        this.f11385f = null;
        this.f11386g = "";
        this.f11387h = "";
        this.i = "";
        this.j = null;
        this.k = null;
        this.l = false;
        this.m = null;
        this.n = null;
        this.o = false;
    }

    @Override // com.amap.api.mapcore.util.g7
    public final byte[] g() {
        return this.j;
    }

    @Override // com.amap.api.mapcore.util.k7
    protected final String getIPDNSName() {
        return this.f11386g;
    }

    @Override // com.amap.api.mapcore.util.j5, com.amap.api.mapcore.util.k7
    public final String getIPV6URL() {
        return this.i;
    }

    @Override // com.amap.api.mapcore.util.g7, com.amap.api.mapcore.util.k7
    public final Map<String, String> getParams() {
        return this.n;
    }

    @Override // com.amap.api.mapcore.util.k7
    public final Map<String, String> getRequestHead() {
        return this.f11385f;
    }

    @Override // com.amap.api.mapcore.util.k7
    public final String getURL() {
        return this.f11387h;
    }

    @Override // com.amap.api.mapcore.util.g7
    public final byte[] h() {
        return this.k;
    }

    @Override // com.amap.api.mapcore.util.g7
    public final boolean j() {
        return this.l;
    }

    @Override // com.amap.api.mapcore.util.g7
    public final String l() {
        return this.m;
    }

    @Override // com.amap.api.mapcore.util.g7
    protected final boolean m() {
        return this.o;
    }

    public final void q() {
        this.l = true;
    }

    public final void r(String str) {
        this.m = str;
    }

    public final void s(Map<String, String> map) {
        this.n = map;
    }

    public final void t(String str) {
        this.f11387h = str;
    }

    public final void u(Map<String, String> map) {
        this.f11385f = map;
    }

    public final void v(byte[] bArr) {
        this.j = bArr;
    }

    public final void w(String str) {
        this.i = str;
    }

    public final void x() {
        this.o = true;
    }
}
