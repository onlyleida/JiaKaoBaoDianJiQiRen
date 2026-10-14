package kotlin.internal;

import androidx.exifinterface.media.ExifInterface;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0004\u001a \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0001\u001a\"\u0010\b\u001a\u0002H\t\"\n\b\u0000\u0010\t\u0018\u0001*\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0083\b¢\u0006\u0002\u0010\f\u001a\b\u0010\r\u001a\u00020\u0005H\u0002\"\u0010\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"IMPLEMENTATIONS", "Lkotlin/internal/PlatformImplementations;", "apiVersionIsAtLeast", "", "major", "", "minor", "patch", "castToBaseType", ExifInterface.GPS_DIRECTION_TRUE, "", "instance", "(Ljava/lang/Object;)Ljava/lang/Object;", "getJavaVersion", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PlatformImplementations f14634a;

    /* JADX WARN: Code duplicated, block: B:27:0x00bc A[Catch: ClassCastException -> 0x00c1, ClassNotFoundException -> 0x00f7, TRY_ENTER, TryCatch #7 {ClassCastException -> 0x00c1, blocks: (B:27:0x00bc, B:30:0x00c3, B:31:0x00c8), top: B:52:0x00ba, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x00c3 A[Catch: ClassCastException -> 0x00c1, ClassNotFoundException -> 0x00f7, TryCatch #7 {ClassCastException -> 0x00c1, blocks: (B:27:0x00bc, B:30:0x00c3, B:31:0x00c8), top: B:52:0x00ba, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x0140  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        PlatformImplementations platformImplementations;
        Object objNewInstance;
        int iA = a();
        if (iA >= 65544) {
            try {
                Object objNewInstance2 = Class.forName("kotlin.internal.e.a").newInstance();
                r.d(objNewInstance2, "Class.forName(\"kotlin.in…entations\").newInstance()");
                try {
                    try {
                        if (objNewInstance2 == null) {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                        }
                        platformImplementations = (PlatformImplementations) objNewInstance2;
                    } catch (ClassNotFoundException unused) {
                        if (iA >= 65543) {
                            try {
                                try {
                                    objNewInstance = Class.forName("kotlin.internal.d.a").newInstance();
                                    r.d(objNewInstance, "Class.forName(\"kotlin.in…entations\").newInstance()");
                                    try {
                                        if (objNewInstance != null) {
                                            throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                                        }
                                        platformImplementations = (PlatformImplementations) objNewInstance;
                                    } catch (ClassCastException e2) {
                                        Throwable thInitCause = new ClassCastException("Instance classloader: " + objNewInstance.getClass().getClassLoader() + ", base type classloader: " + PlatformImplementations.class.getClassLoader()).initCause(e2);
                                        r.d(thInitCause, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                                        throw thInitCause;
                                    }
                                } catch (ClassNotFoundException unused2) {
                                    Object objNewInstance3 = Class.forName("kotlin.internal.JRE7PlatformImplementations").newInstance();
                                    r.d(objNewInstance3, "Class.forName(\"kotlin.in…entations\").newInstance()");
                                    try {
                                        if (objNewInstance3 == null) {
                                            throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                                        }
                                        platformImplementations = (PlatformImplementations) objNewInstance3;
                                    } catch (ClassCastException e3) {
                                        Throwable thInitCause2 = new ClassCastException("Instance classloader: " + objNewInstance3.getClass().getClassLoader() + ", base type classloader: " + PlatformImplementations.class.getClassLoader()).initCause(e3);
                                        r.d(thInitCause2, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                                        throw thInitCause2;
                                    }
                                }
                            } catch (ClassNotFoundException unused3) {
                                platformImplementations = new PlatformImplementations();
                            }
                        } else {
                            platformImplementations = new PlatformImplementations();
                        }
                    }
                } catch (ClassCastException e4) {
                    Throwable thInitCause3 = new ClassCastException("Instance classloader: " + objNewInstance2.getClass().getClassLoader() + ", base type classloader: " + PlatformImplementations.class.getClassLoader()).initCause(e4);
                    r.d(thInitCause3, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                    throw thInitCause3;
                }
            } catch (ClassNotFoundException unused4) {
                Object objNewInstance4 = Class.forName("kotlin.internal.JRE8PlatformImplementations").newInstance();
                r.d(objNewInstance4, "Class.forName(\"kotlin.in…entations\").newInstance()");
                try {
                    if (objNewInstance4 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                    }
                    platformImplementations = (PlatformImplementations) objNewInstance4;
                } catch (ClassCastException e5) {
                    Throwable thInitCause4 = new ClassCastException("Instance classloader: " + objNewInstance4.getClass().getClassLoader() + ", base type classloader: " + PlatformImplementations.class.getClassLoader()).initCause(e5);
                    r.d(thInitCause4, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                    throw thInitCause4;
                }
            }
        } else if (iA >= 65543) {
            objNewInstance = Class.forName("kotlin.internal.d.a").newInstance();
            r.d(objNewInstance, "Class.forName(\"kotlin.in…entations\").newInstance()");
            if (objNewInstance != null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
            }
            platformImplementations = (PlatformImplementations) objNewInstance;
        } else {
            platformImplementations = new PlatformImplementations();
        }
        f14634a = platformImplementations;
    }

    private static final int a() {
        String property = System.getProperty("java.specification.version");
        if (property == null) {
            return 65542;
        }
        int iS = StringsKt__StringsKt.S(property, '.', 0, false, 6, null);
        if (iS < 0) {
            try {
                return Integer.parseInt(property) * 65536;
            } catch (NumberFormatException unused) {
                return 65542;
            }
        }
        int i = iS + 1;
        int iS2 = StringsKt__StringsKt.S(property, '.', i, false, 4, null);
        if (iS2 < 0) {
            iS2 = property.length();
        }
        Objects.requireNonNull(property, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = property.substring(0, iS);
        r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        Objects.requireNonNull(property, "null cannot be cast to non-null type java.lang.String");
        String strSubstring2 = property.substring(i, iS2);
        r.d(strSubstring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        try {
            return (Integer.parseInt(strSubstring) * 65536) + Integer.parseInt(strSubstring2);
        } catch (NumberFormatException unused2) {
            return 65542;
        }
    }
}
