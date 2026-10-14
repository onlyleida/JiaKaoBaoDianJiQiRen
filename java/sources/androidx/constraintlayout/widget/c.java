package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.exifinterface.media.ExifInterface;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int[] f864f = {0, 4, 8};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static SparseIntArray f865g = new SparseIntArray();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static SparseIntArray f866h = new SparseIntArray();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f867a;
    public String b = "";
    private HashMap<String, ConstraintAttribute> c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f868d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private HashMap<Integer, a> f869e = new HashMap<>();

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f870a;
        String b;
        public final d c = new d();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final C0019c f871d = new C0019c();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final b f872e = new b();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final e f873f = new e();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public HashMap<String, ConstraintAttribute> f874g = new HashMap<>();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        C0018a f875h;

        /* JADX INFO: renamed from: androidx.constraintlayout.widget.c$a$a, reason: collision with other inner class name */
        static class C0018a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            int[] f876a = new int[10];
            int[] b = new int[10];
            int c = 0;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            int[] f877d = new int[10];

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            float[] f878e = new float[10];

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            int f879f = 0;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            int[] f880g = new int[5];

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            String[] f881h = new String[5];
            int i = 0;
            int[] j = new int[4];
            boolean[] k = new boolean[4];
            int l = 0;

            C0018a() {
            }

            void a(int i, float f2) {
                int i2 = this.f879f;
                int[] iArr = this.f877d;
                if (i2 >= iArr.length) {
                    this.f877d = Arrays.copyOf(iArr, iArr.length * 2);
                    float[] fArr = this.f878e;
                    this.f878e = Arrays.copyOf(fArr, fArr.length * 2);
                }
                int[] iArr2 = this.f877d;
                int i3 = this.f879f;
                iArr2[i3] = i;
                float[] fArr2 = this.f878e;
                this.f879f = i3 + 1;
                fArr2[i3] = f2;
            }

            void b(int i, int i2) {
                int i3 = this.c;
                int[] iArr = this.f876a;
                if (i3 >= iArr.length) {
                    this.f876a = Arrays.copyOf(iArr, iArr.length * 2);
                    int[] iArr2 = this.b;
                    this.b = Arrays.copyOf(iArr2, iArr2.length * 2);
                }
                int[] iArr3 = this.f876a;
                int i4 = this.c;
                iArr3[i4] = i;
                int[] iArr4 = this.b;
                this.c = i4 + 1;
                iArr4[i4] = i2;
            }

            void c(int i, String str) {
                int i2 = this.i;
                int[] iArr = this.f880g;
                if (i2 >= iArr.length) {
                    this.f880g = Arrays.copyOf(iArr, iArr.length * 2);
                    String[] strArr = this.f881h;
                    this.f881h = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                }
                int[] iArr2 = this.f880g;
                int i3 = this.i;
                iArr2[i3] = i;
                String[] strArr2 = this.f881h;
                this.i = i3 + 1;
                strArr2[i3] = str;
            }

            void d(int i, boolean z) {
                int i2 = this.l;
                int[] iArr = this.j;
                if (i2 >= iArr.length) {
                    this.j = Arrays.copyOf(iArr, iArr.length * 2);
                    boolean[] zArr = this.k;
                    this.k = Arrays.copyOf(zArr, zArr.length * 2);
                }
                int[] iArr2 = this.j;
                int i3 = this.l;
                iArr2[i3] = i;
                boolean[] zArr2 = this.k;
                this.l = i3 + 1;
                zArr2[i3] = z;
            }

            void e(a aVar) {
                for (int i = 0; i < this.c; i++) {
                    c.E(aVar, this.f876a[i], this.b[i]);
                }
                for (int i2 = 0; i2 < this.f879f; i2++) {
                    c.D(aVar, this.f877d[i2], this.f878e[i2]);
                }
                for (int i3 = 0; i3 < this.i; i3++) {
                    c.F(aVar, this.f880g[i3], this.f881h[i3]);
                }
                for (int i4 = 0; i4 < this.l; i4++) {
                    c.G(aVar, this.j[i4], this.k[i4]);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g(int i, ConstraintLayout.b bVar) {
            this.f870a = i;
            b bVar2 = this.f872e;
            bVar2.f887h = bVar.f835d;
            bVar2.i = bVar.f836e;
            bVar2.j = bVar.f837f;
            bVar2.k = bVar.f838g;
            bVar2.l = bVar.f839h;
            bVar2.m = bVar.i;
            bVar2.n = bVar.j;
            bVar2.o = bVar.k;
            bVar2.p = bVar.l;
            bVar2.q = bVar.m;
            bVar2.r = bVar.n;
            bVar2.s = bVar.r;
            bVar2.t = bVar.s;
            bVar2.u = bVar.t;
            bVar2.v = bVar.u;
            bVar2.w = bVar.D;
            bVar2.x = bVar.E;
            bVar2.y = bVar.F;
            bVar2.z = bVar.o;
            bVar2.A = bVar.p;
            bVar2.B = bVar.q;
            bVar2.C = bVar.U;
            bVar2.D = bVar.V;
            bVar2.E = bVar.W;
            bVar2.f886g = bVar.c;
            b bVar3 = this.f872e;
            bVar3.f884e = bVar.f834a;
            bVar3.f885f = bVar.b;
            bVar3.c = ((ViewGroup.MarginLayoutParams) bVar).width;
            bVar3.f883d = ((ViewGroup.MarginLayoutParams) bVar).height;
            bVar3.F = ((ViewGroup.MarginLayoutParams) bVar).leftMargin;
            bVar3.G = ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
            bVar3.H = ((ViewGroup.MarginLayoutParams) bVar).topMargin;
            bVar3.I = ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
            bVar3.L = bVar.C;
            bVar3.T = bVar.J;
            bVar3.U = bVar.I;
            bVar3.W = bVar.L;
            bVar3.V = bVar.K;
            bVar3.l0 = bVar.X;
            bVar3.m0 = bVar.Y;
            bVar3.X = bVar.M;
            bVar3.Y = bVar.N;
            bVar3.Z = bVar.Q;
            bVar3.a0 = bVar.R;
            bVar3.b0 = bVar.O;
            bVar3.c0 = bVar.P;
            bVar3.d0 = bVar.S;
            bVar3.e0 = bVar.T;
            bVar3.k0 = bVar.Z;
            bVar3.N = bVar.w;
            b bVar4 = this.f872e;
            bVar4.P = bVar.y;
            bVar4.M = bVar.v;
            bVar4.O = bVar.x;
            bVar4.R = bVar.z;
            bVar4.Q = bVar.A;
            bVar4.S = bVar.B;
            bVar4.o0 = bVar.a0;
            if (Build.VERSION.SDK_INT >= 17) {
                bVar4.J = bVar.getMarginEnd();
                this.f872e.K = bVar.getMarginStart();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h(int i, androidx.constraintlayout.widget.d.a aVar) {
            g(i, aVar);
            this.c.f895d = aVar.u0;
            e eVar = this.f873f;
            eVar.b = aVar.x0;
            eVar.c = aVar.y0;
            eVar.f898d = aVar.z0;
            eVar.f899e = aVar.A0;
            eVar.f900f = aVar.B0;
            eVar.f901g = aVar.C0;
            eVar.f902h = aVar.D0;
            eVar.j = aVar.E0;
            eVar.k = aVar.F0;
            eVar.l = aVar.G0;
            eVar.n = aVar.w0;
            eVar.m = aVar.v0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void i(androidx.constraintlayout.widget.a aVar, int i, androidx.constraintlayout.widget.d.a aVar2) {
            h(i, aVar2);
            if (aVar instanceof Barrier) {
                b bVar = this.f872e;
                bVar.h0 = 1;
                Barrier barrier = (Barrier) aVar;
                bVar.f0 = barrier.getType();
                this.f872e.i0 = barrier.getReferencedIds();
                this.f872e.g0 = barrier.getMargin();
            }
        }

        public void d(a aVar) {
            C0018a c0018a = this.f875h;
            if (c0018a != null) {
                c0018a.e(aVar);
            }
        }

        public void e(ConstraintLayout.b bVar) {
            b bVar2 = this.f872e;
            bVar.f835d = bVar2.f887h;
            bVar.f836e = bVar2.i;
            bVar.f837f = bVar2.j;
            bVar.f838g = bVar2.k;
            bVar.f839h = bVar2.l;
            bVar.i = bVar2.m;
            bVar.j = bVar2.n;
            bVar.k = bVar2.o;
            bVar.l = bVar2.p;
            bVar.m = bVar2.q;
            bVar.n = bVar2.r;
            bVar.r = bVar2.s;
            bVar.s = bVar2.t;
            bVar.t = bVar2.u;
            bVar.u = bVar2.v;
            ((ViewGroup.MarginLayoutParams) bVar).leftMargin = bVar2.F;
            ((ViewGroup.MarginLayoutParams) bVar).rightMargin = bVar2.G;
            ((ViewGroup.MarginLayoutParams) bVar).topMargin = bVar2.H;
            ((ViewGroup.MarginLayoutParams) bVar).bottomMargin = bVar2.I;
            bVar.z = bVar2.R;
            bVar.A = bVar2.Q;
            bVar.w = bVar2.N;
            bVar.y = bVar2.P;
            bVar.D = bVar2.w;
            bVar.E = bVar2.x;
            b bVar3 = this.f872e;
            bVar.o = bVar3.z;
            bVar.p = bVar3.A;
            bVar.q = bVar3.B;
            bVar.F = bVar3.y;
            bVar.U = bVar3.C;
            bVar.V = bVar3.D;
            bVar.J = bVar3.T;
            bVar.I = bVar3.U;
            bVar.L = bVar3.W;
            bVar.K = bVar3.V;
            bVar.X = bVar3.l0;
            bVar.Y = bVar3.m0;
            bVar.M = bVar3.X;
            bVar.N = bVar3.Y;
            bVar.Q = bVar3.Z;
            bVar.R = bVar3.a0;
            bVar.O = bVar3.b0;
            bVar.P = bVar3.c0;
            bVar.S = bVar3.d0;
            bVar.T = bVar3.e0;
            bVar.W = bVar3.E;
            bVar.c = bVar3.f886g;
            bVar.f834a = bVar3.f884e;
            bVar.b = bVar3.f885f;
            ((ViewGroup.MarginLayoutParams) bVar).width = bVar3.c;
            b bVar4 = this.f872e;
            ((ViewGroup.MarginLayoutParams) bVar).height = bVar4.f883d;
            String str = bVar4.k0;
            if (str != null) {
                bVar.Z = str;
            }
            bVar.a0 = bVar4.o0;
            if (Build.VERSION.SDK_INT >= 17) {
                bVar.setMarginStart(bVar4.K);
                bVar.setMarginEnd(this.f872e.J);
            }
            bVar.b();
        }

        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public a clone() {
            a aVar = new a();
            aVar.f872e.a(this.f872e);
            aVar.f871d.a(this.f871d);
            aVar.c.a(this.c);
            aVar.f873f.a(this.f873f);
            aVar.f870a = this.f870a;
            aVar.f875h = this.f875h;
            return aVar;
        }
    }

    public static class b {
        private static SparseIntArray p0;
        public int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f883d;
        public int[] i0;
        public String j0;
        public String k0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f882a = false;
        public boolean b = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f884e = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f885f = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public float f886g = -1.0f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f887h = -1;
        public int i = -1;
        public int j = -1;
        public int k = -1;
        public int l = -1;
        public int m = -1;
        public int n = -1;
        public int o = -1;
        public int p = -1;
        public int q = -1;
        public int r = -1;
        public int s = -1;
        public int t = -1;
        public int u = -1;
        public int v = -1;
        public float w = 0.5f;
        public float x = 0.5f;
        public String y = null;
        public int z = -1;
        public int A = 0;
        public float B = BitmapDescriptorFactory.HUE_RED;
        public int C = -1;
        public int D = -1;
        public int E = -1;
        public int F = 0;
        public int G = 0;
        public int H = 0;
        public int I = 0;
        public int J = 0;
        public int K = 0;
        public int L = 0;
        public int M = Integer.MIN_VALUE;
        public int N = Integer.MIN_VALUE;
        public int O = Integer.MIN_VALUE;
        public int P = Integer.MIN_VALUE;
        public int Q = Integer.MIN_VALUE;
        public int R = Integer.MIN_VALUE;
        public int S = Integer.MIN_VALUE;
        public float T = -1.0f;
        public float U = -1.0f;
        public int V = 0;
        public int W = 0;
        public int X = 0;
        public int Y = 0;
        public int Z = -1;
        public int a0 = -1;
        public int b0 = -1;
        public int c0 = -1;
        public float d0 = 1.0f;
        public float e0 = 1.0f;
        public int f0 = -1;
        public int g0 = 0;
        public int h0 = -1;
        public boolean l0 = false;
        public boolean m0 = false;
        public boolean n0 = true;
        public int o0 = 0;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            p0 = sparseIntArray;
            sparseIntArray.append(R.styleable.Layout_layout_constraintLeft_toLeftOf, 24);
            p0.append(R.styleable.Layout_layout_constraintLeft_toRightOf, 25);
            p0.append(R.styleable.Layout_layout_constraintRight_toLeftOf, 28);
            p0.append(R.styleable.Layout_layout_constraintRight_toRightOf, 29);
            p0.append(R.styleable.Layout_layout_constraintTop_toTopOf, 35);
            p0.append(R.styleable.Layout_layout_constraintTop_toBottomOf, 34);
            p0.append(R.styleable.Layout_layout_constraintBottom_toTopOf, 4);
            p0.append(R.styleable.Layout_layout_constraintBottom_toBottomOf, 3);
            p0.append(R.styleable.Layout_layout_constraintBaseline_toBaselineOf, 1);
            p0.append(R.styleable.Layout_layout_editor_absoluteX, 6);
            p0.append(R.styleable.Layout_layout_editor_absoluteY, 7);
            p0.append(R.styleable.Layout_layout_constraintGuide_begin, 17);
            p0.append(R.styleable.Layout_layout_constraintGuide_end, 18);
            p0.append(R.styleable.Layout_layout_constraintGuide_percent, 19);
            p0.append(R.styleable.Layout_android_orientation, 26);
            p0.append(R.styleable.Layout_layout_constraintStart_toEndOf, 31);
            p0.append(R.styleable.Layout_layout_constraintStart_toStartOf, 32);
            p0.append(R.styleable.Layout_layout_constraintEnd_toStartOf, 10);
            p0.append(R.styleable.Layout_layout_constraintEnd_toEndOf, 9);
            p0.append(R.styleable.Layout_layout_goneMarginLeft, 13);
            p0.append(R.styleable.Layout_layout_goneMarginTop, 16);
            p0.append(R.styleable.Layout_layout_goneMarginRight, 14);
            p0.append(R.styleable.Layout_layout_goneMarginBottom, 11);
            p0.append(R.styleable.Layout_layout_goneMarginStart, 15);
            p0.append(R.styleable.Layout_layout_goneMarginEnd, 12);
            p0.append(R.styleable.Layout_layout_constraintVertical_weight, 38);
            p0.append(R.styleable.Layout_layout_constraintHorizontal_weight, 37);
            p0.append(R.styleable.Layout_layout_constraintHorizontal_chainStyle, 39);
            p0.append(R.styleable.Layout_layout_constraintVertical_chainStyle, 40);
            p0.append(R.styleable.Layout_layout_constraintHorizontal_bias, 20);
            p0.append(R.styleable.Layout_layout_constraintVertical_bias, 36);
            p0.append(R.styleable.Layout_layout_constraintDimensionRatio, 5);
            p0.append(R.styleable.Layout_layout_constraintLeft_creator, 76);
            p0.append(R.styleable.Layout_layout_constraintTop_creator, 76);
            p0.append(R.styleable.Layout_layout_constraintRight_creator, 76);
            p0.append(R.styleable.Layout_layout_constraintBottom_creator, 76);
            p0.append(R.styleable.Layout_layout_constraintBaseline_creator, 76);
            p0.append(R.styleable.Layout_android_layout_marginLeft, 23);
            p0.append(R.styleable.Layout_android_layout_marginRight, 27);
            p0.append(R.styleable.Layout_android_layout_marginStart, 30);
            p0.append(R.styleable.Layout_android_layout_marginEnd, 8);
            p0.append(R.styleable.Layout_android_layout_marginTop, 33);
            p0.append(R.styleable.Layout_android_layout_marginBottom, 2);
            p0.append(R.styleable.Layout_android_layout_width, 22);
            p0.append(R.styleable.Layout_android_layout_height, 21);
            p0.append(R.styleable.Layout_layout_constraintWidth, 41);
            p0.append(R.styleable.Layout_layout_constraintHeight, 42);
            p0.append(R.styleable.Layout_layout_constrainedWidth, 41);
            p0.append(R.styleable.Layout_layout_constrainedHeight, 42);
            p0.append(R.styleable.Layout_layout_wrapBehaviorInParent, 97);
            p0.append(R.styleable.Layout_layout_constraintCircle, 61);
            p0.append(R.styleable.Layout_layout_constraintCircleRadius, 62);
            p0.append(R.styleable.Layout_layout_constraintCircleAngle, 63);
            p0.append(R.styleable.Layout_layout_constraintWidth_percent, 69);
            p0.append(R.styleable.Layout_layout_constraintHeight_percent, 70);
            p0.append(R.styleable.Layout_chainUseRtl, 71);
            p0.append(R.styleable.Layout_barrierDirection, 72);
            p0.append(R.styleable.Layout_barrierMargin, 73);
            p0.append(R.styleable.Layout_constraint_referenced_ids, 74);
            p0.append(R.styleable.Layout_barrierAllowsGoneWidgets, 75);
        }

        public void a(b bVar) {
            this.f882a = bVar.f882a;
            this.c = bVar.c;
            this.b = bVar.b;
            this.f883d = bVar.f883d;
            this.f884e = bVar.f884e;
            this.f885f = bVar.f885f;
            this.f886g = bVar.f886g;
            this.f887h = bVar.f887h;
            this.i = bVar.i;
            this.j = bVar.j;
            this.k = bVar.k;
            this.l = bVar.l;
            this.m = bVar.m;
            this.n = bVar.n;
            this.o = bVar.o;
            this.p = bVar.p;
            this.q = bVar.q;
            this.r = bVar.r;
            this.s = bVar.s;
            this.t = bVar.t;
            this.u = bVar.u;
            this.v = bVar.v;
            this.w = bVar.w;
            this.x = bVar.x;
            this.y = bVar.y;
            this.z = bVar.z;
            this.A = bVar.A;
            this.B = bVar.B;
            this.C = bVar.C;
            this.D = bVar.D;
            this.E = bVar.E;
            this.F = bVar.F;
            this.G = bVar.G;
            this.H = bVar.H;
            this.I = bVar.I;
            this.J = bVar.J;
            this.K = bVar.K;
            this.L = bVar.L;
            this.M = bVar.M;
            this.N = bVar.N;
            this.O = bVar.O;
            this.P = bVar.P;
            this.Q = bVar.Q;
            this.R = bVar.R;
            this.S = bVar.S;
            this.T = bVar.T;
            this.U = bVar.U;
            this.V = bVar.V;
            this.W = bVar.W;
            this.X = bVar.X;
            this.Y = bVar.Y;
            this.Z = bVar.Z;
            this.a0 = bVar.a0;
            this.b0 = bVar.b0;
            this.c0 = bVar.c0;
            this.d0 = bVar.d0;
            this.e0 = bVar.e0;
            this.f0 = bVar.f0;
            this.g0 = bVar.g0;
            this.h0 = bVar.h0;
            this.k0 = bVar.k0;
            int[] iArr = bVar.i0;
            if (iArr == null || bVar.j0 != null) {
                this.i0 = null;
            } else {
                this.i0 = Arrays.copyOf(iArr, iArr.length);
            }
            this.j0 = bVar.j0;
            this.l0 = bVar.l0;
            this.m0 = bVar.m0;
            this.n0 = bVar.n0;
            this.o0 = bVar.o0;
        }

        void b(Context context, AttributeSet attributeSet) {
            int i = Build.VERSION.SDK_INT;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Layout);
            this.b = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                int i3 = p0.get(index);
                if (i3 == 80) {
                    this.l0 = typedArrayObtainStyledAttributes.getBoolean(index, this.l0);
                } else if (i3 == 81) {
                    this.m0 = typedArrayObtainStyledAttributes.getBoolean(index, this.m0);
                } else if (i3 != 97) {
                    switch (i3) {
                        case 1:
                            this.p = c.v(typedArrayObtainStyledAttributes, index, this.p);
                            break;
                        case 2:
                            this.I = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.I);
                            break;
                        case 3:
                            this.o = c.v(typedArrayObtainStyledAttributes, index, this.o);
                            break;
                        case 4:
                            this.n = c.v(typedArrayObtainStyledAttributes, index, this.n);
                            break;
                        case 5:
                            this.y = typedArrayObtainStyledAttributes.getString(index);
                            break;
                        case 6:
                            this.C = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.C);
                            break;
                        case 7:
                            this.D = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.D);
                            break;
                        case 8:
                            if (i >= 17) {
                                this.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.J);
                            }
                            break;
                        case 9:
                            this.v = c.v(typedArrayObtainStyledAttributes, index, this.v);
                            break;
                        case 10:
                            this.u = c.v(typedArrayObtainStyledAttributes, index, this.u);
                            break;
                        case 11:
                            this.P = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.P);
                            break;
                        case 12:
                            this.Q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.Q);
                            break;
                        case 13:
                            this.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.M);
                            break;
                        case 14:
                            this.O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.O);
                            break;
                        case 15:
                            this.R = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.R);
                            break;
                        case 16:
                            this.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.N);
                            break;
                        case 17:
                            this.f884e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f884e);
                            break;
                        case 18:
                            this.f885f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f885f);
                            break;
                        case 19:
                            this.f886g = typedArrayObtainStyledAttributes.getFloat(index, this.f886g);
                            break;
                        case 20:
                            this.w = typedArrayObtainStyledAttributes.getFloat(index, this.w);
                            break;
                        case 21:
                            this.f883d = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.f883d);
                            break;
                        case 22:
                            this.c = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.c);
                            break;
                        case 23:
                            this.F = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.F);
                            break;
                        case 24:
                            this.f887h = c.v(typedArrayObtainStyledAttributes, index, this.f887h);
                            break;
                        case 25:
                            this.i = c.v(typedArrayObtainStyledAttributes, index, this.i);
                            break;
                        case 26:
                            this.E = typedArrayObtainStyledAttributes.getInt(index, this.E);
                            break;
                        case 27:
                            this.G = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.G);
                            break;
                        case 28:
                            this.j = c.v(typedArrayObtainStyledAttributes, index, this.j);
                            break;
                        case 29:
                            this.k = c.v(typedArrayObtainStyledAttributes, index, this.k);
                            break;
                        case 30:
                            if (i >= 17) {
                                this.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.K);
                            }
                            break;
                        case 31:
                            this.s = c.v(typedArrayObtainStyledAttributes, index, this.s);
                            break;
                        case 32:
                            this.t = c.v(typedArrayObtainStyledAttributes, index, this.t);
                            break;
                        case 33:
                            this.H = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.H);
                            break;
                        case 34:
                            this.m = c.v(typedArrayObtainStyledAttributes, index, this.m);
                            break;
                        case 35:
                            this.l = c.v(typedArrayObtainStyledAttributes, index, this.l);
                            break;
                        case 36:
                            this.x = typedArrayObtainStyledAttributes.getFloat(index, this.x);
                            break;
                        case 37:
                            this.U = typedArrayObtainStyledAttributes.getFloat(index, this.U);
                            break;
                        case 38:
                            this.T = typedArrayObtainStyledAttributes.getFloat(index, this.T);
                            break;
                        case 39:
                            this.V = typedArrayObtainStyledAttributes.getInt(index, this.V);
                            break;
                        case 40:
                            this.W = typedArrayObtainStyledAttributes.getInt(index, this.W);
                            break;
                        case 41:
                            c.w(this, typedArrayObtainStyledAttributes, index, 0);
                            break;
                        case 42:
                            c.w(this, typedArrayObtainStyledAttributes, index, 1);
                            break;
                        default:
                            switch (i3) {
                                case 54:
                                    this.X = typedArrayObtainStyledAttributes.getInt(index, this.X);
                                    break;
                                case 55:
                                    this.Y = typedArrayObtainStyledAttributes.getInt(index, this.Y);
                                    break;
                                case 56:
                                    this.Z = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.Z);
                                    break;
                                case 57:
                                    this.a0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.a0);
                                    break;
                                case 58:
                                    this.b0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.b0);
                                    break;
                                case 59:
                                    this.c0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.c0);
                                    break;
                                default:
                                    switch (i3) {
                                        case 61:
                                            this.z = c.v(typedArrayObtainStyledAttributes, index, this.z);
                                            break;
                                        case 62:
                                            this.A = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.A);
                                            break;
                                        case 63:
                                            this.B = typedArrayObtainStyledAttributes.getFloat(index, this.B);
                                            break;
                                        default:
                                            switch (i3) {
                                                case 69:
                                                    this.d0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                                    break;
                                                case 70:
                                                    this.e0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                                    break;
                                                case 71:
                                                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                                    break;
                                                case 72:
                                                    this.f0 = typedArrayObtainStyledAttributes.getInt(index, this.f0);
                                                    break;
                                                case 73:
                                                    this.g0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.g0);
                                                    break;
                                                case 74:
                                                    this.j0 = typedArrayObtainStyledAttributes.getString(index);
                                                    break;
                                                case 75:
                                                    this.n0 = typedArrayObtainStyledAttributes.getBoolean(index, this.n0);
                                                    break;
                                                case 76:
                                                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + p0.get(index));
                                                    break;
                                                case 77:
                                                    this.k0 = typedArrayObtainStyledAttributes.getString(index);
                                                    break;
                                                default:
                                                    switch (i3) {
                                                        case 91:
                                                            this.q = c.v(typedArrayObtainStyledAttributes, index, this.q);
                                                            break;
                                                        case 92:
                                                            this.r = c.v(typedArrayObtainStyledAttributes, index, this.r);
                                                            break;
                                                        case 93:
                                                            this.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.L);
                                                            break;
                                                        case 94:
                                                            this.S = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.S);
                                                            break;
                                                        default:
                                                            Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + p0.get(index));
                                                            break;
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                } else {
                    this.o0 = typedArrayObtainStyledAttributes.getInt(index, this.o0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.c$c, reason: collision with other inner class name */
    public static class C0019c {
        private static SparseIntArray o;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f888a = false;
        public int b = -1;
        public int c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f889d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f890e = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f891f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public float f892g = Float.NaN;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f893h = -1;
        public float i = Float.NaN;
        public float j = Float.NaN;
        public int k = -1;
        public String l = null;
        public int m = -3;
        public int n = -1;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            o = sparseIntArray;
            sparseIntArray.append(R.styleable.Motion_motionPathRotate, 1);
            o.append(R.styleable.Motion_pathMotionArc, 2);
            o.append(R.styleable.Motion_transitionEasing, 3);
            o.append(R.styleable.Motion_drawPath, 4);
            o.append(R.styleable.Motion_animateRelativeTo, 5);
            o.append(R.styleable.Motion_animateCircleAngleTo, 6);
            o.append(R.styleable.Motion_motionStagger, 7);
            o.append(R.styleable.Motion_quantizeMotionSteps, 8);
            o.append(R.styleable.Motion_quantizeMotionPhase, 9);
            o.append(R.styleable.Motion_quantizeMotionInterpolator, 10);
        }

        public void a(C0019c c0019c) {
            this.f888a = c0019c.f888a;
            this.b = c0019c.b;
            this.f889d = c0019c.f889d;
            this.f890e = c0019c.f890e;
            this.f891f = c0019c.f891f;
            this.i = c0019c.i;
            this.f892g = c0019c.f892g;
            this.f893h = c0019c.f893h;
        }

        void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Motion);
            this.f888a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                switch (o.get(index)) {
                    case 1:
                        this.i = typedArrayObtainStyledAttributes.getFloat(index, this.i);
                        break;
                    case 2:
                        this.f890e = typedArrayObtainStyledAttributes.getInt(index, this.f890e);
                        break;
                    case 3:
                        if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                            this.f889d = typedArrayObtainStyledAttributes.getString(index);
                        } else {
                            this.f889d = androidx.constraintlayout.core.motion.a.c.c[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                        }
                        break;
                    case 4:
                        this.f891f = typedArrayObtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.b = c.v(typedArrayObtainStyledAttributes, index, this.b);
                        break;
                    case 6:
                        this.c = typedArrayObtainStyledAttributes.getInteger(index, this.c);
                        break;
                    case 7:
                        this.f892g = typedArrayObtainStyledAttributes.getFloat(index, this.f892g);
                        break;
                    case 8:
                        this.k = typedArrayObtainStyledAttributes.getInteger(index, this.k);
                        break;
                    case 9:
                        this.j = typedArrayObtainStyledAttributes.getFloat(index, this.j);
                        break;
                    case 10:
                        int i2 = typedArrayObtainStyledAttributes.peekValue(index).type;
                        if (i2 == 1) {
                            int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                            this.n = resourceId;
                            if (resourceId != -1) {
                                this.m = -2;
                            }
                        } else if (i2 == 3) {
                            String string = typedArrayObtainStyledAttributes.getString(index);
                            this.l = string;
                            if (string.indexOf("/") > 0) {
                                this.n = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                                this.m = -2;
                            } else {
                                this.m = -1;
                            }
                        } else {
                            this.m = typedArrayObtainStyledAttributes.getInteger(index, this.n);
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f894a = false;
        public int b = 0;
        public int c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f895d = 1.0f;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f896e = Float.NaN;

        public void a(d dVar) {
            this.f894a = dVar.f894a;
            this.b = dVar.b;
            this.f895d = dVar.f895d;
            this.f896e = dVar.f896e;
            this.c = dVar.c;
        }

        void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PropertySet);
            this.f894a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.PropertySet_android_alpha) {
                    this.f895d = typedArrayObtainStyledAttributes.getFloat(index, this.f895d);
                } else if (index == R.styleable.PropertySet_android_visibility) {
                    this.b = typedArrayObtainStyledAttributes.getInt(index, this.b);
                    this.b = c.f864f[this.b];
                } else if (index == R.styleable.PropertySet_visibilityMode) {
                    this.c = typedArrayObtainStyledAttributes.getInt(index, this.c);
                } else if (index == R.styleable.PropertySet_motionProgress) {
                    this.f896e = typedArrayObtainStyledAttributes.getFloat(index, this.f896e);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class e {
        private static SparseIntArray o;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f897a = false;
        public float b = BitmapDescriptorFactory.HUE_RED;
        public float c = BitmapDescriptorFactory.HUE_RED;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f898d = BitmapDescriptorFactory.HUE_RED;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f899e = 1.0f;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f900f = 1.0f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public float f901g = Float.NaN;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f902h = Float.NaN;
        public int i = -1;
        public float j = BitmapDescriptorFactory.HUE_RED;
        public float k = BitmapDescriptorFactory.HUE_RED;
        public float l = BitmapDescriptorFactory.HUE_RED;
        public boolean m = false;
        public float n = BitmapDescriptorFactory.HUE_RED;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            o = sparseIntArray;
            sparseIntArray.append(R.styleable.Transform_android_rotation, 1);
            o.append(R.styleable.Transform_android_rotationX, 2);
            o.append(R.styleable.Transform_android_rotationY, 3);
            o.append(R.styleable.Transform_android_scaleX, 4);
            o.append(R.styleable.Transform_android_scaleY, 5);
            o.append(R.styleable.Transform_android_transformPivotX, 6);
            o.append(R.styleable.Transform_android_transformPivotY, 7);
            o.append(R.styleable.Transform_android_translationX, 8);
            o.append(R.styleable.Transform_android_translationY, 9);
            o.append(R.styleable.Transform_android_translationZ, 10);
            o.append(R.styleable.Transform_android_elevation, 11);
            o.append(R.styleable.Transform_transformPivotTarget, 12);
        }

        public void a(e eVar) {
            this.f897a = eVar.f897a;
            this.b = eVar.b;
            this.c = eVar.c;
            this.f898d = eVar.f898d;
            this.f899e = eVar.f899e;
            this.f900f = eVar.f900f;
            this.f901g = eVar.f901g;
            this.f902h = eVar.f902h;
            this.i = eVar.i;
            this.j = eVar.j;
            this.k = eVar.k;
            this.l = eVar.l;
            this.m = eVar.m;
            this.n = eVar.n;
        }

        void b(Context context, AttributeSet attributeSet) {
            int i = Build.VERSION.SDK_INT;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Transform);
            this.f897a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                switch (o.get(index)) {
                    case 1:
                        this.b = typedArrayObtainStyledAttributes.getFloat(index, this.b);
                        break;
                    case 2:
                        this.c = typedArrayObtainStyledAttributes.getFloat(index, this.c);
                        break;
                    case 3:
                        this.f898d = typedArrayObtainStyledAttributes.getFloat(index, this.f898d);
                        break;
                    case 4:
                        this.f899e = typedArrayObtainStyledAttributes.getFloat(index, this.f899e);
                        break;
                    case 5:
                        this.f900f = typedArrayObtainStyledAttributes.getFloat(index, this.f900f);
                        break;
                    case 6:
                        this.f901g = typedArrayObtainStyledAttributes.getDimension(index, this.f901g);
                        break;
                    case 7:
                        this.f902h = typedArrayObtainStyledAttributes.getDimension(index, this.f902h);
                        break;
                    case 8:
                        this.j = typedArrayObtainStyledAttributes.getDimension(index, this.j);
                        break;
                    case 9:
                        this.k = typedArrayObtainStyledAttributes.getDimension(index, this.k);
                        break;
                    case 10:
                        if (i >= 21) {
                            this.l = typedArrayObtainStyledAttributes.getDimension(index, this.l);
                        }
                        break;
                    case 11:
                        if (i >= 21) {
                            this.m = true;
                            this.n = typedArrayObtainStyledAttributes.getDimension(index, this.n);
                        }
                        break;
                    case 12:
                        this.i = c.v(typedArrayObtainStyledAttributes, index, this.i);
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    static {
        f865g.append(R.styleable.Constraint_layout_constraintLeft_toLeftOf, 25);
        f865g.append(R.styleable.Constraint_layout_constraintLeft_toRightOf, 26);
        f865g.append(R.styleable.Constraint_layout_constraintRight_toLeftOf, 29);
        f865g.append(R.styleable.Constraint_layout_constraintRight_toRightOf, 30);
        f865g.append(R.styleable.Constraint_layout_constraintTop_toTopOf, 36);
        f865g.append(R.styleable.Constraint_layout_constraintTop_toBottomOf, 35);
        f865g.append(R.styleable.Constraint_layout_constraintBottom_toTopOf, 4);
        f865g.append(R.styleable.Constraint_layout_constraintBottom_toBottomOf, 3);
        f865g.append(R.styleable.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        f865g.append(R.styleable.Constraint_layout_constraintBaseline_toTopOf, 91);
        f865g.append(R.styleable.Constraint_layout_constraintBaseline_toBottomOf, 92);
        f865g.append(R.styleable.Constraint_layout_editor_absoluteX, 6);
        f865g.append(R.styleable.Constraint_layout_editor_absoluteY, 7);
        f865g.append(R.styleable.Constraint_layout_constraintGuide_begin, 17);
        f865g.append(R.styleable.Constraint_layout_constraintGuide_end, 18);
        f865g.append(R.styleable.Constraint_layout_constraintGuide_percent, 19);
        f865g.append(R.styleable.Constraint_android_orientation, 27);
        f865g.append(R.styleable.Constraint_layout_constraintStart_toEndOf, 32);
        f865g.append(R.styleable.Constraint_layout_constraintStart_toStartOf, 33);
        f865g.append(R.styleable.Constraint_layout_constraintEnd_toStartOf, 10);
        f865g.append(R.styleable.Constraint_layout_constraintEnd_toEndOf, 9);
        f865g.append(R.styleable.Constraint_layout_goneMarginLeft, 13);
        f865g.append(R.styleable.Constraint_layout_goneMarginTop, 16);
        f865g.append(R.styleable.Constraint_layout_goneMarginRight, 14);
        f865g.append(R.styleable.Constraint_layout_goneMarginBottom, 11);
        f865g.append(R.styleable.Constraint_layout_goneMarginStart, 15);
        f865g.append(R.styleable.Constraint_layout_goneMarginEnd, 12);
        f865g.append(R.styleable.Constraint_layout_constraintVertical_weight, 40);
        f865g.append(R.styleable.Constraint_layout_constraintHorizontal_weight, 39);
        f865g.append(R.styleable.Constraint_layout_constraintHorizontal_chainStyle, 41);
        f865g.append(R.styleable.Constraint_layout_constraintVertical_chainStyle, 42);
        f865g.append(R.styleable.Constraint_layout_constraintHorizontal_bias, 20);
        f865g.append(R.styleable.Constraint_layout_constraintVertical_bias, 37);
        f865g.append(R.styleable.Constraint_layout_constraintDimensionRatio, 5);
        f865g.append(R.styleable.Constraint_layout_constraintLeft_creator, 87);
        f865g.append(R.styleable.Constraint_layout_constraintTop_creator, 87);
        f865g.append(R.styleable.Constraint_layout_constraintRight_creator, 87);
        f865g.append(R.styleable.Constraint_layout_constraintBottom_creator, 87);
        f865g.append(R.styleable.Constraint_layout_constraintBaseline_creator, 87);
        f865g.append(R.styleable.Constraint_android_layout_marginLeft, 24);
        f865g.append(R.styleable.Constraint_android_layout_marginRight, 28);
        f865g.append(R.styleable.Constraint_android_layout_marginStart, 31);
        f865g.append(R.styleable.Constraint_android_layout_marginEnd, 8);
        f865g.append(R.styleable.Constraint_android_layout_marginTop, 34);
        f865g.append(R.styleable.Constraint_android_layout_marginBottom, 2);
        f865g.append(R.styleable.Constraint_android_layout_width, 23);
        f865g.append(R.styleable.Constraint_android_layout_height, 21);
        f865g.append(R.styleable.Constraint_layout_constraintWidth, 95);
        f865g.append(R.styleable.Constraint_layout_constraintHeight, 96);
        f865g.append(R.styleable.Constraint_android_visibility, 22);
        f865g.append(R.styleable.Constraint_android_alpha, 43);
        f865g.append(R.styleable.Constraint_android_elevation, 44);
        f865g.append(R.styleable.Constraint_android_rotationX, 45);
        f865g.append(R.styleable.Constraint_android_rotationY, 46);
        f865g.append(R.styleable.Constraint_android_rotation, 60);
        f865g.append(R.styleable.Constraint_android_scaleX, 47);
        f865g.append(R.styleable.Constraint_android_scaleY, 48);
        f865g.append(R.styleable.Constraint_android_transformPivotX, 49);
        f865g.append(R.styleable.Constraint_android_transformPivotY, 50);
        f865g.append(R.styleable.Constraint_android_translationX, 51);
        f865g.append(R.styleable.Constraint_android_translationY, 52);
        f865g.append(R.styleable.Constraint_android_translationZ, 53);
        f865g.append(R.styleable.Constraint_layout_constraintWidth_default, 54);
        f865g.append(R.styleable.Constraint_layout_constraintHeight_default, 55);
        f865g.append(R.styleable.Constraint_layout_constraintWidth_max, 56);
        f865g.append(R.styleable.Constraint_layout_constraintHeight_max, 57);
        f865g.append(R.styleable.Constraint_layout_constraintWidth_min, 58);
        f865g.append(R.styleable.Constraint_layout_constraintHeight_min, 59);
        f865g.append(R.styleable.Constraint_layout_constraintCircle, 61);
        f865g.append(R.styleable.Constraint_layout_constraintCircleRadius, 62);
        f865g.append(R.styleable.Constraint_layout_constraintCircleAngle, 63);
        f865g.append(R.styleable.Constraint_animateRelativeTo, 64);
        f865g.append(R.styleable.Constraint_transitionEasing, 65);
        f865g.append(R.styleable.Constraint_drawPath, 66);
        f865g.append(R.styleable.Constraint_transitionPathRotate, 67);
        f865g.append(R.styleable.Constraint_motionStagger, 79);
        f865g.append(R.styleable.Constraint_android_id, 38);
        f865g.append(R.styleable.Constraint_motionProgress, 68);
        f865g.append(R.styleable.Constraint_layout_constraintWidth_percent, 69);
        f865g.append(R.styleable.Constraint_layout_constraintHeight_percent, 70);
        f865g.append(R.styleable.Constraint_layout_wrapBehaviorInParent, 97);
        f865g.append(R.styleable.Constraint_chainUseRtl, 71);
        f865g.append(R.styleable.Constraint_barrierDirection, 72);
        f865g.append(R.styleable.Constraint_barrierMargin, 73);
        f865g.append(R.styleable.Constraint_constraint_referenced_ids, 74);
        f865g.append(R.styleable.Constraint_barrierAllowsGoneWidgets, 75);
        f865g.append(R.styleable.Constraint_pathMotionArc, 76);
        f865g.append(R.styleable.Constraint_layout_constraintTag, 77);
        f865g.append(R.styleable.Constraint_visibilityMode, 78);
        f865g.append(R.styleable.Constraint_layout_constrainedWidth, 80);
        f865g.append(R.styleable.Constraint_layout_constrainedHeight, 81);
        f865g.append(R.styleable.Constraint_polarRelativeTo, 82);
        f865g.append(R.styleable.Constraint_transformPivotTarget, 83);
        f865g.append(R.styleable.Constraint_quantizeMotionSteps, 84);
        f865g.append(R.styleable.Constraint_quantizeMotionPhase, 85);
        f865g.append(R.styleable.Constraint_quantizeMotionInterpolator, 86);
        SparseIntArray sparseIntArray = f866h;
        int i = R.styleable.ConstraintOverride_layout_editor_absoluteY;
        sparseIntArray.append(i, 6);
        f866h.append(i, 7);
        f866h.append(R.styleable.ConstraintOverride_android_orientation, 27);
        f866h.append(R.styleable.ConstraintOverride_layout_goneMarginLeft, 13);
        f866h.append(R.styleable.ConstraintOverride_layout_goneMarginTop, 16);
        f866h.append(R.styleable.ConstraintOverride_layout_goneMarginRight, 14);
        f866h.append(R.styleable.ConstraintOverride_layout_goneMarginBottom, 11);
        f866h.append(R.styleable.ConstraintOverride_layout_goneMarginStart, 15);
        f866h.append(R.styleable.ConstraintOverride_layout_goneMarginEnd, 12);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintVertical_weight, 40);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintHorizontal_weight, 39);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintHorizontal_chainStyle, 41);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintVertical_chainStyle, 42);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintHorizontal_bias, 20);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintVertical_bias, 37);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintDimensionRatio, 5);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintLeft_creator, 87);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintTop_creator, 87);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintRight_creator, 87);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintBottom_creator, 87);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintBaseline_creator, 87);
        f866h.append(R.styleable.ConstraintOverride_android_layout_marginLeft, 24);
        f866h.append(R.styleable.ConstraintOverride_android_layout_marginRight, 28);
        f866h.append(R.styleable.ConstraintOverride_android_layout_marginStart, 31);
        f866h.append(R.styleable.ConstraintOverride_android_layout_marginEnd, 8);
        f866h.append(R.styleable.ConstraintOverride_android_layout_marginTop, 34);
        f866h.append(R.styleable.ConstraintOverride_android_layout_marginBottom, 2);
        f866h.append(R.styleable.ConstraintOverride_android_layout_width, 23);
        f866h.append(R.styleable.ConstraintOverride_android_layout_height, 21);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintWidth, 95);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintHeight, 96);
        f866h.append(R.styleable.ConstraintOverride_android_visibility, 22);
        f866h.append(R.styleable.ConstraintOverride_android_alpha, 43);
        f866h.append(R.styleable.ConstraintOverride_android_elevation, 44);
        f866h.append(R.styleable.ConstraintOverride_android_rotationX, 45);
        f866h.append(R.styleable.ConstraintOverride_android_rotationY, 46);
        f866h.append(R.styleable.ConstraintOverride_android_rotation, 60);
        f866h.append(R.styleable.ConstraintOverride_android_scaleX, 47);
        f866h.append(R.styleable.ConstraintOverride_android_scaleY, 48);
        f866h.append(R.styleable.ConstraintOverride_android_transformPivotX, 49);
        f866h.append(R.styleable.ConstraintOverride_android_transformPivotY, 50);
        f866h.append(R.styleable.ConstraintOverride_android_translationX, 51);
        f866h.append(R.styleable.ConstraintOverride_android_translationY, 52);
        f866h.append(R.styleable.ConstraintOverride_android_translationZ, 53);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintWidth_default, 54);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintHeight_default, 55);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintWidth_max, 56);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintHeight_max, 57);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintWidth_min, 58);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintHeight_min, 59);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintCircleRadius, 62);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintCircleAngle, 63);
        f866h.append(R.styleable.ConstraintOverride_animateRelativeTo, 64);
        f866h.append(R.styleable.ConstraintOverride_transitionEasing, 65);
        f866h.append(R.styleable.ConstraintOverride_drawPath, 66);
        f866h.append(R.styleable.ConstraintOverride_transitionPathRotate, 67);
        f866h.append(R.styleable.ConstraintOverride_motionStagger, 79);
        f866h.append(R.styleable.ConstraintOverride_android_id, 38);
        f866h.append(R.styleable.ConstraintOverride_motionTarget, 98);
        f866h.append(R.styleable.ConstraintOverride_motionProgress, 68);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintWidth_percent, 69);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintHeight_percent, 70);
        f866h.append(R.styleable.ConstraintOverride_chainUseRtl, 71);
        f866h.append(R.styleable.ConstraintOverride_barrierDirection, 72);
        f866h.append(R.styleable.ConstraintOverride_barrierMargin, 73);
        f866h.append(R.styleable.ConstraintOverride_constraint_referenced_ids, 74);
        f866h.append(R.styleable.ConstraintOverride_barrierAllowsGoneWidgets, 75);
        f866h.append(R.styleable.ConstraintOverride_pathMotionArc, 76);
        f866h.append(R.styleable.ConstraintOverride_layout_constraintTag, 77);
        f866h.append(R.styleable.ConstraintOverride_visibilityMode, 78);
        f866h.append(R.styleable.ConstraintOverride_layout_constrainedWidth, 80);
        f866h.append(R.styleable.ConstraintOverride_layout_constrainedHeight, 81);
        f866h.append(R.styleable.ConstraintOverride_polarRelativeTo, 82);
        f866h.append(R.styleable.ConstraintOverride_transformPivotTarget, 83);
        f866h.append(R.styleable.ConstraintOverride_quantizeMotionSteps, 84);
        f866h.append(R.styleable.ConstraintOverride_quantizeMotionPhase, 85);
        f866h.append(R.styleable.ConstraintOverride_quantizeMotionInterpolator, 86);
        f866h.append(R.styleable.ConstraintOverride_layout_wrapBehaviorInParent, 97);
    }

    private static void A(Context context, a aVar, TypedArray typedArray) {
        int i = Build.VERSION.SDK_INT;
        int indexCount = typedArray.getIndexCount();
        a.C0018a c0018a = new a.C0018a();
        aVar.f875h = c0018a;
        aVar.f871d.f888a = false;
        aVar.f872e.b = false;
        aVar.c.f894a = false;
        aVar.f873f.f897a = false;
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArray.getIndex(i2);
            switch (f866h.get(index)) {
                case 2:
                    c0018a.b(2, typedArray.getDimensionPixelSize(index, aVar.f872e.I));
                    break;
                case 3:
                case 4:
                case 9:
                case 10:
                case 25:
                case 26:
                case 29:
                case 30:
                case 32:
                case 33:
                case 35:
                case 36:
                case 61:
                case 88:
                case 89:
                case 90:
                case 91:
                case 92:
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f865g.get(index));
                    break;
                case 5:
                    c0018a.c(5, typedArray.getString(index));
                    break;
                case 6:
                    c0018a.b(6, typedArray.getDimensionPixelOffset(index, aVar.f872e.C));
                    break;
                case 7:
                    c0018a.b(7, typedArray.getDimensionPixelOffset(index, aVar.f872e.D));
                    break;
                case 8:
                    if (i >= 17) {
                        c0018a.b(8, typedArray.getDimensionPixelSize(index, aVar.f872e.J));
                    }
                    break;
                case 11:
                    c0018a.b(11, typedArray.getDimensionPixelSize(index, aVar.f872e.P));
                    break;
                case 12:
                    c0018a.b(12, typedArray.getDimensionPixelSize(index, aVar.f872e.Q));
                    break;
                case 13:
                    c0018a.b(13, typedArray.getDimensionPixelSize(index, aVar.f872e.M));
                    break;
                case 14:
                    c0018a.b(14, typedArray.getDimensionPixelSize(index, aVar.f872e.O));
                    break;
                case 15:
                    c0018a.b(15, typedArray.getDimensionPixelSize(index, aVar.f872e.R));
                    break;
                case 16:
                    c0018a.b(16, typedArray.getDimensionPixelSize(index, aVar.f872e.N));
                    break;
                case 17:
                    c0018a.b(17, typedArray.getDimensionPixelOffset(index, aVar.f872e.f884e));
                    break;
                case 18:
                    c0018a.b(18, typedArray.getDimensionPixelOffset(index, aVar.f872e.f885f));
                    break;
                case 19:
                    c0018a.a(19, typedArray.getFloat(index, aVar.f872e.f886g));
                    break;
                case 20:
                    c0018a.a(20, typedArray.getFloat(index, aVar.f872e.w));
                    break;
                case 21:
                    c0018a.b(21, typedArray.getLayoutDimension(index, aVar.f872e.f883d));
                    break;
                case 22:
                    c0018a.b(22, f864f[typedArray.getInt(index, aVar.c.b)]);
                    break;
                case 23:
                    c0018a.b(23, typedArray.getLayoutDimension(index, aVar.f872e.c));
                    break;
                case 24:
                    c0018a.b(24, typedArray.getDimensionPixelSize(index, aVar.f872e.F));
                    break;
                case 27:
                    c0018a.b(27, typedArray.getInt(index, aVar.f872e.E));
                    break;
                case 28:
                    c0018a.b(28, typedArray.getDimensionPixelSize(index, aVar.f872e.G));
                    break;
                case 31:
                    if (i >= 17) {
                        c0018a.b(31, typedArray.getDimensionPixelSize(index, aVar.f872e.K));
                    }
                    break;
                case 34:
                    c0018a.b(34, typedArray.getDimensionPixelSize(index, aVar.f872e.H));
                    break;
                case 37:
                    c0018a.a(37, typedArray.getFloat(index, aVar.f872e.x));
                    break;
                case 38:
                    int resourceId = typedArray.getResourceId(index, aVar.f870a);
                    aVar.f870a = resourceId;
                    c0018a.b(38, resourceId);
                    break;
                case 39:
                    c0018a.a(39, typedArray.getFloat(index, aVar.f872e.U));
                    break;
                case 40:
                    c0018a.a(40, typedArray.getFloat(index, aVar.f872e.T));
                    break;
                case 41:
                    c0018a.b(41, typedArray.getInt(index, aVar.f872e.V));
                    break;
                case 42:
                    c0018a.b(42, typedArray.getInt(index, aVar.f872e.W));
                    break;
                case 43:
                    c0018a.a(43, typedArray.getFloat(index, aVar.c.f895d));
                    break;
                case 44:
                    if (i >= 21) {
                        c0018a.d(44, true);
                        c0018a.a(44, typedArray.getDimension(index, aVar.f873f.n));
                    }
                    break;
                case 45:
                    c0018a.a(45, typedArray.getFloat(index, aVar.f873f.c));
                    break;
                case 46:
                    c0018a.a(46, typedArray.getFloat(index, aVar.f873f.f898d));
                    break;
                case 47:
                    c0018a.a(47, typedArray.getFloat(index, aVar.f873f.f899e));
                    break;
                case 48:
                    c0018a.a(48, typedArray.getFloat(index, aVar.f873f.f900f));
                    break;
                case 49:
                    c0018a.a(49, typedArray.getDimension(index, aVar.f873f.f901g));
                    break;
                case 50:
                    c0018a.a(50, typedArray.getDimension(index, aVar.f873f.f902h));
                    break;
                case 51:
                    c0018a.a(51, typedArray.getDimension(index, aVar.f873f.j));
                    break;
                case 52:
                    c0018a.a(52, typedArray.getDimension(index, aVar.f873f.k));
                    break;
                case 53:
                    if (i >= 21) {
                        c0018a.a(53, typedArray.getDimension(index, aVar.f873f.l));
                    }
                    break;
                case 54:
                    c0018a.b(54, typedArray.getInt(index, aVar.f872e.X));
                    break;
                case 55:
                    c0018a.b(55, typedArray.getInt(index, aVar.f872e.Y));
                    break;
                case 56:
                    c0018a.b(56, typedArray.getDimensionPixelSize(index, aVar.f872e.Z));
                    break;
                case 57:
                    c0018a.b(57, typedArray.getDimensionPixelSize(index, aVar.f872e.a0));
                    break;
                case 58:
                    c0018a.b(58, typedArray.getDimensionPixelSize(index, aVar.f872e.b0));
                    break;
                case 59:
                    c0018a.b(59, typedArray.getDimensionPixelSize(index, aVar.f872e.c0));
                    break;
                case 60:
                    c0018a.a(60, typedArray.getFloat(index, aVar.f873f.b));
                    break;
                case 62:
                    c0018a.b(62, typedArray.getDimensionPixelSize(index, aVar.f872e.A));
                    break;
                case 63:
                    c0018a.a(63, typedArray.getFloat(index, aVar.f872e.B));
                    break;
                case 64:
                    c0018a.b(64, v(typedArray, index, aVar.f871d.b));
                    break;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        c0018a.c(65, typedArray.getString(index));
                    } else {
                        c0018a.c(65, androidx.constraintlayout.core.motion.a.c.c[typedArray.getInteger(index, 0)]);
                    }
                    break;
                case 66:
                    c0018a.b(66, typedArray.getInt(index, 0));
                    break;
                case 67:
                    c0018a.a(67, typedArray.getFloat(index, aVar.f871d.i));
                    break;
                case 68:
                    c0018a.a(68, typedArray.getFloat(index, aVar.c.f896e));
                    break;
                case 69:
                    c0018a.a(69, typedArray.getFloat(index, 1.0f));
                    break;
                case 70:
                    c0018a.a(70, typedArray.getFloat(index, 1.0f));
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    c0018a.b(72, typedArray.getInt(index, aVar.f872e.f0));
                    break;
                case 73:
                    c0018a.b(73, typedArray.getDimensionPixelSize(index, aVar.f872e.g0));
                    break;
                case 74:
                    c0018a.c(74, typedArray.getString(index));
                    break;
                case 75:
                    c0018a.d(75, typedArray.getBoolean(index, aVar.f872e.n0));
                    break;
                case 76:
                    c0018a.b(76, typedArray.getInt(index, aVar.f871d.f890e));
                    break;
                case 77:
                    c0018a.c(77, typedArray.getString(index));
                    break;
                case 78:
                    c0018a.b(78, typedArray.getInt(index, aVar.c.c));
                    break;
                case 79:
                    c0018a.a(79, typedArray.getFloat(index, aVar.f871d.f892g));
                    break;
                case 80:
                    c0018a.d(80, typedArray.getBoolean(index, aVar.f872e.l0));
                    break;
                case 81:
                    c0018a.d(81, typedArray.getBoolean(index, aVar.f872e.m0));
                    break;
                case 82:
                    c0018a.b(82, typedArray.getInteger(index, aVar.f871d.c));
                    break;
                case 83:
                    c0018a.b(83, v(typedArray, index, aVar.f873f.i));
                    break;
                case 84:
                    c0018a.b(84, typedArray.getInteger(index, aVar.f871d.k));
                    break;
                case 85:
                    c0018a.a(85, typedArray.getFloat(index, aVar.f871d.j));
                    break;
                case 86:
                    int i3 = typedArray.peekValue(index).type;
                    if (i3 == 1) {
                        aVar.f871d.n = typedArray.getResourceId(index, -1);
                        c0018a.b(89, aVar.f871d.n);
                        C0019c c0019c = aVar.f871d;
                        if (c0019c.n != -1) {
                            c0019c.m = -2;
                            c0018a.b(88, -2);
                        }
                    } else if (i3 == 3) {
                        aVar.f871d.l = typedArray.getString(index);
                        c0018a.c(90, aVar.f871d.l);
                        if (aVar.f871d.l.indexOf("/") > 0) {
                            aVar.f871d.n = typedArray.getResourceId(index, -1);
                            c0018a.b(89, aVar.f871d.n);
                            aVar.f871d.m = -2;
                            c0018a.b(88, -2);
                        } else {
                            aVar.f871d.m = -1;
                            c0018a.b(88, -1);
                        }
                    } else {
                        C0019c c0019c2 = aVar.f871d;
                        c0019c2.m = typedArray.getInteger(index, c0019c2.n);
                        c0018a.b(88, aVar.f871d.m);
                    }
                    break;
                case 87:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f865g.get(index));
                    break;
                case 93:
                    c0018a.b(93, typedArray.getDimensionPixelSize(index, aVar.f872e.L));
                    break;
                case 94:
                    c0018a.b(94, typedArray.getDimensionPixelSize(index, aVar.f872e.S));
                    break;
                case 95:
                    w(c0018a, typedArray, index, 0);
                    break;
                case 96:
                    w(c0018a, typedArray, index, 1);
                    break;
                case 97:
                    c0018a.b(97, typedArray.getInt(index, aVar.f872e.o0));
                    break;
                case 98:
                    if (MotionLayout.y0) {
                        int resourceId2 = typedArray.getResourceId(index, aVar.f870a);
                        aVar.f870a = resourceId2;
                        if (resourceId2 == -1) {
                            aVar.b = typedArray.getString(index);
                        }
                    } else if (typedArray.peekValue(index).type == 3) {
                        aVar.b = typedArray.getString(index);
                    } else {
                        aVar.f870a = typedArray.getResourceId(index, aVar.f870a);
                    }
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void D(a aVar, int i, float f2) {
        if (i == 19) {
            aVar.f872e.f886g = f2;
        }
        if (i == 20) {
            aVar.f872e.w = f2;
            return;
        }
        if (i == 37) {
            aVar.f872e.x = f2;
            return;
        }
        if (i == 60) {
            aVar.f873f.b = f2;
            return;
        }
        if (i == 63) {
            aVar.f872e.B = f2;
            return;
        }
        if (i == 79) {
            aVar.f871d.f892g = f2;
            return;
        }
        if (i == 85) {
            aVar.f871d.j = f2;
            return;
        }
        if (i != 87) {
            if (i == 39) {
                aVar.f872e.U = f2;
                return;
            }
            if (i == 40) {
                aVar.f872e.T = f2;
                return;
            }
            switch (i) {
                case 43:
                    aVar.c.f895d = f2;
                    break;
                case 44:
                    e eVar = aVar.f873f;
                    eVar.n = f2;
                    eVar.m = true;
                    break;
                case 45:
                    aVar.f873f.c = f2;
                    break;
                case 46:
                    aVar.f873f.f898d = f2;
                    break;
                case 47:
                    aVar.f873f.f899e = f2;
                    break;
                case 48:
                    aVar.f873f.f900f = f2;
                    break;
                case 49:
                    aVar.f873f.f901g = f2;
                    break;
                case 50:
                    aVar.f873f.f902h = f2;
                    break;
                case 51:
                    aVar.f873f.j = f2;
                    break;
                case 52:
                    aVar.f873f.k = f2;
                    break;
                case 53:
                    aVar.f873f.l = f2;
                    break;
                default:
                    switch (i) {
                        case 67:
                            aVar.f871d.i = f2;
                            break;
                        case 68:
                            aVar.c.f896e = f2;
                            break;
                        case 69:
                            aVar.f872e.d0 = f2;
                            break;
                        case 70:
                            aVar.f872e.e0 = f2;
                            break;
                        default:
                            Log.w("ConstraintSet", "Unknown attribute 0x");
                            break;
                    }
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void E(a aVar, int i, int i2) {
        if (i == 6) {
            aVar.f872e.C = i2;
        }
        if (i == 7) {
            aVar.f872e.D = i2;
            return;
        }
        if (i == 8) {
            aVar.f872e.J = i2;
            return;
        }
        if (i == 27) {
            aVar.f872e.E = i2;
            return;
        }
        if (i == 28) {
            aVar.f872e.G = i2;
            return;
        }
        if (i == 41) {
            aVar.f872e.V = i2;
            return;
        }
        if (i == 42) {
            aVar.f872e.W = i2;
            return;
        }
        if (i == 61) {
            aVar.f872e.z = i2;
            return;
        }
        if (i == 62) {
            aVar.f872e.A = i2;
            return;
        }
        if (i == 72) {
            aVar.f872e.f0 = i2;
            return;
        }
        if (i == 73) {
            aVar.f872e.g0 = i2;
            return;
        }
        switch (i) {
            case 2:
                aVar.f872e.I = i2;
                break;
            case 11:
                aVar.f872e.P = i2;
                break;
            case 12:
                aVar.f872e.Q = i2;
                break;
            case 13:
                aVar.f872e.M = i2;
                break;
            case 14:
                aVar.f872e.O = i2;
                break;
            case 15:
                aVar.f872e.R = i2;
                break;
            case 16:
                aVar.f872e.N = i2;
                break;
            case 17:
                aVar.f872e.f884e = i2;
                break;
            case 18:
                aVar.f872e.f885f = i2;
                break;
            case 31:
                aVar.f872e.K = i2;
                break;
            case 34:
                aVar.f872e.H = i2;
                break;
            case 38:
                aVar.f870a = i2;
                break;
            case 64:
                aVar.f871d.b = i2;
                break;
            case 66:
                aVar.f871d.f891f = i2;
                break;
            case 76:
                aVar.f871d.f890e = i2;
                break;
            case 78:
                aVar.c.c = i2;
                break;
            case 93:
                aVar.f872e.L = i2;
                break;
            case 94:
                aVar.f872e.S = i2;
                break;
            case 97:
                aVar.f872e.o0 = i2;
                break;
            default:
                switch (i) {
                    case 21:
                        aVar.f872e.f883d = i2;
                        break;
                    case 22:
                        aVar.c.b = i2;
                        break;
                    case 23:
                        aVar.f872e.c = i2;
                        break;
                    case 24:
                        aVar.f872e.F = i2;
                        break;
                    default:
                        switch (i) {
                            case 54:
                                aVar.f872e.X = i2;
                                break;
                            case 55:
                                aVar.f872e.Y = i2;
                                break;
                            case 56:
                                aVar.f872e.Z = i2;
                                break;
                            case 57:
                                aVar.f872e.a0 = i2;
                                break;
                            case 58:
                                aVar.f872e.b0 = i2;
                                break;
                            case 59:
                                aVar.f872e.c0 = i2;
                                break;
                            default:
                                switch (i) {
                                    case 82:
                                        aVar.f871d.c = i2;
                                        break;
                                    case 83:
                                        aVar.f873f.i = i2;
                                        break;
                                    case 84:
                                        aVar.f871d.k = i2;
                                        break;
                                    default:
                                        switch (i) {
                                            case 87:
                                                break;
                                            case 88:
                                                aVar.f871d.m = i2;
                                                break;
                                            case 89:
                                                aVar.f871d.n = i2;
                                                break;
                                            default:
                                                Log.w("ConstraintSet", "Unknown attribute 0x");
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void F(a aVar, int i, String str) {
        if (i == 5) {
            aVar.f872e.y = str;
            return;
        }
        if (i == 65) {
            aVar.f871d.f889d = str;
            return;
        }
        if (i == 74) {
            b bVar = aVar.f872e;
            bVar.j0 = str;
            bVar.i0 = null;
        } else if (i == 77) {
            aVar.f872e.k0 = str;
        } else if (i != 87) {
            if (i != 90) {
                Log.w("ConstraintSet", "Unknown attribute 0x");
            } else {
                aVar.f871d.l = str;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void G(a aVar, int i, boolean z) {
        if (i == 44) {
            aVar.f873f.m = z;
            return;
        }
        if (i == 75) {
            aVar.f872e.n0 = z;
            return;
        }
        if (i != 87) {
            if (i == 80) {
                aVar.f872e.l0 = z;
            } else if (i != 81) {
                Log.w("ConstraintSet", "Unknown attribute 0x");
            } else {
                aVar.f872e.m0 = z;
            }
        }
    }

    private String J(int i) {
        switch (i) {
            case 1:
                return TtmlNode.LEFT;
            case 2:
                return TtmlNode.RIGHT;
            case 3:
                return "top";
            case 4:
                return "bottom";
            case 5:
                return "baseline";
            case 6:
                return TtmlNode.START;
            case 7:
                return TtmlNode.END;
            default:
                return "undefined";
        }
    }

    public static a k(Context context, XmlPullParser xmlPullParser) {
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
        a aVar = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSetAsAttributeSet, R.styleable.ConstraintOverride);
        A(context, aVar, typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
        return aVar;
    }

    private int[] q(View view, String str) {
        int iIntValue;
        Object designInformation;
        String[] strArrSplit = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i = 0;
        int i2 = 0;
        while (i < strArrSplit.length) {
            String strTrim = strArrSplit[i].trim();
            try {
                iIntValue = R.id.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
                iIntValue = 0;
            }
            if (iIntValue == 0) {
                iIntValue = context.getResources().getIdentifier(strTrim, TtmlNode.ATTR_ID, context.getPackageName());
            }
            if (iIntValue == 0 && view.isInEditMode() && (view.getParent() instanceof ConstraintLayout) && (designInformation = ((ConstraintLayout) view.getParent()).getDesignInformation(0, strTrim)) != null && (designInformation instanceof Integer)) {
                iIntValue = ((Integer) designInformation).intValue();
            }
            iArr[i2] = iIntValue;
            i++;
            i2++;
        }
        return i2 != strArrSplit.length ? Arrays.copyOf(iArr, i2) : iArr;
    }

    private a r(Context context, AttributeSet attributeSet, boolean z) {
        a aVar = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z ? R.styleable.ConstraintOverride : R.styleable.Constraint);
        z(context, aVar, typedArrayObtainStyledAttributes, z);
        typedArrayObtainStyledAttributes.recycle();
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int v(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        return resourceId == -1 ? typedArray.getInt(i, -1) : resourceId;
    }

    static void w(Object obj, TypedArray typedArray, int i, int i2) {
        if (obj == null) {
            return;
        }
        int i3 = typedArray.peekValue(i).type;
        if (i3 == 3) {
            x(obj, typedArray.getString(i), i2);
            return;
        }
        int dimensionPixelSize = -2;
        boolean z = false;
        if (i3 != 5) {
            int i4 = typedArray.getInt(i, 0);
            if (i4 != -4) {
                dimensionPixelSize = (i4 == -3 || !(i4 == -2 || i4 == -1)) ? 0 : i4;
            } else {
                z = true;
            }
        } else {
            dimensionPixelSize = typedArray.getDimensionPixelSize(i, 0);
        }
        if (obj instanceof ConstraintLayout.b) {
            ConstraintLayout.b bVar = (ConstraintLayout.b) obj;
            if (i2 == 0) {
                ((ViewGroup.MarginLayoutParams) bVar).width = dimensionPixelSize;
                bVar.X = z;
                return;
            } else {
                ((ViewGroup.MarginLayoutParams) bVar).height = dimensionPixelSize;
                bVar.Y = z;
                return;
            }
        }
        if (obj instanceof b) {
            b bVar2 = (b) obj;
            if (i2 == 0) {
                bVar2.c = dimensionPixelSize;
                bVar2.l0 = z;
                return;
            } else {
                bVar2.f883d = dimensionPixelSize;
                bVar2.m0 = z;
                return;
            }
        }
        if (obj instanceof a.C0018a) {
            a.C0018a c0018a = (a.C0018a) obj;
            if (i2 == 0) {
                c0018a.b(23, dimensionPixelSize);
                c0018a.d(80, z);
            } else {
                c0018a.b(21, dimensionPixelSize);
                c0018a.d(81, z);
            }
        }
    }

    static void x(Object obj, String str, int i) {
        if (str == null) {
            return;
        }
        int iIndexOf = str.indexOf(61);
        int length = str.length();
        if (iIndexOf <= 0 || iIndexOf >= length - 1) {
            return;
        }
        String strSubstring = str.substring(0, iIndexOf);
        String strSubstring2 = str.substring(iIndexOf + 1);
        if (strSubstring2.length() > 0) {
            String strTrim = strSubstring.trim();
            String strTrim2 = strSubstring2.trim();
            if ("ratio".equalsIgnoreCase(strTrim)) {
                if (obj instanceof ConstraintLayout.b) {
                    ConstraintLayout.b bVar = (ConstraintLayout.b) obj;
                    if (i == 0) {
                        ((ViewGroup.MarginLayoutParams) bVar).width = 0;
                    } else {
                        ((ViewGroup.MarginLayoutParams) bVar).height = 0;
                    }
                    y(bVar, strTrim2);
                    return;
                }
                if (obj instanceof b) {
                    ((b) obj).y = strTrim2;
                    return;
                } else {
                    if (obj instanceof a.C0018a) {
                        ((a.C0018a) obj).c(5, strTrim2);
                        return;
                    }
                    return;
                }
            }
            try {
                if ("weight".equalsIgnoreCase(strTrim)) {
                    float f2 = Float.parseFloat(strTrim2);
                    if (obj instanceof ConstraintLayout.b) {
                        ConstraintLayout.b bVar2 = (ConstraintLayout.b) obj;
                        if (i == 0) {
                            ((ViewGroup.MarginLayoutParams) bVar2).width = 0;
                            bVar2.I = f2;
                        } else {
                            ((ViewGroup.MarginLayoutParams) bVar2).height = 0;
                            bVar2.J = f2;
                        }
                    } else if (obj instanceof b) {
                        b bVar3 = (b) obj;
                        if (i == 0) {
                            bVar3.c = 0;
                            bVar3.U = f2;
                        } else {
                            bVar3.f883d = 0;
                            bVar3.T = f2;
                        }
                    } else if (obj instanceof a.C0018a) {
                        a.C0018a c0018a = (a.C0018a) obj;
                        if (i == 0) {
                            c0018a.b(23, 0);
                            c0018a.a(39, f2);
                        } else {
                            c0018a.b(21, 0);
                            c0018a.a(40, f2);
                        }
                    }
                } else {
                    if (!"parent".equalsIgnoreCase(strTrim)) {
                        return;
                    }
                    float fMax = Math.max(BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, Float.parseFloat(strTrim2)));
                    if (obj instanceof ConstraintLayout.b) {
                        ConstraintLayout.b bVar4 = (ConstraintLayout.b) obj;
                        if (i == 0) {
                            ((ViewGroup.MarginLayoutParams) bVar4).width = 0;
                            bVar4.S = fMax;
                            bVar4.M = 2;
                        } else {
                            ((ViewGroup.MarginLayoutParams) bVar4).height = 0;
                            bVar4.T = fMax;
                            bVar4.N = 2;
                        }
                    } else if (obj instanceof b) {
                        b bVar5 = (b) obj;
                        if (i == 0) {
                            bVar5.c = 0;
                            bVar5.d0 = fMax;
                            bVar5.X = 2;
                        } else {
                            bVar5.f883d = 0;
                            bVar5.e0 = fMax;
                            bVar5.Y = 2;
                        }
                    } else if (obj instanceof a.C0018a) {
                        a.C0018a c0018a2 = (a.C0018a) obj;
                        if (i == 0) {
                            c0018a2.b(23, 0);
                            c0018a2.b(54, 2);
                        } else {
                            c0018a2.b(21, 0);
                            c0018a2.b(55, 2);
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    static void y(ConstraintLayout.b bVar, String str) {
        float fAbs = Float.NaN;
        int i = -1;
        if (str != null) {
            int length = str.length();
            int iIndexOf = str.indexOf(44);
            int i2 = 0;
            if (iIndexOf > 0 && iIndexOf < length - 1) {
                String strSubstring = str.substring(0, iIndexOf);
                if (strSubstring.equalsIgnoreCase(ExifInterface.LONGITUDE_WEST)) {
                    i = 0;
                } else if (strSubstring.equalsIgnoreCase("H")) {
                    i = 1;
                }
                i2 = iIndexOf + 1;
            }
            int iIndexOf2 = str.indexOf(58);
            try {
                if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                    String strSubstring2 = str.substring(i2);
                    if (strSubstring2.length() > 0) {
                        fAbs = Float.parseFloat(strSubstring2);
                    }
                } else {
                    String strSubstring3 = str.substring(i2, iIndexOf2);
                    String strSubstring4 = str.substring(iIndexOf2 + 1);
                    if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                        float f2 = Float.parseFloat(strSubstring3);
                        float f3 = Float.parseFloat(strSubstring4);
                        if (f2 > BitmapDescriptorFactory.HUE_RED && f3 > BitmapDescriptorFactory.HUE_RED) {
                            fAbs = i == 1 ? Math.abs(f3 / f2) : Math.abs(f2 / f3);
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        bVar.F = str;
        bVar.G = fAbs;
        bVar.H = i;
    }

    private void z(Context context, a aVar, TypedArray typedArray, boolean z) {
        int i = Build.VERSION.SDK_INT;
        if (z) {
            A(context, aVar, typedArray);
            return;
        }
        int indexCount = typedArray.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArray.getIndex(i2);
            if (index != R.styleable.Constraint_android_id && R.styleable.Constraint_android_layout_marginStart != index && R.styleable.Constraint_android_layout_marginEnd != index) {
                aVar.f871d.f888a = true;
                aVar.f872e.b = true;
                aVar.c.f894a = true;
                aVar.f873f.f897a = true;
            }
            switch (f865g.get(index)) {
                case 1:
                    b bVar = aVar.f872e;
                    bVar.p = v(typedArray, index, bVar.p);
                    break;
                case 2:
                    b bVar2 = aVar.f872e;
                    bVar2.I = typedArray.getDimensionPixelSize(index, bVar2.I);
                    break;
                case 3:
                    b bVar3 = aVar.f872e;
                    bVar3.o = v(typedArray, index, bVar3.o);
                    break;
                case 4:
                    b bVar4 = aVar.f872e;
                    bVar4.n = v(typedArray, index, bVar4.n);
                    break;
                case 5:
                    aVar.f872e.y = typedArray.getString(index);
                    break;
                case 6:
                    b bVar5 = aVar.f872e;
                    bVar5.C = typedArray.getDimensionPixelOffset(index, bVar5.C);
                    break;
                case 7:
                    b bVar6 = aVar.f872e;
                    bVar6.D = typedArray.getDimensionPixelOffset(index, bVar6.D);
                    break;
                case 8:
                    if (i >= 17) {
                        b bVar7 = aVar.f872e;
                        bVar7.J = typedArray.getDimensionPixelSize(index, bVar7.J);
                    }
                    break;
                case 9:
                    b bVar8 = aVar.f872e;
                    bVar8.v = v(typedArray, index, bVar8.v);
                    break;
                case 10:
                    b bVar9 = aVar.f872e;
                    bVar9.u = v(typedArray, index, bVar9.u);
                    break;
                case 11:
                    b bVar10 = aVar.f872e;
                    bVar10.P = typedArray.getDimensionPixelSize(index, bVar10.P);
                    break;
                case 12:
                    b bVar11 = aVar.f872e;
                    bVar11.Q = typedArray.getDimensionPixelSize(index, bVar11.Q);
                    break;
                case 13:
                    b bVar12 = aVar.f872e;
                    bVar12.M = typedArray.getDimensionPixelSize(index, bVar12.M);
                    break;
                case 14:
                    b bVar13 = aVar.f872e;
                    bVar13.O = typedArray.getDimensionPixelSize(index, bVar13.O);
                    break;
                case 15:
                    b bVar14 = aVar.f872e;
                    bVar14.R = typedArray.getDimensionPixelSize(index, bVar14.R);
                    break;
                case 16:
                    b bVar15 = aVar.f872e;
                    bVar15.N = typedArray.getDimensionPixelSize(index, bVar15.N);
                    break;
                case 17:
                    b bVar16 = aVar.f872e;
                    bVar16.f884e = typedArray.getDimensionPixelOffset(index, bVar16.f884e);
                    break;
                case 18:
                    b bVar17 = aVar.f872e;
                    bVar17.f885f = typedArray.getDimensionPixelOffset(index, bVar17.f885f);
                    break;
                case 19:
                    b bVar18 = aVar.f872e;
                    bVar18.f886g = typedArray.getFloat(index, bVar18.f886g);
                    break;
                case 20:
                    b bVar19 = aVar.f872e;
                    bVar19.w = typedArray.getFloat(index, bVar19.w);
                    break;
                case 21:
                    b bVar20 = aVar.f872e;
                    bVar20.f883d = typedArray.getLayoutDimension(index, bVar20.f883d);
                    break;
                case 22:
                    d dVar = aVar.c;
                    dVar.b = typedArray.getInt(index, dVar.b);
                    d dVar2 = aVar.c;
                    dVar2.b = f864f[dVar2.b];
                    break;
                case 23:
                    b bVar21 = aVar.f872e;
                    bVar21.c = typedArray.getLayoutDimension(index, bVar21.c);
                    break;
                case 24:
                    b bVar22 = aVar.f872e;
                    bVar22.F = typedArray.getDimensionPixelSize(index, bVar22.F);
                    break;
                case 25:
                    b bVar23 = aVar.f872e;
                    bVar23.f887h = v(typedArray, index, bVar23.f887h);
                    break;
                case 26:
                    b bVar24 = aVar.f872e;
                    bVar24.i = v(typedArray, index, bVar24.i);
                    break;
                case 27:
                    b bVar25 = aVar.f872e;
                    bVar25.E = typedArray.getInt(index, bVar25.E);
                    break;
                case 28:
                    b bVar26 = aVar.f872e;
                    bVar26.G = typedArray.getDimensionPixelSize(index, bVar26.G);
                    break;
                case 29:
                    b bVar27 = aVar.f872e;
                    bVar27.j = v(typedArray, index, bVar27.j);
                    break;
                case 30:
                    b bVar28 = aVar.f872e;
                    bVar28.k = v(typedArray, index, bVar28.k);
                    break;
                case 31:
                    if (i >= 17) {
                        b bVar29 = aVar.f872e;
                        bVar29.K = typedArray.getDimensionPixelSize(index, bVar29.K);
                    }
                    break;
                case 32:
                    b bVar30 = aVar.f872e;
                    bVar30.s = v(typedArray, index, bVar30.s);
                    break;
                case 33:
                    b bVar31 = aVar.f872e;
                    bVar31.t = v(typedArray, index, bVar31.t);
                    break;
                case 34:
                    b bVar32 = aVar.f872e;
                    bVar32.H = typedArray.getDimensionPixelSize(index, bVar32.H);
                    break;
                case 35:
                    b bVar33 = aVar.f872e;
                    bVar33.m = v(typedArray, index, bVar33.m);
                    break;
                case 36:
                    b bVar34 = aVar.f872e;
                    bVar34.l = v(typedArray, index, bVar34.l);
                    break;
                case 37:
                    b bVar35 = aVar.f872e;
                    bVar35.x = typedArray.getFloat(index, bVar35.x);
                    break;
                case 38:
                    aVar.f870a = typedArray.getResourceId(index, aVar.f870a);
                    break;
                case 39:
                    b bVar36 = aVar.f872e;
                    bVar36.U = typedArray.getFloat(index, bVar36.U);
                    break;
                case 40:
                    b bVar37 = aVar.f872e;
                    bVar37.T = typedArray.getFloat(index, bVar37.T);
                    break;
                case 41:
                    b bVar38 = aVar.f872e;
                    bVar38.V = typedArray.getInt(index, bVar38.V);
                    break;
                case 42:
                    b bVar39 = aVar.f872e;
                    bVar39.W = typedArray.getInt(index, bVar39.W);
                    break;
                case 43:
                    d dVar3 = aVar.c;
                    dVar3.f895d = typedArray.getFloat(index, dVar3.f895d);
                    break;
                case 44:
                    if (i >= 21) {
                        e eVar = aVar.f873f;
                        eVar.m = true;
                        eVar.n = typedArray.getDimension(index, eVar.n);
                    }
                    break;
                case 45:
                    e eVar2 = aVar.f873f;
                    eVar2.c = typedArray.getFloat(index, eVar2.c);
                    break;
                case 46:
                    e eVar3 = aVar.f873f;
                    eVar3.f898d = typedArray.getFloat(index, eVar3.f898d);
                    break;
                case 47:
                    e eVar4 = aVar.f873f;
                    eVar4.f899e = typedArray.getFloat(index, eVar4.f899e);
                    break;
                case 48:
                    e eVar5 = aVar.f873f;
                    eVar5.f900f = typedArray.getFloat(index, eVar5.f900f);
                    break;
                case 49:
                    e eVar6 = aVar.f873f;
                    eVar6.f901g = typedArray.getDimension(index, eVar6.f901g);
                    break;
                case 50:
                    e eVar7 = aVar.f873f;
                    eVar7.f902h = typedArray.getDimension(index, eVar7.f902h);
                    break;
                case 51:
                    e eVar8 = aVar.f873f;
                    eVar8.j = typedArray.getDimension(index, eVar8.j);
                    break;
                case 52:
                    e eVar9 = aVar.f873f;
                    eVar9.k = typedArray.getDimension(index, eVar9.k);
                    break;
                case 53:
                    if (i >= 21) {
                        e eVar10 = aVar.f873f;
                        eVar10.l = typedArray.getDimension(index, eVar10.l);
                    }
                    break;
                case 54:
                    b bVar40 = aVar.f872e;
                    bVar40.X = typedArray.getInt(index, bVar40.X);
                    break;
                case 55:
                    b bVar41 = aVar.f872e;
                    bVar41.Y = typedArray.getInt(index, bVar41.Y);
                    break;
                case 56:
                    b bVar42 = aVar.f872e;
                    bVar42.Z = typedArray.getDimensionPixelSize(index, bVar42.Z);
                    break;
                case 57:
                    b bVar43 = aVar.f872e;
                    bVar43.a0 = typedArray.getDimensionPixelSize(index, bVar43.a0);
                    break;
                case 58:
                    b bVar44 = aVar.f872e;
                    bVar44.b0 = typedArray.getDimensionPixelSize(index, bVar44.b0);
                    break;
                case 59:
                    b bVar45 = aVar.f872e;
                    bVar45.c0 = typedArray.getDimensionPixelSize(index, bVar45.c0);
                    break;
                case 60:
                    e eVar11 = aVar.f873f;
                    eVar11.b = typedArray.getFloat(index, eVar11.b);
                    break;
                case 61:
                    b bVar46 = aVar.f872e;
                    bVar46.z = v(typedArray, index, bVar46.z);
                    break;
                case 62:
                    b bVar47 = aVar.f872e;
                    bVar47.A = typedArray.getDimensionPixelSize(index, bVar47.A);
                    break;
                case 63:
                    b bVar48 = aVar.f872e;
                    bVar48.B = typedArray.getFloat(index, bVar48.B);
                    break;
                case 64:
                    C0019c c0019c = aVar.f871d;
                    c0019c.b = v(typedArray, index, c0019c.b);
                    break;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        aVar.f871d.f889d = typedArray.getString(index);
                    } else {
                        aVar.f871d.f889d = androidx.constraintlayout.core.motion.a.c.c[typedArray.getInteger(index, 0)];
                    }
                    break;
                case 66:
                    aVar.f871d.f891f = typedArray.getInt(index, 0);
                    break;
                case 67:
                    C0019c c0019c2 = aVar.f871d;
                    c0019c2.i = typedArray.getFloat(index, c0019c2.i);
                    break;
                case 68:
                    d dVar4 = aVar.c;
                    dVar4.f896e = typedArray.getFloat(index, dVar4.f896e);
                    break;
                case 69:
                    aVar.f872e.d0 = typedArray.getFloat(index, 1.0f);
                    break;
                case 70:
                    aVar.f872e.e0 = typedArray.getFloat(index, 1.0f);
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    b bVar49 = aVar.f872e;
                    bVar49.f0 = typedArray.getInt(index, bVar49.f0);
                    break;
                case 73:
                    b bVar50 = aVar.f872e;
                    bVar50.g0 = typedArray.getDimensionPixelSize(index, bVar50.g0);
                    break;
                case 74:
                    aVar.f872e.j0 = typedArray.getString(index);
                    break;
                case 75:
                    b bVar51 = aVar.f872e;
                    bVar51.n0 = typedArray.getBoolean(index, bVar51.n0);
                    break;
                case 76:
                    C0019c c0019c3 = aVar.f871d;
                    c0019c3.f890e = typedArray.getInt(index, c0019c3.f890e);
                    break;
                case 77:
                    aVar.f872e.k0 = typedArray.getString(index);
                    break;
                case 78:
                    d dVar5 = aVar.c;
                    dVar5.c = typedArray.getInt(index, dVar5.c);
                    break;
                case 79:
                    C0019c c0019c4 = aVar.f871d;
                    c0019c4.f892g = typedArray.getFloat(index, c0019c4.f892g);
                    break;
                case 80:
                    b bVar52 = aVar.f872e;
                    bVar52.l0 = typedArray.getBoolean(index, bVar52.l0);
                    break;
                case 81:
                    b bVar53 = aVar.f872e;
                    bVar53.m0 = typedArray.getBoolean(index, bVar53.m0);
                    break;
                case 82:
                    C0019c c0019c5 = aVar.f871d;
                    c0019c5.c = typedArray.getInteger(index, c0019c5.c);
                    break;
                case 83:
                    e eVar12 = aVar.f873f;
                    eVar12.i = v(typedArray, index, eVar12.i);
                    break;
                case 84:
                    C0019c c0019c6 = aVar.f871d;
                    c0019c6.k = typedArray.getInteger(index, c0019c6.k);
                    break;
                case 85:
                    C0019c c0019c7 = aVar.f871d;
                    c0019c7.j = typedArray.getFloat(index, c0019c7.j);
                    break;
                case 86:
                    int i3 = typedArray.peekValue(index).type;
                    if (i3 == 1) {
                        aVar.f871d.n = typedArray.getResourceId(index, -1);
                        C0019c c0019c8 = aVar.f871d;
                        if (c0019c8.n != -1) {
                            c0019c8.m = -2;
                        }
                    } else if (i3 == 3) {
                        aVar.f871d.l = typedArray.getString(index);
                        if (aVar.f871d.l.indexOf("/") > 0) {
                            aVar.f871d.n = typedArray.getResourceId(index, -1);
                            aVar.f871d.m = -2;
                        } else {
                            aVar.f871d.m = -1;
                        }
                    } else {
                        C0019c c0019c9 = aVar.f871d;
                        c0019c9.m = typedArray.getInteger(index, c0019c9.n);
                    }
                    break;
                case 87:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f865g.get(index));
                    break;
                case 88:
                case 89:
                case 90:
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f865g.get(index));
                    break;
                case 91:
                    b bVar54 = aVar.f872e;
                    bVar54.q = v(typedArray, index, bVar54.q);
                    break;
                case 92:
                    b bVar55 = aVar.f872e;
                    bVar55.r = v(typedArray, index, bVar55.r);
                    break;
                case 93:
                    b bVar56 = aVar.f872e;
                    bVar56.L = typedArray.getDimensionPixelSize(index, bVar56.L);
                    break;
                case 94:
                    b bVar57 = aVar.f872e;
                    bVar57.S = typedArray.getDimensionPixelSize(index, bVar57.S);
                    break;
                case 95:
                    w(aVar.f872e, typedArray, index, 0);
                    break;
                case 96:
                    w(aVar.f872e, typedArray, index, 1);
                    break;
                case 97:
                    b bVar58 = aVar.f872e;
                    bVar58.o0 = typedArray.getInt(index, bVar58.o0);
                    break;
            }
        }
        b bVar59 = aVar.f872e;
        if (bVar59.j0 != null) {
            bVar59.i0 = null;
        }
    }

    public void B(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.b bVar = (ConstraintLayout.b) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f868d && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f869e.containsKey(Integer.valueOf(id))) {
                this.f869e.put(Integer.valueOf(id), new a());
            }
            a aVar = this.f869e.get(Integer.valueOf(id));
            if (aVar != null) {
                if (!aVar.f872e.b) {
                    aVar.g(id, bVar);
                    if (childAt instanceof androidx.constraintlayout.widget.a) {
                        aVar.f872e.i0 = ((androidx.constraintlayout.widget.a) childAt).getReferencedIds();
                        if (childAt instanceof Barrier) {
                            Barrier barrier = (Barrier) childAt;
                            aVar.f872e.n0 = barrier.getAllowsGoneWidget();
                            aVar.f872e.f0 = barrier.getType();
                            aVar.f872e.g0 = barrier.getMargin();
                        }
                    }
                    aVar.f872e.b = true;
                }
                d dVar = aVar.c;
                if (!dVar.f894a) {
                    dVar.b = childAt.getVisibility();
                    aVar.c.f895d = childAt.getAlpha();
                    aVar.c.f894a = true;
                }
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 17) {
                    e eVar = aVar.f873f;
                    if (!eVar.f897a) {
                        eVar.f897a = true;
                        eVar.b = childAt.getRotation();
                        aVar.f873f.c = childAt.getRotationX();
                        aVar.f873f.f898d = childAt.getRotationY();
                        aVar.f873f.f899e = childAt.getScaleX();
                        aVar.f873f.f900f = childAt.getScaleY();
                        float pivotX = childAt.getPivotX();
                        float pivotY = childAt.getPivotY();
                        if (pivotX != 0.0d || pivotY != 0.0d) {
                            e eVar2 = aVar.f873f;
                            eVar2.f901g = pivotX;
                            eVar2.f902h = pivotY;
                        }
                        aVar.f873f.j = childAt.getTranslationX();
                        aVar.f873f.k = childAt.getTranslationY();
                        if (i2 >= 21) {
                            aVar.f873f.l = childAt.getTranslationZ();
                            e eVar3 = aVar.f873f;
                            if (eVar3.m) {
                                eVar3.n = childAt.getElevation();
                            }
                        }
                    }
                }
            }
        }
    }

    public void C(c cVar) {
        for (Integer num : cVar.f869e.keySet()) {
            int iIntValue = num.intValue();
            a aVar = cVar.f869e.get(num);
            if (!this.f869e.containsKey(Integer.valueOf(iIntValue))) {
                this.f869e.put(Integer.valueOf(iIntValue), new a());
            }
            a aVar2 = this.f869e.get(Integer.valueOf(iIntValue));
            if (aVar2 != null) {
                b bVar = aVar2.f872e;
                if (!bVar.b) {
                    bVar.a(aVar.f872e);
                }
                d dVar = aVar2.c;
                if (!dVar.f894a) {
                    dVar.a(aVar.c);
                }
                e eVar = aVar2.f873f;
                if (!eVar.f897a) {
                    eVar.a(aVar.f873f);
                }
                C0019c c0019c = aVar2.f871d;
                if (!c0019c.f888a) {
                    c0019c.a(aVar.f871d);
                }
                for (String str : aVar.f874g.keySet()) {
                    if (!aVar2.f874g.containsKey(str)) {
                        aVar2.f874g.put(str, aVar.f874g.get(str));
                    }
                }
            }
        }
    }

    public void H(boolean z) {
        this.f868d = z;
    }

    public void I(boolean z) {
    }

    public void g(ConstraintLayout constraintLayout) {
        a aVar;
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.f869e.containsKey(Integer.valueOf(id))) {
                Log.w("ConstraintSet", "id unknown " + androidx.constraintlayout.motion.widget.a.c(childAt));
            } else {
                if (this.f868d && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (this.f869e.containsKey(Integer.valueOf(id)) && (aVar = this.f869e.get(Integer.valueOf(id))) != null) {
                    ConstraintAttribute.i(childAt, aVar.f874g);
                }
            }
        }
    }

    public void h(c cVar) {
        for (a aVar : cVar.f869e.values()) {
            if (aVar.f875h != null) {
                if (aVar.b != null) {
                    Iterator<Integer> it = this.f869e.keySet().iterator();
                    while (it.hasNext()) {
                        a aVarS = s(it.next().intValue());
                        String str = aVarS.f872e.k0;
                        if (str != null && aVar.b.matches(str)) {
                            aVar.f875h.e(aVarS);
                            aVarS.f874g.putAll((HashMap) aVar.f874g.clone());
                        }
                    }
                } else {
                    aVar.f875h.e(s(aVar.f870a));
                }
            }
        }
    }

    public void i(ConstraintLayout constraintLayout) {
        j(constraintLayout, true);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    void j(ConstraintLayout constraintLayout, boolean z) {
        int childCount = constraintLayout.getChildCount();
        HashSet<Integer> hashSet = new HashSet(this.f869e.keySet());
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.f869e.containsKey(Integer.valueOf(id))) {
                Log.w("ConstraintSet", "id unknown " + androidx.constraintlayout.motion.widget.a.c(childAt));
            } else {
                if (this.f868d && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id != -1) {
                    if (this.f869e.containsKey(Integer.valueOf(id))) {
                        hashSet.remove(Integer.valueOf(id));
                        a aVar = this.f869e.get(Integer.valueOf(id));
                        if (aVar != null) {
                            if (childAt instanceof Barrier) {
                                aVar.f872e.h0 = 1;
                                Barrier barrier = (Barrier) childAt;
                                barrier.setId(id);
                                barrier.setType(aVar.f872e.f0);
                                barrier.setMargin(aVar.f872e.g0);
                                barrier.setAllowsGoneWidget(aVar.f872e.n0);
                                b bVar = aVar.f872e;
                                int[] iArr = bVar.i0;
                                if (iArr != null) {
                                    barrier.setReferencedIds(iArr);
                                } else {
                                    String str = bVar.j0;
                                    if (str != null) {
                                        bVar.i0 = q(barrier, str);
                                        barrier.setReferencedIds(aVar.f872e.i0);
                                    }
                                }
                            }
                            ConstraintLayout.b bVar2 = (ConstraintLayout.b) childAt.getLayoutParams();
                            bVar2.b();
                            aVar.e(bVar2);
                            if (z) {
                                ConstraintAttribute.i(childAt, aVar.f874g);
                            }
                            childAt.setLayoutParams(bVar2);
                            d dVar = aVar.c;
                            if (dVar.c == 0) {
                                childAt.setVisibility(dVar.b);
                            }
                            int i2 = Build.VERSION.SDK_INT;
                            if (i2 >= 17) {
                                childAt.setAlpha(aVar.c.f895d);
                                childAt.setRotation(aVar.f873f.b);
                                childAt.setRotationX(aVar.f873f.c);
                                childAt.setRotationY(aVar.f873f.f898d);
                                childAt.setScaleX(aVar.f873f.f899e);
                                childAt.setScaleY(aVar.f873f.f900f);
                                e eVar = aVar.f873f;
                                if (eVar.i != -1) {
                                    View viewFindViewById = ((View) childAt.getParent()).findViewById(aVar.f873f.i);
                                    if (viewFindViewById != null) {
                                        float top = (viewFindViewById.getTop() + viewFindViewById.getBottom()) / 2.0f;
                                        float left = (viewFindViewById.getLeft() + viewFindViewById.getRight()) / 2.0f;
                                        if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                            float left2 = left - childAt.getLeft();
                                            float top2 = top - childAt.getTop();
                                            childAt.setPivotX(left2);
                                            childAt.setPivotY(top2);
                                        }
                                    }
                                } else {
                                    if (!Float.isNaN(eVar.f901g)) {
                                        childAt.setPivotX(aVar.f873f.f901g);
                                    }
                                    if (!Float.isNaN(aVar.f873f.f902h)) {
                                        childAt.setPivotY(aVar.f873f.f902h);
                                    }
                                }
                                childAt.setTranslationX(aVar.f873f.j);
                                childAt.setTranslationY(aVar.f873f.k);
                                if (i2 >= 21) {
                                    childAt.setTranslationZ(aVar.f873f.l);
                                    e eVar2 = aVar.f873f;
                                    if (eVar2.m) {
                                        childAt.setElevation(eVar2.n);
                                    }
                                }
                            }
                        }
                    } else {
                        Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id);
                    }
                }
            }
        }
        for (Integer num : hashSet) {
            a aVar2 = this.f869e.get(num);
            if (aVar2 != null) {
                if (aVar2.f872e.h0 == 1) {
                    Barrier barrier2 = new Barrier(constraintLayout.getContext());
                    barrier2.setId(num.intValue());
                    b bVar3 = aVar2.f872e;
                    int[] iArr2 = bVar3.i0;
                    if (iArr2 != null) {
                        barrier2.setReferencedIds(iArr2);
                    } else {
                        String str2 = bVar3.j0;
                        if (str2 != null) {
                            bVar3.i0 = q(barrier2, str2);
                            barrier2.setReferencedIds(aVar2.f872e.i0);
                        }
                    }
                    barrier2.setType(aVar2.f872e.f0);
                    barrier2.setMargin(aVar2.f872e.g0);
                    ConstraintLayout.b bVarGenerateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                    barrier2.t();
                    aVar2.e(bVarGenerateDefaultLayoutParams);
                    constraintLayout.addView(barrier2, bVarGenerateDefaultLayoutParams);
                }
                if (aVar2.f872e.f882a) {
                    View guideline = new Guideline(constraintLayout.getContext());
                    guideline.setId(num.intValue());
                    ConstraintLayout.b bVarGenerateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                    aVar2.e(bVarGenerateDefaultLayoutParams2);
                    constraintLayout.addView(guideline, bVarGenerateDefaultLayoutParams2);
                }
            }
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt2 = constraintLayout.getChildAt(i3);
            if (childAt2 instanceof androidx.constraintlayout.widget.a) {
                ((androidx.constraintlayout.widget.a) childAt2).j(constraintLayout);
            }
        }
    }

    public void l(Context context, int i) {
        m((ConstraintLayout) LayoutInflater.from(context).inflate(i, (ViewGroup) null));
    }

    public void m(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        this.f869e.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.b bVar = (ConstraintLayout.b) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f868d && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f869e.containsKey(Integer.valueOf(id))) {
                this.f869e.put(Integer.valueOf(id), new a());
            }
            a aVar = this.f869e.get(Integer.valueOf(id));
            if (aVar != null) {
                aVar.f874g = ConstraintAttribute.c(this.c, childAt);
                aVar.g(id, bVar);
                aVar.c.b = childAt.getVisibility();
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 17) {
                    aVar.c.f895d = childAt.getAlpha();
                    aVar.f873f.b = childAt.getRotation();
                    aVar.f873f.c = childAt.getRotationX();
                    aVar.f873f.f898d = childAt.getRotationY();
                    aVar.f873f.f899e = childAt.getScaleX();
                    aVar.f873f.f900f = childAt.getScaleY();
                    float pivotX = childAt.getPivotX();
                    float pivotY = childAt.getPivotY();
                    if (pivotX != 0.0d || pivotY != 0.0d) {
                        e eVar = aVar.f873f;
                        eVar.f901g = pivotX;
                        eVar.f902h = pivotY;
                    }
                    aVar.f873f.j = childAt.getTranslationX();
                    aVar.f873f.k = childAt.getTranslationY();
                    if (i2 >= 21) {
                        aVar.f873f.l = childAt.getTranslationZ();
                        e eVar2 = aVar.f873f;
                        if (eVar2.m) {
                            eVar2.n = childAt.getElevation();
                        }
                    }
                }
                if (childAt instanceof Barrier) {
                    Barrier barrier = (Barrier) childAt;
                    aVar.f872e.n0 = barrier.getAllowsGoneWidget();
                    aVar.f872e.i0 = barrier.getReferencedIds();
                    aVar.f872e.f0 = barrier.getType();
                    aVar.f872e.g0 = barrier.getMargin();
                }
            }
        }
    }

    public void n(c cVar) {
        this.f869e.clear();
        for (Integer num : cVar.f869e.keySet()) {
            a aVar = cVar.f869e.get(num);
            if (aVar != null) {
                this.f869e.put(num, aVar.clone());
            }
        }
    }

    public void o(androidx.constraintlayout.widget.d dVar) {
        int childCount = dVar.getChildCount();
        this.f869e.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = dVar.getChildAt(i);
            androidx.constraintlayout.widget.d.a aVar = (androidx.constraintlayout.widget.d.a) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f868d && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f869e.containsKey(Integer.valueOf(id))) {
                this.f869e.put(Integer.valueOf(id), new a());
            }
            a aVar2 = this.f869e.get(Integer.valueOf(id));
            if (aVar2 != null) {
                if (childAt instanceof androidx.constraintlayout.widget.a) {
                    aVar2.i((androidx.constraintlayout.widget.a) childAt, id, aVar);
                }
                aVar2.h(id, aVar);
            }
        }
    }

    public void p(int i, int i2, int i3, int i4) {
        if (!this.f869e.containsKey(Integer.valueOf(i))) {
            this.f869e.put(Integer.valueOf(i), new a());
        }
        a aVar = this.f869e.get(Integer.valueOf(i));
        if (aVar == null) {
            return;
        }
        switch (i2) {
            case 1:
                if (i4 == 1) {
                    b bVar = aVar.f872e;
                    bVar.f887h = i3;
                    bVar.i = -1;
                    return;
                } else if (i4 == 2) {
                    b bVar2 = aVar.f872e;
                    bVar2.i = i3;
                    bVar2.f887h = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("left to " + J(i4) + " undefined");
                }
            case 2:
                if (i4 == 1) {
                    b bVar3 = aVar.f872e;
                    bVar3.j = i3;
                    bVar3.k = -1;
                    return;
                } else if (i4 == 2) {
                    b bVar4 = aVar.f872e;
                    bVar4.k = i3;
                    bVar4.j = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + J(i4) + " undefined");
                }
            case 3:
                if (i4 == 3) {
                    b bVar5 = aVar.f872e;
                    bVar5.l = i3;
                    bVar5.m = -1;
                    bVar5.p = -1;
                    bVar5.q = -1;
                    bVar5.r = -1;
                    return;
                }
                if (i4 != 4) {
                    throw new IllegalArgumentException("right to " + J(i4) + " undefined");
                }
                b bVar6 = aVar.f872e;
                bVar6.m = i3;
                bVar6.l = -1;
                bVar6.p = -1;
                bVar6.q = -1;
                bVar6.r = -1;
                return;
            case 4:
                if (i4 == 4) {
                    b bVar7 = aVar.f872e;
                    bVar7.o = i3;
                    bVar7.n = -1;
                    bVar7.p = -1;
                    bVar7.q = -1;
                    bVar7.r = -1;
                    return;
                }
                if (i4 != 3) {
                    throw new IllegalArgumentException("right to " + J(i4) + " undefined");
                }
                b bVar8 = aVar.f872e;
                bVar8.n = i3;
                bVar8.o = -1;
                bVar8.p = -1;
                bVar8.q = -1;
                bVar8.r = -1;
                return;
            case 5:
                if (i4 == 5) {
                    b bVar9 = aVar.f872e;
                    bVar9.p = i3;
                    bVar9.o = -1;
                    bVar9.n = -1;
                    bVar9.l = -1;
                    bVar9.m = -1;
                    return;
                }
                if (i4 == 3) {
                    b bVar10 = aVar.f872e;
                    bVar10.q = i3;
                    bVar10.o = -1;
                    bVar10.n = -1;
                    bVar10.l = -1;
                    bVar10.m = -1;
                    return;
                }
                if (i4 != 4) {
                    throw new IllegalArgumentException("right to " + J(i4) + " undefined");
                }
                b bVar11 = aVar.f872e;
                bVar11.r = i3;
                bVar11.o = -1;
                bVar11.n = -1;
                bVar11.l = -1;
                bVar11.m = -1;
                return;
            case 6:
                if (i4 == 6) {
                    b bVar12 = aVar.f872e;
                    bVar12.t = i3;
                    bVar12.s = -1;
                    return;
                } else if (i4 == 7) {
                    b bVar13 = aVar.f872e;
                    bVar13.s = i3;
                    bVar13.t = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + J(i4) + " undefined");
                }
            case 7:
                if (i4 == 7) {
                    b bVar14 = aVar.f872e;
                    bVar14.v = i3;
                    bVar14.u = -1;
                    return;
                } else if (i4 == 6) {
                    b bVar15 = aVar.f872e;
                    bVar15.u = i3;
                    bVar15.v = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + J(i4) + " undefined");
                }
            default:
                throw new IllegalArgumentException(J(i2) + " to " + J(i4) + " unknown");
        }
    }

    public a s(int i) {
        if (this.f869e.containsKey(Integer.valueOf(i))) {
            return this.f869e.get(Integer.valueOf(i));
        }
        return null;
    }

    public void t(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    a aVarR = r(context, Xml.asAttributeSet(xml), false);
                    if (name.equalsIgnoreCase("Guideline")) {
                        aVarR.f872e.f882a = true;
                    }
                    this.f869e.put(Integer.valueOf(aVarR.f870a), aVarR);
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void u(Context context, XmlPullParser xmlPullParser) {
        a aVarR;
        try {
            int eventType = xmlPullParser.getEventType();
            a aVar = null;
            while (eventType != 1) {
                if (eventType == 0) {
                    xmlPullParser.getName();
                } else if (eventType == 2) {
                    switch (xmlPullParser.getName()) {
                        case "Constraint":
                            aVarR = r(context, Xml.asAttributeSet(xmlPullParser), false);
                            break;
                        case "ConstraintOverride":
                            aVarR = r(context, Xml.asAttributeSet(xmlPullParser), true);
                            break;
                        case "Guideline":
                            aVarR = r(context, Xml.asAttributeSet(xmlPullParser), false);
                            b bVar = aVarR.f872e;
                            bVar.f882a = true;
                            bVar.b = true;
                            break;
                        case "Barrier":
                            aVarR = r(context, Xml.asAttributeSet(xmlPullParser), false);
                            aVarR.f872e.h0 = 1;
                            break;
                        case "PropertySet":
                            if (aVar == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            aVar.c.b(context, Xml.asAttributeSet(xmlPullParser));
                            continue;
                            break;
                            break;
                        case "Transform":
                            if (aVar == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            aVar.f873f.b(context, Xml.asAttributeSet(xmlPullParser));
                            continue;
                            break;
                            break;
                        case "Layout":
                            if (aVar == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            aVar.f872e.b(context, Xml.asAttributeSet(xmlPullParser));
                            continue;
                            break;
                            break;
                        case "Motion":
                            if (aVar == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            aVar.f871d.b(context, Xml.asAttributeSet(xmlPullParser));
                            continue;
                            break;
                            break;
                        case "CustomAttribute":
                        case "CustomMethod":
                            if (aVar == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            ConstraintAttribute.h(context, xmlPullParser, aVar.f874g);
                            continue;
                            break;
                            break;
                        default:
                            continue;
                            break;
                    }
                    aVar = aVarR;
                } else if (eventType == 3) {
                    String lowerCase = xmlPullParser.getName().toLowerCase(Locale.ROOT);
                    switch (lowerCase.hashCode()) {
                        case -2075718416:
                            if (lowerCase.equals("guideline")) {
                            }
                            break;
                        case -190376483:
                            if (lowerCase.equals("constraint")) {
                            }
                            break;
                        case 426575017:
                            if (lowerCase.equals("constraintoverride")) {
                            }
                            break;
                        case 2146106725:
                            if (lowerCase.equals("constraintset")) {
                            }
                            break;
                    }
                    if (r4 == 0) {
                        return;
                    }
                    if (r4 == 1 || r4 == 2 || r4 == 3) {
                        this.f869e.put(Integer.valueOf(aVar.f870a), aVar);
                        aVar = null;
                    }
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }
}
