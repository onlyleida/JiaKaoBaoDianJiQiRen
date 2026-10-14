package kotlin.reflect.jvm.internal.impl.metadata.c;

import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$MemberKind;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Modality;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility;

/* JADX INFO: loaded from: classes6.dex */
public class b {
    public static final C0343b A;
    public static final C0343b B;
    public static final C0343b C;
    public static final C0343b D;
    public static final C0343b E;
    public static final C0343b F;
    public static final C0343b G;
    public static final C0343b H;
    public static final C0343b I;
    public static final C0343b J;
    public static final C0343b K;
    public static final C0343b L;
    public static final C0343b M;
    public static final C0343b N;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0343b f15333a;
    public static final C0343b b;
    public static final C0343b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final d<ProtoBuf$Visibility> f15334d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final d<ProtoBuf$Modality> f15335e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final d<ProtoBuf$Class.Kind> f15336f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final C0343b f15337g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final C0343b f15338h;
    public static final C0343b i;
    public static final C0343b j;
    public static final C0343b k;
    public static final C0343b l;
    public static final C0343b m;
    public static final C0343b n;
    public static final d<ProtoBuf$MemberKind> o;
    public static final C0343b p;
    public static final C0343b q;
    public static final C0343b r;
    public static final C0343b s;
    public static final C0343b t;
    public static final C0343b u;
    public static final C0343b v;
    public static final C0343b w;
    public static final C0343b x;
    public static final C0343b y;
    public static final C0343b z;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.c.b$b, reason: collision with other inner class name */
    public static class C0343b extends d<Boolean> {
        public C0343b(int i) {
            super(i, 1);
        }

        private static /* synthetic */ void f(int i) {
            throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField", "get"));
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.c.b.d
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public Boolean d(int i) {
            Boolean boolValueOf = Boolean.valueOf((i & (1 << this.f15339a)) != 0);
            if (boolValueOf != null) {
                return boolValueOf;
            }
            f(0);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.c.b.d
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public int e(Boolean bool) {
            if (bool.booleanValue()) {
                return 1 << this.f15339a;
            }
            return 0;
        }
    }

    private static class c<E extends kotlin.reflect.jvm.internal.impl.protobuf.h.a> extends d<E> {
        private final E[] c;

        public c(int i, E[] eArr) {
            super(i, g(eArr));
            this.c = eArr;
        }

        private static /* synthetic */ void f(int i) {
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "enumEntries", "kotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField", "bitWidth"));
        }

        private static <E> int g(E[] eArr) {
            if (eArr == null) {
                f(0);
                throw null;
            }
            int length = eArr.length - 1;
            if (length == 0) {
                return 1;
            }
            for (int i = 31; i >= 0; i--) {
                if (((1 << i) & length) != 0) {
                    return i + 1;
                }
            }
            throw new IllegalStateException("Empty enum: " + eArr.getClass());
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.c.b.d
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public E d(int i) {
            int i2 = (1 << this.b) - 1;
            int i3 = this.f15339a;
            int i4 = (i & (i2 << i3)) >> i3;
            for (E e2 : this.c) {
                if (e2.getNumber() == i4) {
                    return e2;
                }
            }
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.c.b.d
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public int e(E e2) {
            return e2.getNumber() << this.f15339a;
        }
    }

    public static abstract class d<E> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15339a;
        public final int b;

        /* JADX WARN: Incorrect types in method signature: <E::Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;>(Lkotlin/reflect/jvm/internal/impl/metadata/c/b$d<*>;[TE;)Lkotlin/reflect/jvm/internal/impl/metadata/c/b$d<TE;>; */
        public static d a(d dVar, kotlin.reflect.jvm.internal.impl.protobuf.h.a[] aVarArr) {
            return new c(dVar.f15339a + dVar.b, aVarArr);
        }

        public static C0343b b(d<?> dVar) {
            return new C0343b(dVar.f15339a + dVar.b);
        }

        public static C0343b c() {
            return new C0343b(0);
        }

        public abstract E d(int i);

        public abstract int e(E e2);

        private d(int i, int i2) {
            this.f15339a = i;
            this.b = i2;
        }
    }

    static {
        C0343b c0343bC = d.c();
        f15333a = c0343bC;
        b = d.b(c0343bC);
        C0343b c0343bC2 = d.c();
        c = c0343bC2;
        d<ProtoBuf$Visibility> dVarA = d.a(c0343bC2, ProtoBuf$Visibility.values());
        f15334d = dVarA;
        d<ProtoBuf$Modality> dVarA2 = d.a(dVarA, ProtoBuf$Modality.values());
        f15335e = dVarA2;
        d<ProtoBuf$Class.Kind> dVarA3 = d.a(dVarA2, ProtoBuf$Class.Kind.values());
        f15336f = dVarA3;
        C0343b c0343bB = d.b(dVarA3);
        f15337g = c0343bB;
        C0343b c0343bB2 = d.b(c0343bB);
        f15338h = c0343bB2;
        C0343b c0343bB3 = d.b(c0343bB2);
        i = c0343bB3;
        C0343b c0343bB4 = d.b(c0343bB3);
        j = c0343bB4;
        C0343b c0343bB5 = d.b(c0343bB4);
        k = c0343bB5;
        l = d.b(c0343bB5);
        C0343b c0343bB6 = d.b(dVarA);
        m = c0343bB6;
        n = d.b(c0343bB6);
        d<ProtoBuf$MemberKind> dVarA4 = d.a(dVarA2, ProtoBuf$MemberKind.values());
        o = dVarA4;
        C0343b c0343bB7 = d.b(dVarA4);
        p = c0343bB7;
        C0343b c0343bB8 = d.b(c0343bB7);
        q = c0343bB8;
        C0343b c0343bB9 = d.b(c0343bB8);
        r = c0343bB9;
        C0343b c0343bB10 = d.b(c0343bB9);
        s = c0343bB10;
        C0343b c0343bB11 = d.b(c0343bB10);
        t = c0343bB11;
        C0343b c0343bB12 = d.b(c0343bB11);
        u = c0343bB12;
        C0343b c0343bB13 = d.b(c0343bB12);
        v = c0343bB13;
        w = d.b(c0343bB13);
        C0343b c0343bB14 = d.b(dVarA4);
        x = c0343bB14;
        C0343b c0343bB15 = d.b(c0343bB14);
        y = c0343bB15;
        C0343b c0343bB16 = d.b(c0343bB15);
        z = c0343bB16;
        C0343b c0343bB17 = d.b(c0343bB16);
        A = c0343bB17;
        C0343b c0343bB18 = d.b(c0343bB17);
        B = c0343bB18;
        C0343b c0343bB19 = d.b(c0343bB18);
        C = c0343bB19;
        C0343b c0343bB20 = d.b(c0343bB19);
        D = c0343bB20;
        C0343b c0343bB21 = d.b(c0343bB20);
        E = c0343bB21;
        F = d.b(c0343bB21);
        C0343b c0343bB22 = d.b(c0343bC2);
        G = c0343bB22;
        C0343b c0343bB23 = d.b(c0343bB22);
        H = c0343bB23;
        I = d.b(c0343bB23);
        C0343b c0343bB24 = d.b(dVarA2);
        J = c0343bB24;
        C0343b c0343bB25 = d.b(c0343bB24);
        K = c0343bB25;
        L = d.b(c0343bB25);
        C0343b c0343bC3 = d.c();
        M = c0343bC3;
        d.b(c0343bC3);
        N = d.c();
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0021  */
    /* JADX WARN: Code duplicated, block: B:18:0x002b  */
    private static /* synthetic */ void a(int i2) {
        Object[] objArr = new Object[3];
        if (i2 == 1) {
            objArr[0] = "modality";
        } else if (i2 == 2) {
            objArr[0] = "kind";
        } else if (i2 == 5) {
            objArr[0] = "modality";
        } else if (i2 == 6) {
            objArr[0] = "memberKind";
        } else if (i2 == 8) {
            objArr[0] = "modality";
        } else if (i2 == 9) {
            objArr[0] = "memberKind";
        } else if (i2 != 11) {
            objArr[0] = "visibility";
        } else {
            objArr[0] = "modality";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags";
        switch (i2) {
            case 3:
                objArr[2] = "getConstructorFlags";
                break;
            case 4:
            case 5:
            case 6:
                objArr[2] = "getFunctionFlags";
                break;
            case 7:
            case 8:
            case 9:
                objArr[2] = "getPropertyFlags";
                break;
            case 10:
            case 11:
                objArr[2] = "getAccessorFlags";
                break;
            default:
                objArr[2] = "getClassFlags";
                break;
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public static int b(boolean z2, ProtoBuf$Visibility protoBuf$Visibility, ProtoBuf$Modality protoBuf$Modality, boolean z3, boolean z4, boolean z5) {
        if (protoBuf$Visibility == null) {
            a(10);
            throw null;
        }
        if (protoBuf$Modality != null) {
            return c.e(Boolean.valueOf(z2)) | f15335e.e(protoBuf$Modality) | f15334d.e(protoBuf$Visibility) | J.e(Boolean.valueOf(z3)) | K.e(Boolean.valueOf(z4)) | L.e(Boolean.valueOf(z5));
        }
        a(11);
        throw null;
    }
}
