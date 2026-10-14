package cn.mucang.android.jiakaoyi.signal.communicate.receive;

import cn.mucang.android.jiakaoyi.signal.communicate.GearsData;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class r extends m {
    public cn.mucang.android.jiakaoyi.signal.communicate.r b;

    public static class a extends m {
        public a(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
            super(i, rVar);
            rVar.e();
            this.f5428a = rVar.e() == 0;
        }
    }

    public static class b extends l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f5433a;

        public b(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
            super(i, rVar);
            rVar.e();
            this.f5433a = rVar.e();
        }
    }

    public static class c extends m {
        public c(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
            super(i, rVar);
            rVar.e();
            rVar.e();
            this.f5428a = rVar.e() == 0;
        }
    }

    public static class d extends m {
        public d(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
            super(i, rVar);
            rVar.e();
            this.f5428a = rVar.e() == 0;
        }
    }

    public static class e extends l {
        public final int A;
        public final int B;
        public final int C;
        public final int D;
        public final int E;
        public final int F;
        public final int G;
        public final int H;
        public final int I;
        public final int J;
        public final int K;
        public final int L;
        public int M;
        public int N;
        public int O;
        public int P;
        public int Q;
        public int R;
        public int S;
        public int T;
        public int U;
        public int V;
        public int W;
        public int X;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f5434a;
        public final float b;
        public final float c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final float f5435d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f5436e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final float f5437f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f5438g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f5439h;
        public final int i;
        public final float j;
        public final float k;
        public final float l;
        public final float m;
        public final float n;
        public final float o;
        public final int p;
        public final int q;
        public final int r;
        public final float s;
        public final float t;
        public final int u;
        public final int v;
        public final int w;
        public final int x;
        public final int y;
        public final int z;

        public e(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
            super(i, rVar);
            rVar.p();
            rVar.e();
            this.f5434a = rVar.m();
            this.b = rVar.m();
            this.c = rVar.m();
            this.f5435d = rVar.m();
            this.f5436e = rVar.m();
            this.f5437f = rVar.m();
            this.f5438g = rVar.j();
            this.f5439h = rVar.j();
            this.i = rVar.j();
            this.j = rVar.m();
            this.k = rVar.m();
            this.l = rVar.m();
            this.m = rVar.m();
            this.n = rVar.m();
            this.o = rVar.m();
            this.p = rVar.j();
            this.q = rVar.j();
            this.r = rVar.j();
            this.s = rVar.i();
            this.t = rVar.i();
            this.u = rVar.e();
            byte bE = rVar.e();
            this.v = bE;
            this.w = rVar.e();
            this.x = rVar.e();
            this.y = rVar.e();
            this.z = rVar.e();
            this.A = rVar.e();
            this.B = rVar.e();
            this.C = rVar.e();
            this.D = rVar.e();
            this.E = rVar.e();
            this.F = rVar.e();
            this.G = rVar.e();
            this.H = rVar.e();
            this.I = rVar.e();
            this.J = rVar.e();
            this.K = rVar.e();
            this.L = rVar.e();
            if (bE == 0) {
                this.M = rVar.e();
                this.N = rVar.e();
                this.O = rVar.e();
                this.P = rVar.e();
                this.Q = rVar.e();
                this.R = rVar.e();
                this.S = rVar.e();
                this.T = rVar.e();
                this.U = rVar.e();
                this.V = rVar.e();
                this.W = rVar.e();
                this.X = rVar.e();
            }
        }

        public List<GearsData.Gear> a() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new GearsData.Gear("P挡", this.w, this.x, this.y, this.z));
            arrayList.add(new GearsData.Gear("倒挡", this.A, this.B, this.C, this.D));
            arrayList.add(new GearsData.Gear("空挡", this.E, this.F, this.G, this.H));
            arrayList.add(new GearsData.Gear("D挡", this.I, this.J, this.K, this.L));
            return arrayList;
        }

        public String b() {
            return this.v == 1 ? "自动挡" : "手动挡";
        }

        public List<GearsData.Gear> c() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new GearsData.Gear("空挡", this.w, this.x, this.y, this.z));
            arrayList.add(new GearsData.Gear("1挡", this.A, this.B, this.C, this.D));
            arrayList.add(new GearsData.Gear("2挡", this.E, this.F, this.G, this.H));
            arrayList.add(new GearsData.Gear("3挡", this.I, this.J, this.K, this.L));
            arrayList.add(new GearsData.Gear("4挡", this.M, this.N, this.O, this.P));
            arrayList.add(new GearsData.Gear("5挡", this.Q, this.R, this.S, this.T));
            arrayList.add(new GearsData.Gear("倒挡", this.U, this.V, this.W, this.X));
            return arrayList;
        }

        public String toString() {
            return "{\":\"静止acc x\":" + this.f5434a + ", \"静止acc y\":" + this.b + ", \"静止acc z\":" + this.c + ", \"静止gy x\":" + this.f5435d + ", \"静止gy y\":" + this.f5436e + ", \"静止gy z\":" + this.f5437f + ", \"静止pitch\":" + this.f5438g + ", \"静止roll\":" + this.f5439h + ", \"静止yaw\":" + this.i + ", \"运动acc x\":" + this.j + ", \"运动acc y\":" + this.k + ", \"运动acc z\":" + this.l + ", \"运动gy x\":" + this.m + ", \"运动gy y\":" + this.n + ", \"运动gy z\":" + this.o + ", \"运动pitch\":" + this.p + ", \"运动roll\":" + this.q + ", \"运动yaw\":" + this.r + ", \"差值pitch\":" + this.s + ", \"差值roll\":" + this.t + ", \"档位值\":" + this.u + ", \"挡位类型\":" + this.v + ", \"0档 roll 前(P档)\":" + this.w + ", \"0档 roll 后\":" + this.x + ", \"0档 pitch 左\":" + this.y + ", \"0档 pitch 右\":" + this.z + ", \"1档 roll 前(R档)\":" + this.A + ", \"1档 roll 后\":" + this.B + ", \"1档 pitch左\":" + this.C + ", \"1档 pitch右\":" + this.D + ", \"2档 roll 前(N档)\":" + this.E + ", \"2档 roll 后\":" + this.F + ", \"2档 pitch 左\":" + this.G + ", \"2档 pitch 右\":" + this.H + ", \"3档 roll 前(D档)\":" + this.I + ", \"3档 roll 后\":" + this.J + ", \"3档 pitch 左\":" + this.K + ", \"3档 pitch 右\":" + this.L + ", \"4档 roll 前\":" + this.M + ", \"4档 roll 后\":" + this.N + ", \"4档 pitch 左\":" + this.O + ", \"4档 pitch 右\":" + this.P + ", \"5档 roll 前\":" + this.Q + ", \"5档 roll 后\":" + this.R + ", \"5档 pitch 左\":" + this.S + ", \"5档 pitch 右\":" + this.T + ", \"6档 roll 前\":" + this.U + ", \"6档 roll 后\":" + this.V + ", \"6档 pitch 左\":" + this.W + ", \"6档 pitch右\":" + this.X + '}';
        }
    }

    public r(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        super(i, rVar);
        this.b = rVar;
    }
}
