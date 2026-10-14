package com.tencent.bugly.crashreport.common.strategy;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.tencent.bugly.proguard.ab;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class StrategyBean implements Parcelable {
    public static final Parcelable.Creator<StrategyBean> CREATOR = new Parcelable.Creator<StrategyBean>() { // from class: com.tencent.bugly.crashreport.common.strategy.StrategyBean.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ StrategyBean createFromParcel(Parcel parcel) {
            return new StrategyBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ StrategyBean[] newArray(int i) {
            return new StrategyBean[i];
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f13697a = "https://android.bugly.qq.com/rqd/async";
    public static String b = "https://android.bugly.qq.com/rqd/async";
    public long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f13698d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f13699e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f13700f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f13701g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f13702h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public long n;
    public long o;
    public String p;
    public String q;
    public String r;
    public Map<String, String> s;
    public int t;
    public long u;
    public long v;

    public StrategyBean() {
        this.c = -1L;
        this.f13698d = -1L;
        this.f13699e = true;
        this.f13700f = true;
        this.f13701g = true;
        this.f13702h = true;
        this.i = false;
        this.j = true;
        this.k = true;
        this.l = true;
        this.m = true;
        this.o = 30000L;
        this.p = f13697a;
        this.q = b;
        this.t = 10;
        this.u = DefaultDrmSessionManager.DEFAULT_SESSION_KEEPALIVE_MS;
        this.v = -1L;
        this.f13698d = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder();
        sb.append("S(@L@L");
        sb.append("@)");
        sb.toString();
        sb.setLength(0);
        sb.append("*^@K#K");
        sb.append("@!");
        this.r = sb.toString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f13698d);
        parcel.writeByte(this.f13699e ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f13700f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f13701g ? (byte) 1 : (byte) 0);
        parcel.writeString(this.p);
        parcel.writeString(this.q);
        parcel.writeString(this.r);
        ab.b(parcel, this.s);
        parcel.writeByte(this.f13702h ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.i ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.l ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.m ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.o);
        parcel.writeByte(this.j ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.k ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.n);
        parcel.writeInt(this.t);
        parcel.writeLong(this.u);
        parcel.writeLong(this.v);
    }

    public StrategyBean(Parcel parcel) {
        this.c = -1L;
        this.f13698d = -1L;
        boolean z = true;
        this.f13699e = true;
        this.f13700f = true;
        this.f13701g = true;
        this.f13702h = true;
        this.i = false;
        this.j = true;
        this.k = true;
        this.l = true;
        this.m = true;
        this.o = 30000L;
        this.p = f13697a;
        this.q = b;
        this.t = 10;
        this.u = DefaultDrmSessionManager.DEFAULT_SESSION_KEEPALIVE_MS;
        this.v = -1L;
        try {
            String str = "S(@L@L@)";
            this.f13698d = parcel.readLong();
            this.f13699e = parcel.readByte() == 1;
            this.f13700f = parcel.readByte() == 1;
            this.f13701g = parcel.readByte() == 1;
            this.p = parcel.readString();
            this.q = parcel.readString();
            this.r = parcel.readString();
            this.s = ab.b(parcel);
            this.f13702h = parcel.readByte() == 1;
            this.i = parcel.readByte() == 1;
            this.l = parcel.readByte() == 1;
            this.m = parcel.readByte() == 1;
            this.o = parcel.readLong();
            this.j = parcel.readByte() == 1;
            if (parcel.readByte() != 1) {
                z = false;
            }
            this.k = z;
            this.n = parcel.readLong();
            this.t = parcel.readInt();
            this.u = parcel.readLong();
            this.v = parcel.readLong();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
