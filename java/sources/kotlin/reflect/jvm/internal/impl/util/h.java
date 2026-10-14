package kotlin.reflect.jvm.internal.impl.util;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iflytek.cloud.SpeechConstant;
import java.util.Set;
import kotlin.collections.u0;
import kotlin.jvm.internal.r;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes6.dex */
public final class h {
    public static final kotlin.reflect.jvm.internal.impl.name.f A;
    public static final kotlin.reflect.jvm.internal.impl.name.f B;
    public static final kotlin.reflect.jvm.internal.impl.name.f C;
    public static final kotlin.reflect.jvm.internal.impl.name.f D;
    public static final kotlin.reflect.jvm.internal.impl.name.f E;
    public static final Set<kotlin.reflect.jvm.internal.impl.name.f> F;
    public static final Set<kotlin.reflect.jvm.internal.impl.name.f> G;
    public static final Set<kotlin.reflect.jvm.internal.impl.name.f> H;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final kotlin.reflect.jvm.internal.impl.name.f f15738a;
    public static final kotlin.reflect.jvm.internal.impl.name.f b;
    public static final kotlin.reflect.jvm.internal.impl.name.f c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final kotlin.reflect.jvm.internal.impl.name.f f15739d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final kotlin.reflect.jvm.internal.impl.name.f f15740e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final kotlin.reflect.jvm.internal.impl.name.f f15741f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final kotlin.reflect.jvm.internal.impl.name.f f15742g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final kotlin.reflect.jvm.internal.impl.name.f f15743h;
    public static final kotlin.reflect.jvm.internal.impl.name.f i;
    public static final kotlin.reflect.jvm.internal.impl.name.f j;
    public static final kotlin.reflect.jvm.internal.impl.name.f k;
    public static final kotlin.reflect.jvm.internal.impl.name.f l;
    public static final Regex m;
    public static final kotlin.reflect.jvm.internal.impl.name.f n;
    public static final kotlin.reflect.jvm.internal.impl.name.f o;
    public static final kotlin.reflect.jvm.internal.impl.name.f p;
    public static final kotlin.reflect.jvm.internal.impl.name.f q;
    public static final kotlin.reflect.jvm.internal.impl.name.f r;
    public static final kotlin.reflect.jvm.internal.impl.name.f s;
    public static final kotlin.reflect.jvm.internal.impl.name.f t;
    public static final kotlin.reflect.jvm.internal.impl.name.f u;
    public static final kotlin.reflect.jvm.internal.impl.name.f v;
    public static final kotlin.reflect.jvm.internal.impl.name.f w;
    public static final kotlin.reflect.jvm.internal.impl.name.f x;
    public static final kotlin.reflect.jvm.internal.impl.name.f y;
    public static final kotlin.reflect.jvm.internal.impl.name.f z;

    static {
        kotlin.reflect.jvm.internal.impl.name.f fVarG = kotlin.reflect.jvm.internal.impl.name.f.g("getValue");
        r.d(fVarG, "identifier(\"getValue\")");
        f15738a = fVarG;
        kotlin.reflect.jvm.internal.impl.name.f fVarG2 = kotlin.reflect.jvm.internal.impl.name.f.g("setValue");
        r.d(fVarG2, "identifier(\"setValue\")");
        b = fVarG2;
        kotlin.reflect.jvm.internal.impl.name.f fVarG3 = kotlin.reflect.jvm.internal.impl.name.f.g("provideDelegate");
        r.d(fVarG3, "identifier(\"provideDelegate\")");
        c = fVarG3;
        kotlin.reflect.jvm.internal.impl.name.f fVarG4 = kotlin.reflect.jvm.internal.impl.name.f.g("equals");
        r.d(fVarG4, "identifier(\"equals\")");
        f15739d = fVarG4;
        kotlin.reflect.jvm.internal.impl.name.f fVarG5 = kotlin.reflect.jvm.internal.impl.name.f.g("compareTo");
        r.d(fVarG5, "identifier(\"compareTo\")");
        f15740e = fVarG5;
        kotlin.reflect.jvm.internal.impl.name.f fVarG6 = kotlin.reflect.jvm.internal.impl.name.f.g("contains");
        r.d(fVarG6, "identifier(\"contains\")");
        f15741f = fVarG6;
        kotlin.reflect.jvm.internal.impl.name.f fVarG7 = kotlin.reflect.jvm.internal.impl.name.f.g("invoke");
        r.d(fVarG7, "identifier(\"invoke\")");
        f15742g = fVarG7;
        kotlin.reflect.jvm.internal.impl.name.f fVarG8 = kotlin.reflect.jvm.internal.impl.name.f.g("iterator");
        r.d(fVarG8, "identifier(\"iterator\")");
        f15743h = fVarG8;
        kotlin.reflect.jvm.internal.impl.name.f fVarG9 = kotlin.reflect.jvm.internal.impl.name.f.g("get");
        r.d(fVarG9, "identifier(\"get\")");
        i = fVarG9;
        kotlin.reflect.jvm.internal.impl.name.f fVarG10 = kotlin.reflect.jvm.internal.impl.name.f.g("set");
        r.d(fVarG10, "identifier(\"set\")");
        j = fVarG10;
        kotlin.reflect.jvm.internal.impl.name.f fVarG11 = kotlin.reflect.jvm.internal.impl.name.f.g("next");
        r.d(fVarG11, "identifier(\"next\")");
        k = fVarG11;
        kotlin.reflect.jvm.internal.impl.name.f fVarG12 = kotlin.reflect.jvm.internal.impl.name.f.g("hasNext");
        r.d(fVarG12, "identifier(\"hasNext\")");
        l = fVarG12;
        r.d(kotlin.reflect.jvm.internal.impl.name.f.g("toString"), "identifier(\"toString\")");
        m = new Regex("component\\d+");
        r.d(kotlin.reflect.jvm.internal.impl.name.f.g("and"), "identifier(\"and\")");
        r.d(kotlin.reflect.jvm.internal.impl.name.f.g("or"), "identifier(\"or\")");
        r.d(kotlin.reflect.jvm.internal.impl.name.f.g("xor"), "identifier(\"xor\")");
        r.d(kotlin.reflect.jvm.internal.impl.name.f.g("inv"), "identifier(\"inv\")");
        r.d(kotlin.reflect.jvm.internal.impl.name.f.g("shl"), "identifier(\"shl\")");
        r.d(kotlin.reflect.jvm.internal.impl.name.f.g("shr"), "identifier(\"shr\")");
        r.d(kotlin.reflect.jvm.internal.impl.name.f.g("ushr"), "identifier(\"ushr\")");
        kotlin.reflect.jvm.internal.impl.name.f fVarG13 = kotlin.reflect.jvm.internal.impl.name.f.g("inc");
        r.d(fVarG13, "identifier(\"inc\")");
        n = fVarG13;
        kotlin.reflect.jvm.internal.impl.name.f fVarG14 = kotlin.reflect.jvm.internal.impl.name.f.g("dec");
        r.d(fVarG14, "identifier(\"dec\")");
        o = fVarG14;
        kotlin.reflect.jvm.internal.impl.name.f fVarG15 = kotlin.reflect.jvm.internal.impl.name.f.g(SpeechConstant.MODE_PLUS);
        r.d(fVarG15, "identifier(\"plus\")");
        p = fVarG15;
        kotlin.reflect.jvm.internal.impl.name.f fVarG16 = kotlin.reflect.jvm.internal.impl.name.f.g("minus");
        r.d(fVarG16, "identifier(\"minus\")");
        q = fVarG16;
        kotlin.reflect.jvm.internal.impl.name.f fVarG17 = kotlin.reflect.jvm.internal.impl.name.f.g("not");
        r.d(fVarG17, "identifier(\"not\")");
        r = fVarG17;
        kotlin.reflect.jvm.internal.impl.name.f fVarG18 = kotlin.reflect.jvm.internal.impl.name.f.g("unaryMinus");
        r.d(fVarG18, "identifier(\"unaryMinus\")");
        s = fVarG18;
        kotlin.reflect.jvm.internal.impl.name.f fVarG19 = kotlin.reflect.jvm.internal.impl.name.f.g("unaryPlus");
        r.d(fVarG19, "identifier(\"unaryPlus\")");
        t = fVarG19;
        kotlin.reflect.jvm.internal.impl.name.f fVarG20 = kotlin.reflect.jvm.internal.impl.name.f.g("times");
        r.d(fVarG20, "identifier(\"times\")");
        u = fVarG20;
        kotlin.reflect.jvm.internal.impl.name.f fVarG21 = kotlin.reflect.jvm.internal.impl.name.f.g(TtmlNode.TAG_DIV);
        r.d(fVarG21, "identifier(\"div\")");
        v = fVarG21;
        kotlin.reflect.jvm.internal.impl.name.f fVarG22 = kotlin.reflect.jvm.internal.impl.name.f.g("mod");
        r.d(fVarG22, "identifier(\"mod\")");
        w = fVarG22;
        kotlin.reflect.jvm.internal.impl.name.f fVarG23 = kotlin.reflect.jvm.internal.impl.name.f.g("rem");
        r.d(fVarG23, "identifier(\"rem\")");
        x = fVarG23;
        kotlin.reflect.jvm.internal.impl.name.f fVarG24 = kotlin.reflect.jvm.internal.impl.name.f.g("rangeTo");
        r.d(fVarG24, "identifier(\"rangeTo\")");
        y = fVarG24;
        kotlin.reflect.jvm.internal.impl.name.f fVarG25 = kotlin.reflect.jvm.internal.impl.name.f.g("timesAssign");
        r.d(fVarG25, "identifier(\"timesAssign\")");
        z = fVarG25;
        kotlin.reflect.jvm.internal.impl.name.f fVarG26 = kotlin.reflect.jvm.internal.impl.name.f.g("divAssign");
        r.d(fVarG26, "identifier(\"divAssign\")");
        A = fVarG26;
        kotlin.reflect.jvm.internal.impl.name.f fVarG27 = kotlin.reflect.jvm.internal.impl.name.f.g("modAssign");
        r.d(fVarG27, "identifier(\"modAssign\")");
        B = fVarG27;
        kotlin.reflect.jvm.internal.impl.name.f fVarG28 = kotlin.reflect.jvm.internal.impl.name.f.g("remAssign");
        r.d(fVarG28, "identifier(\"remAssign\")");
        C = fVarG28;
        kotlin.reflect.jvm.internal.impl.name.f fVarG29 = kotlin.reflect.jvm.internal.impl.name.f.g("plusAssign");
        r.d(fVarG29, "identifier(\"plusAssign\")");
        D = fVarG29;
        kotlin.reflect.jvm.internal.impl.name.f fVarG30 = kotlin.reflect.jvm.internal.impl.name.f.g("minusAssign");
        r.d(fVarG30, "identifier(\"minusAssign\")");
        E = fVarG30;
        u0.f(fVarG13, fVarG14, fVarG19, fVarG18, fVarG17);
        F = u0.f(fVarG19, fVarG18, fVarG17);
        G = u0.f(fVarG20, fVarG15, fVarG16, fVarG21, fVarG22, fVarG23, fVarG24);
        H = u0.f(fVarG25, fVarG26, fVarG27, fVarG28, fVarG29, fVarG30);
        u0.f(fVarG, fVarG2, fVarG3);
    }
}
