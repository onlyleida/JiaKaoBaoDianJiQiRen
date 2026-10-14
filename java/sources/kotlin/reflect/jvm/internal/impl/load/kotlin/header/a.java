package kotlin.reflect.jvm.internal.impl.load.kotlin.header;

import com.iflytek.cloud.SpeechUtility;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.load.java.r;
import kotlin.reflect.jvm.internal.impl.load.kotlin.m;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.a.e;
import kotlin.reflect.jvm.internal.impl.name.f;

/* JADX INFO: loaded from: classes6.dex */
public class a implements m.c {
    private static final boolean i = "true".equals(System.getProperty("kotlin.ignore.old.metadata"));
    private static final Map<kotlin.reflect.jvm.internal.impl.name.b, KotlinClassHeader.Kind> j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int[] f15223a = null;
    private String b = null;
    private int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f15224d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String[] f15225e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String[] f15226f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String[] f15227g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private KotlinClassHeader.Kind f15228h = null;

    private static abstract class b implements m.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<String> f15229a = new ArrayList();

        private static /* synthetic */ void e(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "enumEntryName";
            } else if (i == 2) {
                objArr[0] = "classLiteralValue";
            } else if (i != 3) {
                objArr[0] = "enumClassId";
            } else {
                objArr[0] = "classId";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$CollectStringArrayAnnotationVisitor";
            if (i == 2) {
                objArr[2] = "visitClassLiteral";
            } else if (i != 3) {
                objArr[2] = "visitEnum";
            } else {
                objArr[2] = "visitAnnotation";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.b
        public m.a a(kotlin.reflect.jvm.internal.impl.name.b bVar) {
            if (bVar != null) {
                return null;
            }
            e(3);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.b
        public void b(Object obj) {
            if (obj instanceof String) {
                this.f15229a.add((String) obj);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.b
        public void c(kotlin.reflect.jvm.internal.impl.name.b bVar, f fVar) {
            if (bVar == null) {
                e(0);
                throw null;
            }
            if (fVar != null) {
                return;
            }
            e(1);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.b
        public void d(kotlin.reflect.jvm.internal.impl.resolve.constants.f fVar) {
            if (fVar != null) {
                return;
            }
            e(2);
            throw null;
        }

        protected abstract void f(String[] strArr);

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.b
        public void visitEnd() {
            f((String[]) this.f15229a.toArray(new String[0]));
        }
    }

    private class c implements m.a {

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.header.a$c$a, reason: collision with other inner class name */
        class C0339a extends b {
            C0339a() {
            }

            private static /* synthetic */ void e(int i) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", SpeechUtility.TAG_RESOURCE_RESULT, "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$1", "visitEnd"));
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.header.a.b
            protected void f(String[] strArr) {
                if (strArr != null) {
                    a.this.f15225e = strArr;
                } else {
                    e(0);
                    throw null;
                }
            }
        }

        class b extends b {
            b() {
            }

            private static /* synthetic */ void e(int i) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", SpeechUtility.TAG_RESOURCE_RESULT, "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$2", "visitEnd"));
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.header.a.b
            protected void f(String[] strArr) {
                if (strArr != null) {
                    a.this.f15226f = strArr;
                } else {
                    e(0);
                    throw null;
                }
            }
        }

        private c() {
        }

        private static /* synthetic */ void f(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "classLiteralValue";
            } else if (i == 7) {
                objArr[0] = "classId";
            } else if (i == 4) {
                objArr[0] = "enumClassId";
            } else if (i != 5) {
                objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
            } else {
                objArr[0] = "enumEntryName";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor";
            switch (i) {
                case 2:
                    objArr[2] = "visitArray";
                    break;
                case 3:
                case 4:
                case 5:
                    objArr[2] = "visitEnum";
                    break;
                case 6:
                case 7:
                    objArr[2] = "visitAnnotation";
                    break;
                default:
                    objArr[2] = "visitClassLiteral";
                    break;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        private m.b g() {
            return new C0339a();
        }

        private m.b h() {
            return new b();
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
        public void a(f fVar, kotlin.reflect.jvm.internal.impl.name.b bVar, f fVar2) {
            if (fVar == null) {
                f(3);
                throw null;
            }
            if (bVar == null) {
                f(4);
                throw null;
            }
            if (fVar2 != null) {
                return;
            }
            f(5);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
        public m.a b(f fVar, kotlin.reflect.jvm.internal.impl.name.b bVar) {
            if (fVar == null) {
                f(6);
                throw null;
            }
            if (bVar != null) {
                return null;
            }
            f(7);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
        public void c(f fVar, kotlin.reflect.jvm.internal.impl.resolve.constants.f fVar2) {
            if (fVar == null) {
                f(0);
                throw null;
            }
            if (fVar2 != null) {
                return;
            }
            f(1);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
        public void d(f fVar, Object obj) {
            if (fVar == null) {
                return;
            }
            String strB = fVar.b();
            if ("k".equals(strB)) {
                if (obj instanceof Integer) {
                    a.this.f15228h = KotlinClassHeader.Kind.getById(((Integer) obj).intValue());
                    return;
                }
                return;
            }
            if ("mv".equals(strB)) {
                if (obj instanceof int[]) {
                    a.this.f15223a = (int[]) obj;
                    return;
                }
                return;
            }
            if ("xs".equals(strB)) {
                if (obj instanceof String) {
                    a.this.b = (String) obj;
                    return;
                }
                return;
            }
            if ("xi".equals(strB)) {
                if (obj instanceof Integer) {
                    a.this.c = ((Integer) obj).intValue();
                    return;
                }
                return;
            }
            if ("pn".equals(strB) && (obj instanceof String)) {
                a.this.f15224d = (String) obj;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
        public m.b e(f fVar) {
            if (fVar == null) {
                f(2);
                throw null;
            }
            String strB = fVar.b();
            if ("d1".equals(strB)) {
                return g();
            }
            if ("d2".equals(strB)) {
                return h();
            }
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
        public void visitEnd() {
        }
    }

    private class d implements m.a {

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.header.a$d$a, reason: collision with other inner class name */
        class C0340a extends b {
            C0340a() {
            }

            private static /* synthetic */ void e(int i) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "data", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$1", "visitEnd"));
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.header.a.b
            protected void f(String[] strArr) {
                if (strArr != null) {
                    a.this.f15225e = strArr;
                } else {
                    e(0);
                    throw null;
                }
            }
        }

        class b extends b {
            b() {
            }

            private static /* synthetic */ void e(int i) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "data", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$2", "visitEnd"));
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.header.a.b
            protected void f(String[] strArr) {
                if (strArr != null) {
                    a.this.f15226f = strArr;
                } else {
                    e(0);
                    throw null;
                }
            }
        }

        private d() {
        }

        private static /* synthetic */ void f(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "classLiteralValue";
            } else if (i == 7) {
                objArr[0] = "classId";
            } else if (i == 4) {
                objArr[0] = "enumClassId";
            } else if (i != 5) {
                objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
            } else {
                objArr[0] = "enumEntryName";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor";
            switch (i) {
                case 2:
                    objArr[2] = "visitArray";
                    break;
                case 3:
                case 4:
                case 5:
                    objArr[2] = "visitEnum";
                    break;
                case 6:
                case 7:
                    objArr[2] = "visitAnnotation";
                    break;
                default:
                    objArr[2] = "visitClassLiteral";
                    break;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        private m.b g() {
            return new C0340a();
        }

        private m.b h() {
            return new b();
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
        public void a(f fVar, kotlin.reflect.jvm.internal.impl.name.b bVar, f fVar2) {
            if (fVar == null) {
                f(3);
                throw null;
            }
            if (bVar == null) {
                f(4);
                throw null;
            }
            if (fVar2 != null) {
                return;
            }
            f(5);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
        public m.a b(f fVar, kotlin.reflect.jvm.internal.impl.name.b bVar) {
            if (fVar == null) {
                f(6);
                throw null;
            }
            if (bVar != null) {
                return null;
            }
            f(7);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
        public void c(f fVar, kotlin.reflect.jvm.internal.impl.resolve.constants.f fVar2) {
            if (fVar == null) {
                f(0);
                throw null;
            }
            if (fVar2 != null) {
                return;
            }
            f(1);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
        public void d(f fVar, Object obj) {
            if (fVar == null) {
                return;
            }
            String strB = fVar.b();
            if ("version".equals(strB)) {
                if (obj instanceof int[]) {
                    a.this.f15223a = (int[]) obj;
                }
            } else if ("multifileClassName".equals(strB)) {
                a.this.b = obj instanceof String ? (String) obj : null;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
        public m.b e(f fVar) {
            if (fVar == null) {
                f(2);
                throw null;
            }
            String strB = fVar.b();
            if ("data".equals(strB) || "filePartClassNames".equals(strB)) {
                return g();
            }
            if ("strings".equals(strB)) {
                return h();
            }
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
        public void visitEnd() {
        }
    }

    static {
        HashMap map = new HashMap();
        j = map;
        map.put(kotlin.reflect.jvm.internal.impl.name.b.m(new kotlin.reflect.jvm.internal.impl.name.c("kotlin.jvm.internal.KotlinClass")), KotlinClassHeader.Kind.CLASS);
        map.put(kotlin.reflect.jvm.internal.impl.name.b.m(new kotlin.reflect.jvm.internal.impl.name.c("kotlin.jvm.internal.KotlinFileFacade")), KotlinClassHeader.Kind.FILE_FACADE);
        map.put(kotlin.reflect.jvm.internal.impl.name.b.m(new kotlin.reflect.jvm.internal.impl.name.c("kotlin.jvm.internal.KotlinMultifileClass")), KotlinClassHeader.Kind.MULTIFILE_CLASS);
        map.put(kotlin.reflect.jvm.internal.impl.name.b.m(new kotlin.reflect.jvm.internal.impl.name.c("kotlin.jvm.internal.KotlinMultifileClassPart")), KotlinClassHeader.Kind.MULTIFILE_CLASS_PART);
        map.put(kotlin.reflect.jvm.internal.impl.name.b.m(new kotlin.reflect.jvm.internal.impl.name.c("kotlin.jvm.internal.KotlinSyntheticClass")), KotlinClassHeader.Kind.SYNTHETIC_CLASS);
    }

    private static /* synthetic */ void c(int i2) {
        Object[] objArr = new Object[3];
        if (i2 != 1) {
            objArr[0] = "classId";
        } else {
            objArr[0] = SocialConstants.PARAM_SOURCE;
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor";
        objArr[2] = "visitAnnotation";
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    private boolean l() {
        KotlinClassHeader.Kind kind = this.f15228h;
        return kind == KotlinClassHeader.Kind.CLASS || kind == KotlinClassHeader.Kind.FILE_FACADE || kind == KotlinClassHeader.Kind.MULTIFILE_CLASS_PART;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.c
    public m.a b(kotlin.reflect.jvm.internal.impl.name.b bVar, o0 o0Var) {
        KotlinClassHeader.Kind kind;
        if (bVar == null) {
            c(0);
            throw null;
        }
        if (o0Var == null) {
            c(1);
            throw null;
        }
        if (bVar.b().equals(r.f15137a)) {
            return new c();
        }
        if (i || this.f15228h != null || (kind = j.get(bVar)) == null) {
            return null;
        }
        this.f15228h = kind;
        return new d();
    }

    public KotlinClassHeader k() {
        if (this.f15228h == null || this.f15223a == null) {
            return null;
        }
        e eVar = new e(this.f15223a, (this.c & 8) != 0);
        if (!eVar.h()) {
            this.f15227g = this.f15225e;
            this.f15225e = null;
        } else if (l() && this.f15225e == null) {
            return null;
        }
        return new KotlinClassHeader(this.f15228h, eVar, this.f15225e, this.f15227g, this.f15226f, this.b, this.c, this.f15224d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.c
    public void visitEnd() {
    }
}
