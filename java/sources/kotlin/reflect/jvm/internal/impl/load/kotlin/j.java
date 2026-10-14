package kotlin.reflect.jvm.internal.impl.load.kotlin;

import androidx.exifinterface.media.ExifInterface;
import kotlin.NoWhenBranchMatchedException;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes6.dex */
final class j implements i<h> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j f15232a = new j();

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15233a;

        static {
            int[] iArr = new int[PrimitiveType.values().length];
            iArr[PrimitiveType.BOOLEAN.ordinal()] = 1;
            iArr[PrimitiveType.CHAR.ordinal()] = 2;
            iArr[PrimitiveType.BYTE.ordinal()] = 3;
            iArr[PrimitiveType.SHORT.ordinal()] = 4;
            iArr[PrimitiveType.INT.ordinal()] = 5;
            iArr[PrimitiveType.FLOAT.ordinal()] = 6;
            iArr[PrimitiveType.LONG.ordinal()] = 7;
            iArr[PrimitiveType.DOUBLE.ordinal()] = 8;
            f15233a = iArr;
        }
    }

    private j() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.i
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public h b(h possiblyPrimitiveType) {
        kotlin.jvm.internal.r.e(possiblyPrimitiveType, "possiblyPrimitiveType");
        if (!(possiblyPrimitiveType instanceof h.d)) {
            return possiblyPrimitiveType;
        }
        h.d dVar = (h.d) possiblyPrimitiveType;
        if (dVar.i() == null) {
            return possiblyPrimitiveType;
        }
        String strF = kotlin.reflect.jvm.internal.impl.resolve.jvm.d.c(dVar.i().getWrapperFqName()).f();
        kotlin.jvm.internal.r.d(strF, "byFqNameWithoutInnerClas…apperFqName).internalName");
        return e(strF);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.i
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public h a(String representation) {
        JvmPrimitiveType jvmPrimitiveType;
        h cVar;
        kotlin.jvm.internal.r.e(representation, "representation");
        representation.length();
        char cCharAt = representation.charAt(0);
        JvmPrimitiveType[] jvmPrimitiveTypeArrValues = JvmPrimitiveType.values();
        int length = jvmPrimitiveTypeArrValues.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                jvmPrimitiveType = null;
                break;
            }
            jvmPrimitiveType = jvmPrimitiveTypeArrValues[i];
            if (jvmPrimitiveType.getDesc().charAt(0) == cCharAt) {
                break;
            }
            i++;
        }
        if (jvmPrimitiveType != null) {
            return new h.d(jvmPrimitiveType);
        }
        if (cCharAt == 'V') {
            return new h.d(null);
        }
        if (cCharAt == '[') {
            String strSubstring = representation.substring(1);
            kotlin.jvm.internal.r.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
            cVar = new h.a(a(strSubstring));
        } else {
            if (cCharAt == 'L') {
                StringsKt__StringsKt.J(representation, ';', false, 2, null);
            }
            String strSubstring2 = representation.substring(1, representation.length() - 1);
            kotlin.jvm.internal.r.d(strSubstring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            cVar = new h.c(strSubstring2);
        }
        return cVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.i
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public h.c e(String internalName) {
        kotlin.jvm.internal.r.e(internalName, "internalName");
        return new h.c(internalName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.i
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public h c(PrimitiveType primitiveType) {
        kotlin.jvm.internal.r.e(primitiveType, "primitiveType");
        switch (a.f15233a[primitiveType.ordinal()]) {
            case 1:
                return h.f15212a.a();
            case 2:
                return h.f15212a.c();
            case 3:
                return h.f15212a.b();
            case 4:
                return h.f15212a.h();
            case 5:
                return h.f15212a.f();
            case 6:
                return h.f15212a.e();
            case 7:
                return h.f15212a.g();
            case 8:
                return h.f15212a.d();
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.i
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public h f() {
        return e("java/lang/Class");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.i
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public String d(h type) {
        String desc;
        kotlin.jvm.internal.r.e(type, "type");
        if (type instanceof h.a) {
            return kotlin.jvm.internal.r.m("[", d(((h.a) type).i()));
        }
        if (type instanceof h.d) {
            JvmPrimitiveType jvmPrimitiveTypeI = ((h.d) type).i();
            return (jvmPrimitiveTypeI == null || (desc = jvmPrimitiveTypeI.getDesc()) == null) ? ExifInterface.GPS_MEASUREMENT_INTERRUPTED : desc;
        }
        if (!(type instanceof h.c)) {
            throw new NoWhenBranchMatchedException();
        }
        return 'L' + ((h.c) type).i() + ';';
    }
}
