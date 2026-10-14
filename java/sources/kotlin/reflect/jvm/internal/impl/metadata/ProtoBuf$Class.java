package kotlin.reflect.jvm.internal.impl.metadata;

import cn.mucang.android.jiakaoyi.signal.communicate.receive.l;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.d;
import kotlin.reflect.jvm.internal.impl.protobuf.e;
import kotlin.reflect.jvm.internal.impl.protobuf.f;
import kotlin.reflect.jvm.internal.impl.protobuf.h;
import kotlin.reflect.jvm.internal.impl.protobuf.n;
import kotlin.reflect.jvm.internal.impl.protobuf.p;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes6.dex */
public final class ProtoBuf$Class extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$Class> implements Object {
    public static p<ProtoBuf$Class> PARSER = new a();
    private static final ProtoBuf$Class defaultInstance;
    private int bitField0_;
    private int companionObjectName_;
    private List<ProtoBuf$Constructor> constructor_;
    private List<ProtoBuf$EnumEntry> enumEntry_;
    private int flags_;
    private int fqName_;
    private List<ProtoBuf$Function> function_;
    private int inlineClassUnderlyingPropertyName_;
    private int inlineClassUnderlyingTypeId_;
    private ProtoBuf$Type inlineClassUnderlyingType_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private int nestedClassNameMemoizedSerializedSize;
    private List<Integer> nestedClassName_;
    private List<ProtoBuf$Property> property_;
    private int sealedSubclassFqNameMemoizedSerializedSize;
    private List<Integer> sealedSubclassFqName_;
    private int supertypeIdMemoizedSerializedSize;
    private List<Integer> supertypeId_;
    private List<ProtoBuf$Type> supertype_;
    private List<ProtoBuf$TypeAlias> typeAlias_;
    private List<ProtoBuf$TypeParameter> typeParameter_;
    private ProtoBuf$TypeTable typeTable_;
    private final d unknownFields;
    private ProtoBuf$VersionRequirementTable versionRequirementTable_;
    private List<Integer> versionRequirement_;

    public enum Kind implements h.a {
        CLASS(0, 0),
        INTERFACE(1, 1),
        ENUM_CLASS(2, 2),
        ENUM_ENTRY(3, 3),
        ANNOTATION_CLASS(4, 4),
        OBJECT(5, 5),
        COMPANION_OBJECT(6, 6);

        private static h.b<Kind> internalValueMap = new a();
        private final int value;

        static class a implements h.b<Kind> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.b
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Kind a(int i) {
                return Kind.valueOf(i);
            }
        }

        Kind(int i, int i2) {
            this.value = i2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
        public final int getNumber() {
            return this.value;
        }

        public static Kind valueOf(int i) {
            switch (i) {
                case 0:
                    return CLASS;
                case 1:
                    return INTERFACE;
                case 2:
                    return ENUM_CLASS;
                case 3:
                    return ENUM_ENTRY;
                case 4:
                    return ANNOTATION_CLASS;
                case 5:
                    return OBJECT;
                case 6:
                    return COMPANION_OBJECT;
                default:
                    return null;
            }
        }
    }

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$Class> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Class c(e eVar, f fVar) throws InvalidProtocolBufferException {
            return new ProtoBuf$Class(eVar, fVar);
        }
    }

    public static final class b extends GeneratedMessageLite.c<ProtoBuf$Class, b> implements Object {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f15253d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f15255f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f15256g;
        private int r;
        private int t;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f15254e = 6;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private List<ProtoBuf$TypeParameter> f15257h = Collections.emptyList();
        private List<ProtoBuf$Type> i = Collections.emptyList();
        private List<Integer> j = Collections.emptyList();
        private List<Integer> k = Collections.emptyList();
        private List<ProtoBuf$Constructor> l = Collections.emptyList();
        private List<ProtoBuf$Function> m = Collections.emptyList();
        private List<ProtoBuf$Property> n = Collections.emptyList();
        private List<ProtoBuf$TypeAlias> o = Collections.emptyList();
        private List<ProtoBuf$EnumEntry> p = Collections.emptyList();
        private List<Integer> q = Collections.emptyList();
        private ProtoBuf$Type s = ProtoBuf$Type.getDefaultInstance();
        private ProtoBuf$TypeTable u = ProtoBuf$TypeTable.getDefaultInstance();
        private List<Integer> v = Collections.emptyList();
        private ProtoBuf$VersionRequirementTable w = ProtoBuf$VersionRequirementTable.getDefaultInstance();

        private b() {
            V();
        }

        private void A() {
            if ((this.f15253d & 8) != 8) {
                this.f15257h = new ArrayList(this.f15257h);
                this.f15253d |= 8;
            }
        }

        private void B() {
            if ((this.f15253d & 131072) != 131072) {
                this.v = new ArrayList(this.v);
                this.f15253d |= 131072;
            }
        }

        private void V() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b q() {
            return new b();
        }

        private void r() {
            if ((this.f15253d & 128) != 128) {
                this.l = new ArrayList(this.l);
                this.f15253d |= 128;
            }
        }

        private void s() {
            if ((this.f15253d & 2048) != 2048) {
                this.p = new ArrayList(this.p);
                this.f15253d |= 2048;
            }
        }

        private void t() {
            if ((this.f15253d & 256) != 256) {
                this.m = new ArrayList(this.m);
                this.f15253d |= 256;
            }
        }

        private void u() {
            if ((this.f15253d & 64) != 64) {
                this.k = new ArrayList(this.k);
                this.f15253d |= 64;
            }
        }

        private void v() {
            if ((this.f15253d & 512) != 512) {
                this.n = new ArrayList(this.n);
                this.f15253d |= 512;
            }
        }

        private void w() {
            if ((this.f15253d & 4096) != 4096) {
                this.q = new ArrayList(this.q);
                this.f15253d |= 4096;
            }
        }

        private void x() {
            if ((this.f15253d & 32) != 32) {
                this.j = new ArrayList(this.j);
                this.f15253d |= 32;
            }
        }

        private void y() {
            if ((this.f15253d & 16) != 16) {
                this.i = new ArrayList(this.i);
                this.f15253d |= 16;
            }
        }

        private void z() {
            if ((this.f15253d & 1024) != 1024) {
                this.o = new ArrayList(this.o);
                this.f15253d |= 1024;
            }
        }

        public ProtoBuf$Constructor C(int i) {
            return this.l.get(i);
        }

        public int D() {
            return this.l.size();
        }

        public ProtoBuf$EnumEntry E(int i) {
            return this.p.get(i);
        }

        public int F() {
            return this.p.size();
        }

        public ProtoBuf$Function G(int i) {
            return this.m.get(i);
        }

        public int H() {
            return this.m.size();
        }

        public ProtoBuf$Type I() {
            return this.s;
        }

        public ProtoBuf$Property J(int i) {
            return this.n.get(i);
        }

        public int K() {
            return this.n.size();
        }

        public ProtoBuf$Type L(int i) {
            return this.i.get(i);
        }

        public int M() {
            return this.i.size();
        }

        public ProtoBuf$TypeAlias N(int i) {
            return this.o.get(i);
        }

        public int O() {
            return this.o.size();
        }

        public ProtoBuf$TypeParameter P(int i) {
            return this.f15257h.get(i);
        }

        public int Q() {
            return this.f15257h.size();
        }

        public ProtoBuf$TypeTable R() {
            return this.u;
        }

        public boolean S() {
            return (this.f15253d & 2) == 2;
        }

        public boolean T() {
            return (this.f15253d & 16384) == 16384;
        }

        public boolean U() {
            return (this.f15253d & 65536) == 65536;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: W, reason: merged with bridge method [inline-methods] */
        public b f(ProtoBuf$Class protoBuf$Class) {
            if (protoBuf$Class == ProtoBuf$Class.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$Class.hasFlags()) {
                c0(protoBuf$Class.getFlags());
            }
            if (protoBuf$Class.hasFqName()) {
                d0(protoBuf$Class.getFqName());
            }
            if (protoBuf$Class.hasCompanionObjectName()) {
                b0(protoBuf$Class.getCompanionObjectName());
            }
            if (!protoBuf$Class.typeParameter_.isEmpty()) {
                if (this.f15257h.isEmpty()) {
                    this.f15257h = protoBuf$Class.typeParameter_;
                    this.f15253d &= -9;
                } else {
                    A();
                    this.f15257h.addAll(protoBuf$Class.typeParameter_);
                }
            }
            if (!protoBuf$Class.supertype_.isEmpty()) {
                if (this.i.isEmpty()) {
                    this.i = protoBuf$Class.supertype_;
                    this.f15253d &= -17;
                } else {
                    y();
                    this.i.addAll(protoBuf$Class.supertype_);
                }
            }
            if (!protoBuf$Class.supertypeId_.isEmpty()) {
                if (this.j.isEmpty()) {
                    this.j = protoBuf$Class.supertypeId_;
                    this.f15253d &= -33;
                } else {
                    x();
                    this.j.addAll(protoBuf$Class.supertypeId_);
                }
            }
            if (!protoBuf$Class.nestedClassName_.isEmpty()) {
                if (this.k.isEmpty()) {
                    this.k = protoBuf$Class.nestedClassName_;
                    this.f15253d &= -65;
                } else {
                    u();
                    this.k.addAll(protoBuf$Class.nestedClassName_);
                }
            }
            if (!protoBuf$Class.constructor_.isEmpty()) {
                if (this.l.isEmpty()) {
                    this.l = protoBuf$Class.constructor_;
                    this.f15253d &= -129;
                } else {
                    r();
                    this.l.addAll(protoBuf$Class.constructor_);
                }
            }
            if (!protoBuf$Class.function_.isEmpty()) {
                if (this.m.isEmpty()) {
                    this.m = protoBuf$Class.function_;
                    this.f15253d &= -257;
                } else {
                    t();
                    this.m.addAll(protoBuf$Class.function_);
                }
            }
            if (!protoBuf$Class.property_.isEmpty()) {
                if (this.n.isEmpty()) {
                    this.n = protoBuf$Class.property_;
                    this.f15253d &= -513;
                } else {
                    v();
                    this.n.addAll(protoBuf$Class.property_);
                }
            }
            if (!protoBuf$Class.typeAlias_.isEmpty()) {
                if (this.o.isEmpty()) {
                    this.o = protoBuf$Class.typeAlias_;
                    this.f15253d &= -1025;
                } else {
                    z();
                    this.o.addAll(protoBuf$Class.typeAlias_);
                }
            }
            if (!protoBuf$Class.enumEntry_.isEmpty()) {
                if (this.p.isEmpty()) {
                    this.p = protoBuf$Class.enumEntry_;
                    this.f15253d &= -2049;
                } else {
                    s();
                    this.p.addAll(protoBuf$Class.enumEntry_);
                }
            }
            if (!protoBuf$Class.sealedSubclassFqName_.isEmpty()) {
                if (this.q.isEmpty()) {
                    this.q = protoBuf$Class.sealedSubclassFqName_;
                    this.f15253d &= -4097;
                } else {
                    w();
                    this.q.addAll(protoBuf$Class.sealedSubclassFqName_);
                }
            }
            if (protoBuf$Class.hasInlineClassUnderlyingPropertyName()) {
                e0(protoBuf$Class.getInlineClassUnderlyingPropertyName());
            }
            if (protoBuf$Class.hasInlineClassUnderlyingType()) {
                Y(protoBuf$Class.getInlineClassUnderlyingType());
            }
            if (protoBuf$Class.hasInlineClassUnderlyingTypeId()) {
                f0(protoBuf$Class.getInlineClassUnderlyingTypeId());
            }
            if (protoBuf$Class.hasTypeTable()) {
                Z(protoBuf$Class.getTypeTable());
            }
            if (!protoBuf$Class.versionRequirement_.isEmpty()) {
                if (this.v.isEmpty()) {
                    this.v = protoBuf$Class.versionRequirement_;
                    this.f15253d &= -131073;
                } else {
                    B();
                    this.v.addAll(protoBuf$Class.versionRequirement_);
                }
            }
            if (protoBuf$Class.hasVersionRequirementTable()) {
                a0(protoBuf$Class.getVersionRequirementTable());
            }
            l(protoBuf$Class);
            g(e().b(protoBuf$Class.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        public b X(e eVar, f fVar) throws Throwable {
            ProtoBuf$Class protoBuf$Class = null;
            try {
                try {
                    ProtoBuf$Class protoBuf$ClassC = ProtoBuf$Class.PARSER.c(eVar, fVar);
                    if (protoBuf$ClassC != null) {
                        f(protoBuf$ClassC);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$Class protoBuf$Class2 = (ProtoBuf$Class) e2.getUnfinishedMessage();
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Class = protoBuf$Class2;
                        if (protoBuf$Class != null) {
                            f(protoBuf$Class);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Class != null) {
                    f(protoBuf$Class);
                }
                throw th;
            }
        }

        public b Y(ProtoBuf$Type protoBuf$Type) {
            if ((this.f15253d & 16384) != 16384 || this.s == ProtoBuf$Type.getDefaultInstance()) {
                this.s = protoBuf$Type;
            } else {
                ProtoBuf$Type.b bVarNewBuilder = ProtoBuf$Type.newBuilder(this.s);
                bVarNewBuilder.f(protoBuf$Type);
                this.s = bVarNewBuilder.o();
            }
            this.f15253d |= 16384;
            return this;
        }

        public b Z(ProtoBuf$TypeTable protoBuf$TypeTable) {
            if ((this.f15253d & 65536) != 65536 || this.u == ProtoBuf$TypeTable.getDefaultInstance()) {
                this.u = protoBuf$TypeTable;
            } else {
                ProtoBuf$TypeTable.b bVarNewBuilder = ProtoBuf$TypeTable.newBuilder(this.u);
                bVarNewBuilder.q(protoBuf$TypeTable);
                this.u = bVarNewBuilder.j();
            }
            this.f15253d |= 65536;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a, kotlin.reflect.jvm.internal.impl.protobuf.n.a
        public /* bridge */ /* synthetic */ n.a a(e eVar, f fVar) throws Throwable {
            X(eVar, fVar);
            return this;
        }

        public b a0(ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable) {
            if ((this.f15253d & 262144) != 262144 || this.w == ProtoBuf$VersionRequirementTable.getDefaultInstance()) {
                this.w = protoBuf$VersionRequirementTable;
            } else {
                ProtoBuf$VersionRequirementTable.b bVarNewBuilder = ProtoBuf$VersionRequirementTable.newBuilder(this.w);
                bVarNewBuilder.o(protoBuf$VersionRequirementTable);
                this.w = bVarNewBuilder.j();
            }
            this.f15253d |= 262144;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a
        /* JADX INFO: renamed from: b */
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a a(e eVar, f fVar) throws Throwable {
            X(eVar, fVar);
            return this;
        }

        public b b0(int i) {
            this.f15253d |= 4;
            this.f15256g = i;
            return this;
        }

        public b c0(int i) {
            this.f15253d |= 1;
            this.f15254e = i;
            return this;
        }

        public b d0(int i) {
            this.f15253d |= 2;
            this.f15255f = i;
            return this;
        }

        public b e0(int i) {
            this.f15253d |= 8192;
            this.r = i;
            return this;
        }

        public b f0(int i) {
            this.f15253d |= 32768;
            this.t = i;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
        public final boolean isInitialized() {
            if (!S()) {
                return false;
            }
            for (int i = 0; i < Q(); i++) {
                if (!P(i).isInitialized()) {
                    return false;
                }
            }
            for (int i2 = 0; i2 < M(); i2++) {
                if (!L(i2).isInitialized()) {
                    return false;
                }
            }
            for (int i3 = 0; i3 < D(); i3++) {
                if (!C(i3).isInitialized()) {
                    return false;
                }
            }
            for (int i4 = 0; i4 < H(); i4++) {
                if (!G(i4).isInitialized()) {
                    return false;
                }
            }
            for (int i5 = 0; i5 < K(); i5++) {
                if (!J(i5).isInitialized()) {
                    return false;
                }
            }
            for (int i6 = 0; i6 < O(); i6++) {
                if (!N(i6).isInitialized()) {
                    return false;
                }
            }
            for (int i7 = 0; i7 < F(); i7++) {
                if (!E(i7).isInitialized()) {
                    return false;
                }
            }
            if (!T() || I().isInitialized()) {
                return (!U() || R().isInitialized()) && k();
            }
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Class build() {
            ProtoBuf$Class protoBuf$ClassO = o();
            if (protoBuf$ClassO.isInitialized()) {
                return protoBuf$ClassO;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(protoBuf$ClassO);
        }

        public ProtoBuf$Class o() {
            ProtoBuf$Class protoBuf$Class = new ProtoBuf$Class(this);
            int i = this.f15253d;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$Class.flags_ = this.f15254e;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$Class.fqName_ = this.f15255f;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$Class.companionObjectName_ = this.f15256g;
            if ((this.f15253d & 8) == 8) {
                this.f15257h = Collections.unmodifiableList(this.f15257h);
                this.f15253d &= -9;
            }
            protoBuf$Class.typeParameter_ = this.f15257h;
            if ((this.f15253d & 16) == 16) {
                this.i = Collections.unmodifiableList(this.i);
                this.f15253d &= -17;
            }
            protoBuf$Class.supertype_ = this.i;
            if ((this.f15253d & 32) == 32) {
                this.j = Collections.unmodifiableList(this.j);
                this.f15253d &= -33;
            }
            protoBuf$Class.supertypeId_ = this.j;
            if ((this.f15253d & 64) == 64) {
                this.k = Collections.unmodifiableList(this.k);
                this.f15253d &= -65;
            }
            protoBuf$Class.nestedClassName_ = this.k;
            if ((this.f15253d & 128) == 128) {
                this.l = Collections.unmodifiableList(this.l);
                this.f15253d &= -129;
            }
            protoBuf$Class.constructor_ = this.l;
            if ((this.f15253d & 256) == 256) {
                this.m = Collections.unmodifiableList(this.m);
                this.f15253d &= -257;
            }
            protoBuf$Class.function_ = this.m;
            if ((this.f15253d & 512) == 512) {
                this.n = Collections.unmodifiableList(this.n);
                this.f15253d &= -513;
            }
            protoBuf$Class.property_ = this.n;
            if ((this.f15253d & 1024) == 1024) {
                this.o = Collections.unmodifiableList(this.o);
                this.f15253d &= -1025;
            }
            protoBuf$Class.typeAlias_ = this.o;
            if ((this.f15253d & 2048) == 2048) {
                this.p = Collections.unmodifiableList(this.p);
                this.f15253d &= -2049;
            }
            protoBuf$Class.enumEntry_ = this.p;
            if ((this.f15253d & 4096) == 4096) {
                this.q = Collections.unmodifiableList(this.q);
                this.f15253d &= -4097;
            }
            protoBuf$Class.sealedSubclassFqName_ = this.q;
            if ((i & 8192) == 8192) {
                i2 |= 8;
            }
            protoBuf$Class.inlineClassUnderlyingPropertyName_ = this.r;
            if ((i & 16384) == 16384) {
                i2 |= 16;
            }
            protoBuf$Class.inlineClassUnderlyingType_ = this.s;
            if ((i & 32768) == 32768) {
                i2 |= 32;
            }
            protoBuf$Class.inlineClassUnderlyingTypeId_ = this.t;
            if ((i & 65536) == 65536) {
                i2 |= 64;
            }
            protoBuf$Class.typeTable_ = this.u;
            if ((this.f15253d & 131072) == 131072) {
                this.v = Collections.unmodifiableList(this.v);
                this.f15253d &= -131073;
            }
            protoBuf$Class.versionRequirement_ = this.v;
            if ((i & 262144) == 262144) {
                i2 |= 128;
            }
            protoBuf$Class.versionRequirementTable_ = this.w;
            protoBuf$Class.bitField0_ = i2;
            return protoBuf$Class;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public b d() {
            b bVarQ = q();
            bVarQ.f(o());
            return bVarQ;
        }
    }

    static {
        ProtoBuf$Class protoBuf$Class = new ProtoBuf$Class(true);
        defaultInstance = protoBuf$Class;
        protoBuf$Class.initFields();
    }

    public static ProtoBuf$Class getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.flags_ = 6;
        this.fqName_ = 0;
        this.companionObjectName_ = 0;
        this.typeParameter_ = Collections.emptyList();
        this.supertype_ = Collections.emptyList();
        this.supertypeId_ = Collections.emptyList();
        this.nestedClassName_ = Collections.emptyList();
        this.constructor_ = Collections.emptyList();
        this.function_ = Collections.emptyList();
        this.property_ = Collections.emptyList();
        this.typeAlias_ = Collections.emptyList();
        this.enumEntry_ = Collections.emptyList();
        this.sealedSubclassFqName_ = Collections.emptyList();
        this.inlineClassUnderlyingPropertyName_ = 0;
        this.inlineClassUnderlyingType_ = ProtoBuf$Type.getDefaultInstance();
        this.inlineClassUnderlyingTypeId_ = 0;
        this.typeTable_ = ProtoBuf$TypeTable.getDefaultInstance();
        this.versionRequirement_ = Collections.emptyList();
        this.versionRequirementTable_ = ProtoBuf$VersionRequirementTable.getDefaultInstance();
    }

    public static b newBuilder() {
        return b.q();
    }

    public static ProtoBuf$Class parseFrom(InputStream inputStream, f fVar) throws IOException {
        return PARSER.a(inputStream, fVar);
    }

    public int getCompanionObjectName() {
        return this.companionObjectName_;
    }

    public ProtoBuf$Constructor getConstructor(int i) {
        return this.constructor_.get(i);
    }

    public int getConstructorCount() {
        return this.constructor_.size();
    }

    public List<ProtoBuf$Constructor> getConstructorList() {
        return this.constructor_;
    }

    public ProtoBuf$EnumEntry getEnumEntry(int i) {
        return this.enumEntry_.get(i);
    }

    public int getEnumEntryCount() {
        return this.enumEntry_.size();
    }

    public List<ProtoBuf$EnumEntry> getEnumEntryList() {
        return this.enumEntry_;
    }

    public int getFlags() {
        return this.flags_;
    }

    public int getFqName() {
        return this.fqName_;
    }

    public ProtoBuf$Function getFunction(int i) {
        return this.function_.get(i);
    }

    public int getFunctionCount() {
        return this.function_.size();
    }

    public List<ProtoBuf$Function> getFunctionList() {
        return this.function_;
    }

    public int getInlineClassUnderlyingPropertyName() {
        return this.inlineClassUnderlyingPropertyName_;
    }

    public ProtoBuf$Type getInlineClassUnderlyingType() {
        return this.inlineClassUnderlyingType_;
    }

    public int getInlineClassUnderlyingTypeId() {
        return this.inlineClassUnderlyingTypeId_;
    }

    public List<Integer> getNestedClassNameList() {
        return this.nestedClassName_;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public p<ProtoBuf$Class> getParserForType() {
        return PARSER;
    }

    public ProtoBuf$Property getProperty(int i) {
        return this.property_.get(i);
    }

    public int getPropertyCount() {
        return this.property_.size();
    }

    public List<ProtoBuf$Property> getPropertyList() {
        return this.property_;
    }

    public List<Integer> getSealedSubclassFqNameList() {
        return this.sealedSubclassFqName_;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iO = (this.bitField0_ & 1) == 1 ? CodedOutputStream.o(1, this.flags_) + 0 : 0;
        int iP = 0;
        for (int i2 = 0; i2 < this.supertypeId_.size(); i2++) {
            iP += CodedOutputStream.p(this.supertypeId_.get(i2).intValue());
        }
        int iS = iO + iP;
        if (!getSupertypeIdList().isEmpty()) {
            iS = iS + 1 + CodedOutputStream.p(iP);
        }
        this.supertypeIdMemoizedSerializedSize = iP;
        if ((this.bitField0_ & 2) == 2) {
            iS += CodedOutputStream.o(3, this.fqName_);
        }
        if ((this.bitField0_ & 4) == 4) {
            iS += CodedOutputStream.o(4, this.companionObjectName_);
        }
        for (int i3 = 0; i3 < this.typeParameter_.size(); i3++) {
            iS += CodedOutputStream.s(5, this.typeParameter_.get(i3));
        }
        for (int i4 = 0; i4 < this.supertype_.size(); i4++) {
            iS += CodedOutputStream.s(6, this.supertype_.get(i4));
        }
        int iP2 = 0;
        for (int i5 = 0; i5 < this.nestedClassName_.size(); i5++) {
            iP2 += CodedOutputStream.p(this.nestedClassName_.get(i5).intValue());
        }
        int iS2 = iS + iP2;
        if (!getNestedClassNameList().isEmpty()) {
            iS2 = iS2 + 1 + CodedOutputStream.p(iP2);
        }
        this.nestedClassNameMemoizedSerializedSize = iP2;
        for (int i6 = 0; i6 < this.constructor_.size(); i6++) {
            iS2 += CodedOutputStream.s(8, this.constructor_.get(i6));
        }
        for (int i7 = 0; i7 < this.function_.size(); i7++) {
            iS2 += CodedOutputStream.s(9, this.function_.get(i7));
        }
        for (int i8 = 0; i8 < this.property_.size(); i8++) {
            iS2 += CodedOutputStream.s(10, this.property_.get(i8));
        }
        for (int i9 = 0; i9 < this.typeAlias_.size(); i9++) {
            iS2 += CodedOutputStream.s(11, this.typeAlias_.get(i9));
        }
        for (int i10 = 0; i10 < this.enumEntry_.size(); i10++) {
            iS2 += CodedOutputStream.s(13, this.enumEntry_.get(i10));
        }
        int iP3 = 0;
        for (int i11 = 0; i11 < this.sealedSubclassFqName_.size(); i11++) {
            iP3 += CodedOutputStream.p(this.sealedSubclassFqName_.get(i11).intValue());
        }
        int iS3 = iS2 + iP3;
        if (!getSealedSubclassFqNameList().isEmpty()) {
            iS3 = iS3 + 2 + CodedOutputStream.p(iP3);
        }
        this.sealedSubclassFqNameMemoizedSerializedSize = iP3;
        if ((this.bitField0_ & 8) == 8) {
            iS3 += CodedOutputStream.o(17, this.inlineClassUnderlyingPropertyName_);
        }
        if ((this.bitField0_ & 16) == 16) {
            iS3 += CodedOutputStream.s(18, this.inlineClassUnderlyingType_);
        }
        if ((this.bitField0_ & 32) == 32) {
            iS3 += CodedOutputStream.o(19, this.inlineClassUnderlyingTypeId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            iS3 += CodedOutputStream.s(30, this.typeTable_);
        }
        int iP4 = 0;
        for (int i12 = 0; i12 < this.versionRequirement_.size(); i12++) {
            iP4 += CodedOutputStream.p(this.versionRequirement_.get(i12).intValue());
        }
        int size = iS3 + iP4 + (getVersionRequirementList().size() * 2);
        if ((this.bitField0_ & 128) == 128) {
            size += CodedOutputStream.s(32, this.versionRequirementTable_);
        }
        int iExtensionsSerializedSize = size + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = iExtensionsSerializedSize;
        return iExtensionsSerializedSize;
    }

    public ProtoBuf$Type getSupertype(int i) {
        return this.supertype_.get(i);
    }

    public int getSupertypeCount() {
        return this.supertype_.size();
    }

    public List<Integer> getSupertypeIdList() {
        return this.supertypeId_;
    }

    public List<ProtoBuf$Type> getSupertypeList() {
        return this.supertype_;
    }

    public ProtoBuf$TypeAlias getTypeAlias(int i) {
        return this.typeAlias_.get(i);
    }

    public int getTypeAliasCount() {
        return this.typeAlias_.size();
    }

    public List<ProtoBuf$TypeAlias> getTypeAliasList() {
        return this.typeAlias_;
    }

    public ProtoBuf$TypeParameter getTypeParameter(int i) {
        return this.typeParameter_.get(i);
    }

    public int getTypeParameterCount() {
        return this.typeParameter_.size();
    }

    public List<ProtoBuf$TypeParameter> getTypeParameterList() {
        return this.typeParameter_;
    }

    public ProtoBuf$TypeTable getTypeTable() {
        return this.typeTable_;
    }

    public List<Integer> getVersionRequirementList() {
        return this.versionRequirement_;
    }

    public ProtoBuf$VersionRequirementTable getVersionRequirementTable() {
        return this.versionRequirementTable_;
    }

    public boolean hasCompanionObjectName() {
        return (this.bitField0_ & 4) == 4;
    }

    public boolean hasFlags() {
        return (this.bitField0_ & 1) == 1;
    }

    public boolean hasFqName() {
        return (this.bitField0_ & 2) == 2;
    }

    public boolean hasInlineClassUnderlyingPropertyName() {
        return (this.bitField0_ & 8) == 8;
    }

    public boolean hasInlineClassUnderlyingType() {
        return (this.bitField0_ & 16) == 16;
    }

    public boolean hasInlineClassUnderlyingTypeId() {
        return (this.bitField0_ & 32) == 32;
    }

    public boolean hasTypeTable() {
        return (this.bitField0_ & 64) == 64;
    }

    public boolean hasVersionRequirementTable() {
        return (this.bitField0_ & 128) == 128;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.o
    public final boolean isInitialized() {
        byte b2 = this.memoizedIsInitialized;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        if (!hasFqName()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i = 0; i < getTypeParameterCount(); i++) {
            if (!getTypeParameter(i).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i2 = 0; i2 < getSupertypeCount(); i2++) {
            if (!getSupertype(i2).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i3 = 0; i3 < getConstructorCount(); i3++) {
            if (!getConstructor(i3).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i4 = 0; i4 < getFunctionCount(); i4++) {
            if (!getFunction(i4).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i5 = 0; i5 < getPropertyCount(); i5++) {
            if (!getProperty(i5).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i6 = 0; i6 < getTypeAliasCount(); i6++) {
            if (!getTypeAlias(i6).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i7 = 0; i7 < getEnumEntryCount(); i7++) {
            if (!getEnumEntry(i7).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if (hasInlineClassUnderlyingType() && !getInlineClassUnderlyingType().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if (hasTypeTable() && !getTypeTable().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if (extensionsAreInitialized()) {
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }
        this.memoizedIsInitialized = (byte) 0;
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        GeneratedMessageLite.ExtendableMessage<MessageType>.a aVarNewExtensionWriter = newExtensionWriter();
        if ((this.bitField0_ & 1) == 1) {
            codedOutputStream.a0(1, this.flags_);
        }
        if (getSupertypeIdList().size() > 0) {
            codedOutputStream.o0(18);
            codedOutputStream.o0(this.supertypeIdMemoizedSerializedSize);
        }
        for (int i = 0; i < this.supertypeId_.size(); i++) {
            codedOutputStream.b0(this.supertypeId_.get(i).intValue());
        }
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.a0(3, this.fqName_);
        }
        if ((this.bitField0_ & 4) == 4) {
            codedOutputStream.a0(4, this.companionObjectName_);
        }
        for (int i2 = 0; i2 < this.typeParameter_.size(); i2++) {
            codedOutputStream.d0(5, this.typeParameter_.get(i2));
        }
        for (int i3 = 0; i3 < this.supertype_.size(); i3++) {
            codedOutputStream.d0(6, this.supertype_.get(i3));
        }
        if (getNestedClassNameList().size() > 0) {
            codedOutputStream.o0(58);
            codedOutputStream.o0(this.nestedClassNameMemoizedSerializedSize);
        }
        for (int i4 = 0; i4 < this.nestedClassName_.size(); i4++) {
            codedOutputStream.b0(this.nestedClassName_.get(i4).intValue());
        }
        for (int i5 = 0; i5 < this.constructor_.size(); i5++) {
            codedOutputStream.d0(8, this.constructor_.get(i5));
        }
        for (int i6 = 0; i6 < this.function_.size(); i6++) {
            codedOutputStream.d0(9, this.function_.get(i6));
        }
        for (int i7 = 0; i7 < this.property_.size(); i7++) {
            codedOutputStream.d0(10, this.property_.get(i7));
        }
        for (int i8 = 0; i8 < this.typeAlias_.size(); i8++) {
            codedOutputStream.d0(11, this.typeAlias_.get(i8));
        }
        for (int i9 = 0; i9 < this.enumEntry_.size(); i9++) {
            codedOutputStream.d0(13, this.enumEntry_.get(i9));
        }
        if (getSealedSubclassFqNameList().size() > 0) {
            codedOutputStream.o0(130);
            codedOutputStream.o0(this.sealedSubclassFqNameMemoizedSerializedSize);
        }
        for (int i10 = 0; i10 < this.sealedSubclassFqName_.size(); i10++) {
            codedOutputStream.b0(this.sealedSubclassFqName_.get(i10).intValue());
        }
        if ((this.bitField0_ & 8) == 8) {
            codedOutputStream.a0(17, this.inlineClassUnderlyingPropertyName_);
        }
        if ((this.bitField0_ & 16) == 16) {
            codedOutputStream.d0(18, this.inlineClassUnderlyingType_);
        }
        if ((this.bitField0_ & 32) == 32) {
            codedOutputStream.a0(19, this.inlineClassUnderlyingTypeId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            codedOutputStream.d0(30, this.typeTable_);
        }
        for (int i11 = 0; i11 < this.versionRequirement_.size(); i11++) {
            codedOutputStream.a0(31, this.versionRequirement_.get(i11).intValue());
        }
        if ((this.bitField0_ & 128) == 128) {
            codedOutputStream.d0(32, this.versionRequirementTable_);
        }
        aVarNewExtensionWriter.a(Videoio.CAP_PROP_IMAGES_LAST, codedOutputStream);
        codedOutputStream.i0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$Class protoBuf$Class) {
        b bVarNewBuilder = newBuilder();
        bVarNewBuilder.f(protoBuf$Class);
        return bVarNewBuilder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
    public ProtoBuf$Class getDefaultInstanceForType() {
        return defaultInstance;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public b newBuilderForType() {
        return newBuilder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public b toBuilder() {
        return newBuilder(this);
    }

    private ProtoBuf$Class(GeneratedMessageLite.c<ProtoBuf$Class, ?> cVar) {
        super(cVar);
        this.supertypeIdMemoizedSerializedSize = -1;
        this.nestedClassNameMemoizedSerializedSize = -1;
        this.sealedSubclassFqNameMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = cVar.e();
    }

    private ProtoBuf$Class(boolean z) {
        this.supertypeIdMemoizedSerializedSize = -1;
        this.nestedClassNameMemoizedSerializedSize = -1;
        this.sealedSubclassFqNameMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = d.f15412a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ProtoBuf$Class(e eVar, f fVar) throws InvalidProtocolBufferException {
        this.supertypeIdMemoizedSerializedSize = -1;
        this.nestedClassNameMemoizedSerializedSize = -1;
        this.sealedSubclassFqNameMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        initFields();
        d.b bVarT = d.t();
        CodedOutputStream codedOutputStreamJ = CodedOutputStream.J(bVarT, 1);
        boolean z = false;
        int i = 0;
        while (!z) {
            try {
                try {
                    int iK = eVar.K();
                    switch (iK) {
                        case 0:
                            z = true;
                            break;
                        case 8:
                            this.bitField0_ |= 1;
                            this.flags_ = eVar.s();
                            break;
                        case 16:
                            if ((i & 32) != 32) {
                                this.supertypeId_ = new ArrayList();
                                i |= 32;
                            }
                            this.supertypeId_.add(Integer.valueOf(eVar.s()));
                            break;
                        case 18:
                            int iJ = eVar.j(eVar.A());
                            if ((i & 32) != 32 && eVar.e() > 0) {
                                this.supertypeId_ = new ArrayList();
                                i |= 32;
                            }
                            while (eVar.e() > 0) {
                                this.supertypeId_.add(Integer.valueOf(eVar.s()));
                            }
                            eVar.i(iJ);
                            break;
                        case 24:
                            this.bitField0_ |= 2;
                            this.fqName_ = eVar.s();
                            break;
                        case 32:
                            this.bitField0_ |= 4;
                            this.companionObjectName_ = eVar.s();
                            break;
                        case 42:
                            if ((i & 8) != 8) {
                                this.typeParameter_ = new ArrayList();
                                i |= 8;
                            }
                            this.typeParameter_.add((ProtoBuf$TypeParameter) eVar.u(ProtoBuf$TypeParameter.PARSER, fVar));
                            break;
                        case 50:
                            if ((i & 16) != 16) {
                                this.supertype_ = new ArrayList();
                                i |= 16;
                            }
                            this.supertype_.add((ProtoBuf$Type) eVar.u(ProtoBuf$Type.PARSER, fVar));
                            break;
                        case 56:
                            if ((i & 64) != 64) {
                                this.nestedClassName_ = new ArrayList();
                                i |= 64;
                            }
                            this.nestedClassName_.add(Integer.valueOf(eVar.s()));
                            break;
                        case 58:
                            int iJ2 = eVar.j(eVar.A());
                            if ((i & 64) != 64 && eVar.e() > 0) {
                                this.nestedClassName_ = new ArrayList();
                                i |= 64;
                            }
                            while (eVar.e() > 0) {
                                this.nestedClassName_.add(Integer.valueOf(eVar.s()));
                            }
                            eVar.i(iJ2);
                            break;
                        case 66:
                            if ((i & 128) != 128) {
                                this.constructor_ = new ArrayList();
                                i |= 128;
                            }
                            this.constructor_.add((ProtoBuf$Constructor) eVar.u(ProtoBuf$Constructor.PARSER, fVar));
                            break;
                        case 74:
                            if ((i & 256) != 256) {
                                this.function_ = new ArrayList();
                                i |= 256;
                            }
                            this.function_.add((ProtoBuf$Function) eVar.u(ProtoBuf$Function.PARSER, fVar));
                            break;
                        case 82:
                            if ((i & 512) != 512) {
                                this.property_ = new ArrayList();
                                i |= 512;
                            }
                            this.property_.add((ProtoBuf$Property) eVar.u(ProtoBuf$Property.PARSER, fVar));
                            break;
                        case 90:
                            if ((i & 1024) != 1024) {
                                this.typeAlias_ = new ArrayList();
                                i |= 1024;
                            }
                            this.typeAlias_.add((ProtoBuf$TypeAlias) eVar.u(ProtoBuf$TypeAlias.PARSER, fVar));
                            break;
                        case 106:
                            if ((i & 2048) != 2048) {
                                this.enumEntry_ = new ArrayList();
                                i |= 2048;
                            }
                            this.enumEntry_.add((ProtoBuf$EnumEntry) eVar.u(ProtoBuf$EnumEntry.PARSER, fVar));
                            break;
                        case 128:
                            if ((i & 4096) != 4096) {
                                this.sealedSubclassFqName_ = new ArrayList();
                                i |= 4096;
                            }
                            this.sealedSubclassFqName_.add(Integer.valueOf(eVar.s()));
                            break;
                        case 130:
                            int iJ3 = eVar.j(eVar.A());
                            if ((i & 4096) != 4096 && eVar.e() > 0) {
                                this.sealedSubclassFqName_ = new ArrayList();
                                i |= 4096;
                            }
                            while (eVar.e() > 0) {
                                this.sealedSubclassFqName_.add(Integer.valueOf(eVar.s()));
                            }
                            eVar.i(iJ3);
                            break;
                        case 136:
                            this.bitField0_ |= 8;
                            this.inlineClassUnderlyingPropertyName_ = eVar.s();
                            break;
                        case l.Receive_GEAR_DATA /* 146 */:
                            ProtoBuf$Type.b builder = (this.bitField0_ & 16) == 16 ? this.inlineClassUnderlyingType_.toBuilder() : null;
                            ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) eVar.u(ProtoBuf$Type.PARSER, fVar);
                            this.inlineClassUnderlyingType_ = protoBuf$Type;
                            if (builder != 0) {
                                builder.f(protoBuf$Type);
                                this.inlineClassUnderlyingType_ = builder.o();
                            }
                            this.bitField0_ |= 16;
                            break;
                        case 152:
                            this.bitField0_ |= 32;
                            this.inlineClassUnderlyingTypeId_ = eVar.s();
                            break;
                        case 242:
                            ProtoBuf$TypeTable.b builder2 = (this.bitField0_ & 64) == 64 ? this.typeTable_.toBuilder() : null;
                            ProtoBuf$TypeTable protoBuf$TypeTable = (ProtoBuf$TypeTable) eVar.u(ProtoBuf$TypeTable.PARSER, fVar);
                            this.typeTable_ = protoBuf$TypeTable;
                            if (builder2 != 0) {
                                builder2.q(protoBuf$TypeTable);
                                this.typeTable_ = builder2.j();
                            }
                            this.bitField0_ |= 64;
                            break;
                        case 248:
                            if ((i & 131072) != 131072) {
                                this.versionRequirement_ = new ArrayList();
                                i |= 131072;
                            }
                            this.versionRequirement_.add(Integer.valueOf(eVar.s()));
                            break;
                        case 250:
                            int iJ4 = eVar.j(eVar.A());
                            if ((i & 131072) != 131072 && eVar.e() > 0) {
                                this.versionRequirement_ = new ArrayList();
                                i |= 131072;
                            }
                            while (eVar.e() > 0) {
                                this.versionRequirement_.add(Integer.valueOf(eVar.s()));
                            }
                            eVar.i(iJ4);
                            break;
                        case 258:
                            ProtoBuf$VersionRequirementTable.b builder3 = (this.bitField0_ & 128) == 128 ? this.versionRequirementTable_.toBuilder() : null;
                            ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable = (ProtoBuf$VersionRequirementTable) eVar.u(ProtoBuf$VersionRequirementTable.PARSER, fVar);
                            this.versionRequirementTable_ = protoBuf$VersionRequirementTable;
                            if (builder3 != 0) {
                                builder3.o(protoBuf$VersionRequirementTable);
                                this.versionRequirementTable_ = builder3.j();
                            }
                            this.bitField0_ |= 128;
                            break;
                        default:
                            if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                                z = true;
                            }
                            break;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    throw e2.setUnfinishedMessage(this);
                } catch (IOException e3) {
                    throw new InvalidProtocolBufferException(e3.getMessage()).setUnfinishedMessage(this);
                }
            } catch (Throwable th) {
                if ((i & 32) == 32) {
                    this.supertypeId_ = Collections.unmodifiableList(this.supertypeId_);
                }
                if ((i & 8) == 8) {
                    this.typeParameter_ = Collections.unmodifiableList(this.typeParameter_);
                }
                if ((i & 16) == 16) {
                    this.supertype_ = Collections.unmodifiableList(this.supertype_);
                }
                if ((i & 64) == 64) {
                    this.nestedClassName_ = Collections.unmodifiableList(this.nestedClassName_);
                }
                if ((i & 128) == 128) {
                    this.constructor_ = Collections.unmodifiableList(this.constructor_);
                }
                if ((i & 256) == 256) {
                    this.function_ = Collections.unmodifiableList(this.function_);
                }
                if ((i & 512) == 512) {
                    this.property_ = Collections.unmodifiableList(this.property_);
                }
                if ((i & 1024) == 1024) {
                    this.typeAlias_ = Collections.unmodifiableList(this.typeAlias_);
                }
                if ((i & 2048) == 2048) {
                    this.enumEntry_ = Collections.unmodifiableList(this.enumEntry_);
                }
                if ((i & 4096) == 4096) {
                    this.sealedSubclassFqName_ = Collections.unmodifiableList(this.sealedSubclassFqName_);
                }
                if ((i & 131072) == 131072) {
                    this.versionRequirement_ = Collections.unmodifiableList(this.versionRequirement_);
                }
                try {
                    codedOutputStreamJ.I();
                } catch (IOException unused) {
                } finally {
                    this.unknownFields = bVarT.e();
                }
                makeExtensionsImmutable();
                throw th;
            }
        }
        if ((i & 32) == 32) {
            this.supertypeId_ = Collections.unmodifiableList(this.supertypeId_);
        }
        if ((i & 8) == 8) {
            this.typeParameter_ = Collections.unmodifiableList(this.typeParameter_);
        }
        if ((i & 16) == 16) {
            this.supertype_ = Collections.unmodifiableList(this.supertype_);
        }
        if ((i & 64) == 64) {
            this.nestedClassName_ = Collections.unmodifiableList(this.nestedClassName_);
        }
        if ((i & 128) == 128) {
            this.constructor_ = Collections.unmodifiableList(this.constructor_);
        }
        if ((i & 256) == 256) {
            this.function_ = Collections.unmodifiableList(this.function_);
        }
        if ((i & 512) == 512) {
            this.property_ = Collections.unmodifiableList(this.property_);
        }
        if ((i & 1024) == 1024) {
            this.typeAlias_ = Collections.unmodifiableList(this.typeAlias_);
        }
        if ((i & 2048) == 2048) {
            this.enumEntry_ = Collections.unmodifiableList(this.enumEntry_);
        }
        if ((i & 4096) == 4096) {
            this.sealedSubclassFqName_ = Collections.unmodifiableList(this.sealedSubclassFqName_);
        }
        if ((i & 131072) == 131072) {
            this.versionRequirement_ = Collections.unmodifiableList(this.versionRequirement_);
        }
        try {
            codedOutputStreamJ.I();
        } catch (IOException unused2) {
        } finally {
            this.unknownFields = bVarT.e();
        }
        makeExtensionsImmutable();
    }
}
