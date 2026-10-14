package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class az extends OfflineMapCity implements k0, b1 {
    public static final Parcelable.Creator<az> o = new b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final f1 f10470f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final f1 f10471g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final f1 f10472h;
    public final f1 i;
    public final f1 j;
    public final f1 k;
    public final f1 l;
    public final f1 m;
    public final f1 n;
    public final f1 p;
    public final f1 q;
    f1 r;
    Context s;
    private String t;
    private String u;
    boolean v;
    private long w;

    class a implements t0.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f10473a;
        final /* synthetic */ File b;

        a(String str, File file) {
            this.f10473a = str;
            this.b = file;
        }

        @Override // com.amap.api.mapcore.util.t0.a
        public void a(String str, String str2) {
        }

        @Override // com.amap.api.mapcore.util.t0.a
        public void b(String str, String str2) {
            try {
                if (new File(this.f10473a).delete()) {
                    z0.l(this.b);
                    az.this.setCompleteCode(100);
                    az.this.r.k();
                }
            } catch (Exception unused) {
                az azVar = az.this;
                azVar.r.c(azVar.q.e());
            }
        }

        @Override // com.amap.api.mapcore.util.t0.a
        public void c(String str, String str2, int i) {
            az azVar = az.this;
            azVar.r.c(azVar.q.e());
        }

        @Override // com.amap.api.mapcore.util.t0.a
        public void d(String str, String str2, float f2) {
            int i = (int) ((((double) f2) * 0.39d) + 60.0d);
            if (i - az.this.getcompleteCode() <= 0 || System.currentTimeMillis() - az.this.w <= 1000) {
                return;
            }
            az.this.setCompleteCode(i);
            az.this.w = System.currentTimeMillis();
        }
    }

    static class b implements Parcelable.Creator<az> {
        b() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public az createFromParcel(Parcel parcel) {
            return new az(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public az[] newArray(int i) {
            return new az[i];
        }
    }

    static /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f10474a;

        static {
            int[] iArr = new int[ca.a.values().length];
            f10474a = iArr;
            try {
                iArr[ca.a.amap_exception.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10474a[ca.a.file_io_exception.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10474a[ca.a.network_exception.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public az(Context context, OfflineMapCity offlineMapCity) {
        this(context, offlineMapCity.getState());
        setCity(offlineMapCity.getCity());
        setUrl(offlineMapCity.getUrl());
        setState(offlineMapCity.getState());
        setCompleteCode(offlineMapCity.getcompleteCode());
        setAdcode(offlineMapCity.getAdcode());
        setVersion(offlineMapCity.getVersion());
        setSize(offlineMapCity.getSize());
        setCode(offlineMapCity.getCode());
        setJianpin(offlineMapCity.getJianpin());
        setPinyin(offlineMapCity.getPinyin());
        G();
    }

    private void s(File file, File file2, String str) {
        new t0().b(file, file2, -1L, z0.b(file), new a(str, file));
    }

    public void A() {
        this.r.c(this.q.e());
    }

    public void B() {
        this.r.b();
        if (this.v) {
            this.r.a();
        }
        this.v = false;
    }

    public void C() {
        this.r.equals(this.k);
        this.r.j();
    }

    public void D() {
        c0 c0VarB = c0.b(this.s);
        if (c0VarB != null) {
            c0VarB.e(this);
        }
    }

    public void E() {
        c0 c0VarB = c0.b(this.s);
        if (c0VarB != null) {
            c0VarB.n(this);
        }
    }

    public void F() {
        c0 c0VarB = c0.b(this.s);
        if (c0VarB != null) {
            c0VarB.w(this);
        }
    }

    protected void G() {
        String str = c0.n;
        String strO = z0.o(getUrl());
        if (strO != null) {
            this.t = str + strO + ".zip.tmp";
            return;
        }
        this.t = str + getPinyin() + ".zip.tmp";
    }

    public String H() {
        if (TextUtils.isEmpty(this.t)) {
            return null;
        }
        String str = this.t;
        return str.substring(0, str.lastIndexOf("."));
    }

    public String I() {
        if (TextUtils.isEmpty(this.t)) {
            return null;
        }
        String strH = H();
        return strH.substring(0, strH.lastIndexOf(46));
    }

    public boolean J() {
        if (z0.a() < (getSize() * 2.5d) - (((long) getcompleteCode()) * getSize())) {
        }
        return false;
    }

    public m0 K() {
        setState(this.r.e());
        m0 m0Var = new m0(this, this.s);
        m0Var.m(p());
        z0.h("vMapFileNames: " + p());
        return m0Var;
    }

    @Override // com.amap.api.mapcore.util.ca
    public void a() {
        this.w = 0L;
        if (!this.r.equals(this.f10471g)) {
            z0.h("state must be waiting when download onStart");
        }
        this.r.g();
    }

    @Override // com.amap.api.mapcore.util.ca
    public void c() {
        if (!this.r.equals(this.f10472h)) {
            z0.h("state must be Loading when download onFinish");
        }
        this.r.k();
    }

    @Override // com.amap.api.mapcore.util.ca
    public void d() {
        x();
    }

    @Override // com.amap.api.maps.offlinemap.OfflineMapCity, com.amap.api.maps.offlinemap.City, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.amap.api.mapcore.util.ca
    public void e(ca.a aVar) {
        int iE;
        int i = c.f10474a[aVar.ordinal()];
        if (i == 1) {
            iE = this.p.e();
        } else if (i != 2) {
            iE = i != 3 ? 6 : this.n.e();
        } else {
            iE = this.q.e();
        }
        if (this.r.equals(this.f10472h) || this.r.equals(this.f10471g)) {
            this.r.c(iE);
        }
    }

    @Override // com.amap.api.mapcore.util.u0
    public void f() {
        this.w = 0L;
        setCompleteCode(0);
        this.r.equals(this.j);
        this.r.g();
    }

    @Override // com.amap.api.mapcore.util.u0
    public void g() {
        this.r.equals(this.j);
        this.r.c(this.m.e());
    }

    @Override // com.amap.api.mapcore.util.u0
    public void h() {
        x();
    }

    @Override // com.amap.api.mapcore.util.b1
    public String i() {
        return getAdcode();
    }

    @Override // com.amap.api.mapcore.util.v0
    public String j() {
        return H();
    }

    @Override // com.amap.api.mapcore.util.v0
    public String k() {
        return I();
    }

    @Override // com.amap.api.mapcore.util.b1
    public boolean l() {
        return J();
    }

    @Override // com.amap.api.mapcore.util.ca
    public void m(long j, long j2) {
        int i = (int) ((j2 * 100) / j);
        if (i != getcompleteCode()) {
            setCompleteCode(i);
            w();
        }
    }

    @Override // com.amap.api.mapcore.util.b1
    public String n() {
        StringBuffer stringBuffer = new StringBuffer();
        String strO = z0.o(getUrl());
        if (strO != null) {
            stringBuffer.append(strO);
        } else {
            stringBuffer.append(getPinyin());
        }
        stringBuffer.append(".zip");
        return stringBuffer.toString();
    }

    public String p() {
        return this.u;
    }

    public void q(int i) {
        if (i == -1) {
            this.r = this.m;
        } else if (i == 0) {
            this.r = this.f10472h;
        } else if (i == 1) {
            this.r = this.j;
        } else if (i == 2) {
            this.r = this.f10471g;
        } else if (i == 3) {
            this.r = this.i;
        } else if (i == 4) {
            this.r = this.k;
        } else if (i == 6) {
            this.r = this.f10470f;
        } else if (i != 7) {
            switch (i) {
                case 101:
                    this.r = this.n;
                    break;
                case 102:
                    this.r = this.p;
                    break;
                case 103:
                    this.r = this.q;
                    break;
                default:
                    if (i < 0) {
                        this.r = this.m;
                    }
                    break;
            }
        } else {
            this.r = this.l;
        }
        setState(i);
    }

    public void r(f1 f1Var) {
        this.r = f1Var;
        setState(f1Var.e());
    }

    public void t(String str) {
        this.u = str;
    }

    public f1 u(int i) {
        switch (i) {
            case 101:
                return this.n;
            case 102:
                return this.p;
            case 103:
                return this.q;
            default:
                return this.m;
        }
    }

    public f1 v() {
        return this.r;
    }

    public void w() {
        c0 c0VarB = c0.b(this.s);
        if (c0VarB != null) {
            c0VarB.s(this);
        }
    }

    @Override // com.amap.api.maps.offlinemap.OfflineMapCity, com.amap.api.maps.offlinemap.City, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.u);
    }

    public void x() {
        c0 c0VarB = c0.b(this.s);
        if (c0VarB != null) {
            c0VarB.z(this);
            w();
        }
    }

    public void y() {
        z0.h("CityOperation current State==>" + v().e());
        if (this.r.equals(this.i)) {
            this.r.h();
            return;
        }
        if (this.r.equals(this.f10472h)) {
            this.r.i();
            return;
        }
        if (this.r.equals(this.l) || this.r.equals(this.m)) {
            D();
            this.v = true;
        } else if (this.r.equals(this.p) || this.r.equals(this.n) || this.r.d(this.q)) {
            this.r.g();
        } else {
            v().a();
        }
    }

    public void z() {
        this.r.i();
    }

    @Override // com.amap.api.mapcore.util.k0
    public String b() {
        return getUrl();
    }

    @Override // com.amap.api.mapcore.util.u0
    public void b(String str) {
        this.r.equals(this.j);
        this.u = str;
        String strH = H();
        String strI = I();
        if (!TextUtils.isEmpty(strH) && !TextUtils.isEmpty(strI)) {
            File file = new File(strI + "/");
            File file2 = new File(r3.y(this.s) + File.separator + "map/");
            File file3 = new File(r3.y(this.s));
            if (file3.exists() || file3.mkdir()) {
                if (file2.exists() || file2.mkdir()) {
                    s(file, file2, strH);
                    return;
                }
                return;
            }
            return;
        }
        g();
    }

    @Override // com.amap.api.mapcore.util.u0
    public void a(long j) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.w > 500) {
            int i = (int) j;
            if (i > getcompleteCode()) {
                setCompleteCode(i);
                w();
            }
            this.w = jCurrentTimeMillis;
        }
    }

    public az(Context context, int i) {
        this.f10470f = new h1(6, this);
        this.f10471g = new o1(2, this);
        this.f10472h = new k1(0, this);
        this.i = new m1(3, this);
        this.j = new n1(1, this);
        this.k = new g1(4, this);
        this.l = new l1(7, this);
        this.m = new i1(-1, this);
        this.n = new i1(101, this);
        this.p = new i1(102, this);
        this.q = new i1(103, this);
        this.t = null;
        this.u = "";
        this.v = false;
        this.w = 0L;
        this.s = context;
        q(i);
    }

    public az(Parcel parcel) {
        super(parcel);
        this.f10470f = new h1(6, this);
        this.f10471g = new o1(2, this);
        this.f10472h = new k1(0, this);
        this.i = new m1(3, this);
        this.j = new n1(1, this);
        this.k = new g1(4, this);
        this.l = new l1(7, this);
        this.m = new i1(-1, this);
        this.n = new i1(101, this);
        this.p = new i1(102, this);
        this.q = new i1(103, this);
        this.t = null;
        this.u = "";
        this.v = false;
        this.w = 0L;
        this.u = parcel.readString();
    }
}
