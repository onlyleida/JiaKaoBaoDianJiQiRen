package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public abstract class GeneratedMessageLite extends kotlin.reflect.jvm.internal.impl.protobuf.a implements Serializable {

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f15400a;

        static {
            int[] iArr = new int[WireFormat.JavaType.values().length];
            f15400a = iArr;
            try {
                iArr[WireFormat.JavaType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15400a[WireFormat.JavaType.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static abstract class b<MessageType extends GeneratedMessageLite, BuilderType extends b> extends kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a<BuilderType> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private kotlin.reflect.jvm.internal.impl.protobuf.d f15401a = kotlin.reflect.jvm.internal.impl.protobuf.d.f15412a;

        protected b() {
        }

        @Override // 
        public BuilderType d() {
            throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
        }

        public final kotlin.reflect.jvm.internal.impl.protobuf.d e() {
            return this.f15401a;
        }

        public abstract BuilderType f(MessageType messagetype);

        public final BuilderType g(kotlin.reflect.jvm.internal.impl.protobuf.d dVar) {
            this.f15401a = dVar;
            return this;
        }
    }

    public static abstract class c<MessageType extends ExtendableMessage<MessageType>, BuilderType extends c<MessageType, BuilderType>> extends b<MessageType, BuilderType> implements Object<MessageType> {
        private g<d> b = g.g();
        private boolean c;

        protected c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public g<d> i() {
            this.b.q();
            this.c = false;
            return this.b;
        }

        private void j() {
            if (this.c) {
                return;
            }
            this.b = this.b.clone();
            this.c = true;
        }

        protected boolean k() {
            return this.b.n();
        }

        protected final void l(MessageType messagetype) {
            j();
            this.b.r(((ExtendableMessage) messagetype).extensions);
        }
    }

    static final class d implements g.b<d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final h.b<?> f15402a;
        final int b;
        final WireFormat.FieldType c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final boolean f15403d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final boolean f15404e;

        d(h.b<?> bVar, int i, WireFormat.FieldType fieldType, boolean z, boolean z2) {
            this.f15402a = bVar;
            this.b = i;
            this.c = fieldType;
            this.f15403d = z;
            this.f15404e = z2;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(d dVar) {
            return this.b - dVar.b;
        }

        public h.b<?> b() {
            return this.f15402a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.g.b
        public n.a f(n.a aVar, n nVar) {
            return ((b) aVar).f((GeneratedMessageLite) nVar);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.g.b
        public int getNumber() {
            return this.b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.g.b
        public boolean i() {
            return this.f15403d;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.g.b
        public WireFormat.FieldType j() {
            return this.c;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.g.b
        public WireFormat.JavaType l() {
            return this.c.getJavaType();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.g.b
        public boolean m() {
            return this.f15404e;
        }
    }

    public static class e<ContainingType extends n, Type> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ContainingType f15405a;
        final Type b;
        final n c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final d f15406d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final Method f15407e;

        e(ContainingType containingtype, Type type, n nVar, d dVar, Class cls) {
            if (containingtype == null) {
                throw new IllegalArgumentException("Null containingTypeDefaultInstance");
            }
            if (dVar.j() == WireFormat.FieldType.MESSAGE && nVar == null) {
                throw new IllegalArgumentException("Null messageDefaultInstance");
            }
            this.f15405a = containingtype;
            this.b = type;
            this.c = nVar;
            this.f15406d = dVar;
            if (h.a.class.isAssignableFrom(cls)) {
                this.f15407e = GeneratedMessageLite.getMethodOrDie(cls, "valueOf", Integer.TYPE);
            } else {
                this.f15407e = null;
            }
        }

        Object a(Object obj) {
            if (!this.f15406d.i()) {
                return e(obj);
            }
            if (this.f15406d.l() != WireFormat.JavaType.ENUM) {
                return obj;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                arrayList.add(e(it.next()));
            }
            return arrayList;
        }

        public ContainingType b() {
            return this.f15405a;
        }

        public n c() {
            return this.c;
        }

        public int d() {
            return this.f15406d.getNumber();
        }

        Object e(Object obj) {
            return this.f15406d.l() == WireFormat.JavaType.ENUM ? GeneratedMessageLite.invokeOrDie(this.f15407e, null, (Integer) obj) : obj;
        }

        Object f(Object obj) {
            return this.f15406d.l() == WireFormat.JavaType.ENUM ? Integer.valueOf(((h.a) obj).getNumber()) : obj;
        }
    }

    protected GeneratedMessageLite() {
    }

    static Method getMethodOrDie(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e2) {
            String strValueOf = String.valueOf(String.valueOf(cls.getName()));
            String strValueOf2 = String.valueOf(String.valueOf(str));
            StringBuilder sb = new StringBuilder(strValueOf.length() + 45 + strValueOf2.length());
            sb.append("Generated message class \"");
            sb.append(strValueOf);
            sb.append("\" missing method \"");
            sb.append(strValueOf2);
            sb.append("\".");
            throw new RuntimeException(sb.toString(), e2);
        }
    }

    static Object invokeOrDie(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static <ContainingType extends n, Type> e<ContainingType, Type> newRepeatedGeneratedExtension(ContainingType containingtype, n nVar, h.b<?> bVar, int i, WireFormat.FieldType fieldType, boolean z, Class cls) {
        return new e<>(containingtype, Collections.emptyList(), nVar, new d(bVar, i, fieldType, true, z), cls);
    }

    public static <ContainingType extends n, Type> e<ContainingType, Type> newSingularGeneratedExtension(ContainingType containingtype, Type type, n nVar, h.b<?> bVar, int i, WireFormat.FieldType fieldType, Class cls) {
        return new e<>(containingtype, type, nVar, new d(bVar, i, fieldType, false, false), cls);
    }

    public abstract /* synthetic */ n getDefaultInstanceForType();

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.n
    public p<? extends n> getParserForType() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.n
    public abstract /* synthetic */ int getSerializedSize();

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
    public abstract /* synthetic */ boolean isInitialized();

    protected void makeExtensionsImmutable() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.n
    public abstract /* synthetic */ n.a newBuilderForType();

    protected boolean parseUnknownField(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, CodedOutputStream codedOutputStream, f fVar, int i) throws IOException {
        return eVar.P(i, codedOutputStream);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.n
    public abstract /* synthetic */ n.a toBuilder();

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.n
    public abstract /* synthetic */ void writeTo(CodedOutputStream codedOutputStream) throws IOException;

    public static abstract class ExtendableMessage<MessageType extends ExtendableMessage<MessageType>> extends GeneratedMessageLite implements Object<MessageType> {
        private final g<d> extensions;

        protected class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Iterator<Map.Entry<d, Object>> f15398a;
            private Map.Entry<d, Object> b;
            private final boolean c;

            /* synthetic */ a(ExtendableMessage extendableMessage, boolean z, a aVar) {
                this(z);
            }

            public void a(int i, CodedOutputStream codedOutputStream) throws IOException {
                while (true) {
                    Map.Entry<d, Object> entry = this.b;
                    if (entry == null || entry.getKey().getNumber() >= i) {
                        return;
                    }
                    d key = this.b.getKey();
                    if (this.c && key.l() == WireFormat.JavaType.MESSAGE && !key.i()) {
                        codedOutputStream.f0(key.getNumber(), (n) this.b.getValue());
                    } else {
                        g.z(key, this.b.getValue(), codedOutputStream);
                    }
                    if (this.f15398a.hasNext()) {
                        this.b = this.f15398a.next();
                    } else {
                        this.b = null;
                    }
                }
            }

            private a(boolean z) {
                Iterator<Map.Entry<d, Object>> itP = ExtendableMessage.this.extensions.p();
                this.f15398a = itP;
                if (itP.hasNext()) {
                    this.b = itP.next();
                }
                this.c = z;
            }
        }

        protected ExtendableMessage() {
            this.extensions = g.t();
        }

        private void verifyExtensionContainingType(e<MessageType, ?> eVar) {
            if (eVar.b() != getDefaultInstanceForType()) {
                throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
            }
        }

        protected boolean extensionsAreInitialized() {
            return this.extensions.n();
        }

        protected int extensionsSerializedSize() {
            return this.extensions.k();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
        public abstract /* synthetic */ n getDefaultInstanceForType();

        /* JADX WARN: Multi-variable type inference failed */
        public final <Type> Type getExtension(e<MessageType, Type> eVar) {
            verifyExtensionContainingType(eVar);
            Object objH = this.extensions.h(eVar.f15406d);
            return objH == null ? eVar.b : (Type) eVar.a(objH);
        }

        public final <Type> int getExtensionCount(e<MessageType, List<Type>> eVar) {
            verifyExtensionContainingType(eVar);
            return this.extensions.j(eVar.f15406d);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
        public abstract /* synthetic */ int getSerializedSize();

        /* JADX WARN: Multi-variable type inference failed */
        public final <Type> boolean hasExtension(e<MessageType, Type> eVar) {
            verifyExtensionContainingType(eVar);
            return this.extensions.m(eVar.f15406d);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.o
        public abstract /* synthetic */ boolean isInitialized();

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
        protected void makeExtensionsImmutable() {
            this.extensions.q();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
        public abstract /* synthetic */ n.a newBuilderForType();

        protected ExtendableMessage<MessageType>.a newExtensionWriter() {
            return new a(this, false, null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
        protected boolean parseUnknownField(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, CodedOutputStream codedOutputStream, f fVar, int i) throws IOException {
            return GeneratedMessageLite.parseUnknownField(this.extensions, getDefaultInstanceForType(), eVar, codedOutputStream, fVar, i);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
        public abstract /* synthetic */ n.a toBuilder();

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
        public abstract /* synthetic */ void writeTo(CodedOutputStream codedOutputStream) throws IOException;

        protected ExtendableMessage(c<MessageType, ?> cVar) {
            this.extensions = cVar.i();
        }

        public final <Type> Type getExtension(e<MessageType, List<Type>> eVar, int i) {
            verifyExtensionContainingType(eVar);
            return (Type) eVar.e(this.extensions.i(eVar.f15406d, i));
        }
    }

    protected GeneratedMessageLite(b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:4:0x0010  */
    public static <MessageType extends n> boolean parseUnknownField(g<d> gVar, MessageType messagetype, kotlin.reflect.jvm.internal.impl.protobuf.e eVar, CodedOutputStream codedOutputStream, f fVar, int i) throws IOException {
        boolean z;
        boolean z2;
        Object objBuild;
        n nVar;
        int iB = WireFormat.b(i);
        e eVarB = fVar.b(messagetype, WireFormat.a(i));
        if (eVarB == null) {
            z = true;
            z2 = false;
        } else if (iB == g.l(eVarB.f15406d.j(), false)) {
            z = false;
            z2 = false;
        } else {
            d dVar = eVarB.f15406d;
            if (dVar.f15403d && dVar.c.isPackable() && iB == g.l(eVarB.f15406d.j(), true)) {
                z = false;
                z2 = true;
            } else {
                z = true;
                z2 = false;
            }
        }
        if (z) {
            return eVar.P(i, codedOutputStream);
        }
        if (z2) {
            int iJ = eVar.j(eVar.A());
            if (eVarB.f15406d.j() == WireFormat.FieldType.ENUM) {
                while (eVar.e() > 0) {
                    h.a aVarA = eVarB.f15406d.b().a(eVar.n());
                    if (aVarA == null) {
                        return true;
                    }
                    gVar.a(eVarB.f15406d, eVarB.f(aVarA));
                }
            } else {
                while (eVar.e() > 0) {
                    gVar.a(eVarB.f15406d, g.u(eVar, eVarB.f15406d.j(), false));
                }
            }
            eVar.i(iJ);
        } else {
            int i2 = a.f15400a[eVarB.f15406d.l().ordinal()];
            if (i2 == 1) {
                n.a aVarNewBuilderForType = null;
                if (!eVarB.f15406d.i() && (nVar = (n) gVar.h(eVarB.f15406d)) != null) {
                    aVarNewBuilderForType = nVar.toBuilder();
                }
                if (aVarNewBuilderForType == null) {
                    aVarNewBuilderForType = eVarB.c().newBuilderForType();
                }
                if (eVarB.f15406d.j() == WireFormat.FieldType.GROUP) {
                    eVar.r(eVarB.d(), aVarNewBuilderForType, fVar);
                } else {
                    eVar.v(aVarNewBuilderForType, fVar);
                }
                objBuild = aVarNewBuilderForType.build();
            } else if (i2 != 2) {
                objBuild = g.u(eVar, eVarB.f15406d.j(), false);
            } else {
                int iN = eVar.n();
                h.a aVarA2 = eVarB.f15406d.b().a(iN);
                if (aVarA2 == null) {
                    codedOutputStream.o0(i);
                    codedOutputStream.y0(iN);
                    return true;
                }
                objBuild = aVarA2;
            }
            if (eVarB.f15406d.i()) {
                gVar.a(eVarB.f15406d, eVarB.f(objBuild));
            } else {
                gVar.v(eVarB.f15406d, eVarB.f(objBuild));
            }
        }
        return true;
    }
}
