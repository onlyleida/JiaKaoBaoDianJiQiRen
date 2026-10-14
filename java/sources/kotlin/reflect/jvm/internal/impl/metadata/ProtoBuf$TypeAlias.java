package kotlin.reflect.jvm.internal.impl.metadata;

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
import kotlin.reflect.jvm.internal.impl.protobuf.n;
import kotlin.reflect.jvm.internal.impl.protobuf.p;

/* JADX INFO: loaded from: classes6.dex */
public final class ProtoBuf$TypeAlias extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$TypeAlias> implements Object {
    public static p<ProtoBuf$TypeAlias> PARSER = new a();
    private static final ProtoBuf$TypeAlias defaultInstance;
    private List<ProtoBuf$Annotation> annotation_;
    private int bitField0_;
    private int expandedTypeId_;
    private ProtoBuf$Type expandedType_;
    private int flags_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private int name_;
    private List<ProtoBuf$TypeParameter> typeParameter_;
    private int underlyingTypeId_;
    private ProtoBuf$Type underlyingType_;
    private final d unknownFields;
    private List<Integer> versionRequirement_;

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$TypeAlias> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$TypeAlias c(e eVar, f fVar) throws InvalidProtocolBufferException {
            return new ProtoBuf$TypeAlias(eVar, fVar);
        }
    }

    public static final class b extends GeneratedMessageLite.c<ProtoBuf$TypeAlias, b> implements Object {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f15301d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f15303f;
        private int i;
        private int k;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f15302e = 6;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private List<ProtoBuf$TypeParameter> f15304g = Collections.emptyList();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private ProtoBuf$Type f15305h = ProtoBuf$Type.getDefaultInstance();
        private ProtoBuf$Type j = ProtoBuf$Type.getDefaultInstance();
        private List<ProtoBuf$Annotation> l = Collections.emptyList();
        private List<Integer> m = Collections.emptyList();

        private b() {
            D();
        }

        private void D() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b q() {
            return new b();
        }

        private void r() {
            if ((this.f15301d & 128) != 128) {
                this.l = new ArrayList(this.l);
                this.f15301d |= 128;
            }
        }

        private void s() {
            if ((this.f15301d & 4) != 4) {
                this.f15304g = new ArrayList(this.f15304g);
                this.f15301d |= 4;
            }
        }

        private void t() {
            if ((this.f15301d & 256) != 256) {
                this.m = new ArrayList(this.m);
                this.f15301d |= 256;
            }
        }

        public boolean A() {
            return (this.f15301d & 32) == 32;
        }

        public boolean B() {
            return (this.f15301d & 2) == 2;
        }

        public boolean C() {
            return (this.f15301d & 8) == 8;
        }

        public b E(ProtoBuf$Type protoBuf$Type) {
            if ((this.f15301d & 32) != 32 || this.j == ProtoBuf$Type.getDefaultInstance()) {
                this.j = protoBuf$Type;
            } else {
                this.j = ProtoBuf$Type.newBuilder(this.j).f(protoBuf$Type).o();
            }
            this.f15301d |= 32;
            return this;
        }

        public b F(ProtoBuf$TypeAlias protoBuf$TypeAlias) {
            if (protoBuf$TypeAlias == ProtoBuf$TypeAlias.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$TypeAlias.hasFlags()) {
                J(protoBuf$TypeAlias.getFlags());
            }
            if (protoBuf$TypeAlias.hasName()) {
                K(protoBuf$TypeAlias.getName());
            }
            if (!protoBuf$TypeAlias.typeParameter_.isEmpty()) {
                if (this.f15304g.isEmpty()) {
                    this.f15304g = protoBuf$TypeAlias.typeParameter_;
                    this.f15301d &= -5;
                } else {
                    s();
                    this.f15304g.addAll(protoBuf$TypeAlias.typeParameter_);
                }
            }
            if (protoBuf$TypeAlias.hasUnderlyingType()) {
                H(protoBuf$TypeAlias.getUnderlyingType());
            }
            if (protoBuf$TypeAlias.hasUnderlyingTypeId()) {
                L(protoBuf$TypeAlias.getUnderlyingTypeId());
            }
            if (protoBuf$TypeAlias.hasExpandedType()) {
                E(protoBuf$TypeAlias.getExpandedType());
            }
            if (protoBuf$TypeAlias.hasExpandedTypeId()) {
                I(protoBuf$TypeAlias.getExpandedTypeId());
            }
            if (!protoBuf$TypeAlias.annotation_.isEmpty()) {
                if (this.l.isEmpty()) {
                    this.l = protoBuf$TypeAlias.annotation_;
                    this.f15301d &= -129;
                } else {
                    r();
                    this.l.addAll(protoBuf$TypeAlias.annotation_);
                }
            }
            if (!protoBuf$TypeAlias.versionRequirement_.isEmpty()) {
                if (this.m.isEmpty()) {
                    this.m = protoBuf$TypeAlias.versionRequirement_;
                    this.f15301d &= -257;
                } else {
                    t();
                    this.m.addAll(protoBuf$TypeAlias.versionRequirement_);
                }
            }
            l(protoBuf$TypeAlias);
            g(e().b(protoBuf$TypeAlias.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        public b G(e eVar, f fVar) throws Throwable {
            ProtoBuf$TypeAlias protoBuf$TypeAlias = null;
            try {
                try {
                    ProtoBuf$TypeAlias protoBuf$TypeAliasC = ProtoBuf$TypeAlias.PARSER.c(eVar, fVar);
                    if (protoBuf$TypeAliasC != null) {
                        F(protoBuf$TypeAliasC);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$TypeAlias protoBuf$TypeAlias2 = (ProtoBuf$TypeAlias) e2.getUnfinishedMessage();
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$TypeAlias = protoBuf$TypeAlias2;
                        if (protoBuf$TypeAlias != null) {
                            F(protoBuf$TypeAlias);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$TypeAlias != null) {
                    F(protoBuf$TypeAlias);
                }
                throw th;
            }
        }

        public b H(ProtoBuf$Type protoBuf$Type) {
            if ((this.f15301d & 8) != 8 || this.f15305h == ProtoBuf$Type.getDefaultInstance()) {
                this.f15305h = protoBuf$Type;
            } else {
                this.f15305h = ProtoBuf$Type.newBuilder(this.f15305h).f(protoBuf$Type).o();
            }
            this.f15301d |= 8;
            return this;
        }

        public b I(int i) {
            this.f15301d |= 64;
            this.k = i;
            return this;
        }

        public b J(int i) {
            this.f15301d |= 1;
            this.f15302e = i;
            return this;
        }

        public b K(int i) {
            this.f15301d |= 2;
            this.f15303f = i;
            return this;
        }

        public b L(int i) {
            this.f15301d |= 16;
            this.i = i;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a, kotlin.reflect.jvm.internal.impl.protobuf.n.a
        public /* bridge */ /* synthetic */ n.a a(e eVar, f fVar) throws Throwable {
            G(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a
        /* JADX INFO: renamed from: b */
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a a(e eVar, f fVar) throws Throwable {
            G(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        public /* bridge */ /* synthetic */ GeneratedMessageLite.b f(GeneratedMessageLite generatedMessageLite) {
            F((ProtoBuf$TypeAlias) generatedMessageLite);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
        public final boolean isInitialized() {
            if (!B()) {
                return false;
            }
            for (int i = 0; i < y(); i++) {
                if (!x(i).isInitialized()) {
                    return false;
                }
            }
            if (C() && !z().isInitialized()) {
                return false;
            }
            if (A() && !w().isInitialized()) {
                return false;
            }
            for (int i2 = 0; i2 < v(); i2++) {
                if (!u(i2).isInitialized()) {
                    return false;
                }
            }
            return k();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$TypeAlias build() {
            ProtoBuf$TypeAlias protoBuf$TypeAliasO = o();
            if (protoBuf$TypeAliasO.isInitialized()) {
                return protoBuf$TypeAliasO;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(protoBuf$TypeAliasO);
        }

        public ProtoBuf$TypeAlias o() {
            ProtoBuf$TypeAlias protoBuf$TypeAlias = new ProtoBuf$TypeAlias(this);
            int i = this.f15301d;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$TypeAlias.flags_ = this.f15302e;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$TypeAlias.name_ = this.f15303f;
            if ((this.f15301d & 4) == 4) {
                this.f15304g = Collections.unmodifiableList(this.f15304g);
                this.f15301d &= -5;
            }
            protoBuf$TypeAlias.typeParameter_ = this.f15304g;
            if ((i & 8) == 8) {
                i2 |= 4;
            }
            protoBuf$TypeAlias.underlyingType_ = this.f15305h;
            if ((i & 16) == 16) {
                i2 |= 8;
            }
            protoBuf$TypeAlias.underlyingTypeId_ = this.i;
            if ((i & 32) == 32) {
                i2 |= 16;
            }
            protoBuf$TypeAlias.expandedType_ = this.j;
            if ((i & 64) == 64) {
                i2 |= 32;
            }
            protoBuf$TypeAlias.expandedTypeId_ = this.k;
            if ((this.f15301d & 128) == 128) {
                this.l = Collections.unmodifiableList(this.l);
                this.f15301d &= -129;
            }
            protoBuf$TypeAlias.annotation_ = this.l;
            if ((this.f15301d & 256) == 256) {
                this.m = Collections.unmodifiableList(this.m);
                this.f15301d &= -257;
            }
            protoBuf$TypeAlias.versionRequirement_ = this.m;
            protoBuf$TypeAlias.bitField0_ = i2;
            return protoBuf$TypeAlias;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public b d() {
            b bVarQ = q();
            bVarQ.F(o());
            return bVarQ;
        }

        public ProtoBuf$Annotation u(int i) {
            return this.l.get(i);
        }

        public int v() {
            return this.l.size();
        }

        public ProtoBuf$Type w() {
            return this.j;
        }

        public ProtoBuf$TypeParameter x(int i) {
            return this.f15304g.get(i);
        }

        public int y() {
            return this.f15304g.size();
        }

        public ProtoBuf$Type z() {
            return this.f15305h;
        }
    }

    static {
        ProtoBuf$TypeAlias protoBuf$TypeAlias = new ProtoBuf$TypeAlias(true);
        defaultInstance = protoBuf$TypeAlias;
        protoBuf$TypeAlias.initFields();
    }

    public static ProtoBuf$TypeAlias getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.flags_ = 6;
        this.name_ = 0;
        this.typeParameter_ = Collections.emptyList();
        this.underlyingType_ = ProtoBuf$Type.getDefaultInstance();
        this.underlyingTypeId_ = 0;
        this.expandedType_ = ProtoBuf$Type.getDefaultInstance();
        this.expandedTypeId_ = 0;
        this.annotation_ = Collections.emptyList();
        this.versionRequirement_ = Collections.emptyList();
    }

    public static b newBuilder() {
        return b.q();
    }

    public static ProtoBuf$TypeAlias parseDelimitedFrom(InputStream inputStream, f fVar) throws IOException {
        return PARSER.d(inputStream, fVar);
    }

    public ProtoBuf$Annotation getAnnotation(int i) {
        return this.annotation_.get(i);
    }

    public int getAnnotationCount() {
        return this.annotation_.size();
    }

    public List<ProtoBuf$Annotation> getAnnotationList() {
        return this.annotation_;
    }

    public ProtoBuf$Type getExpandedType() {
        return this.expandedType_;
    }

    public int getExpandedTypeId() {
        return this.expandedTypeId_;
    }

    public int getFlags() {
        return this.flags_;
    }

    public int getName() {
        return this.name_;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public p<ProtoBuf$TypeAlias> getParserForType() {
        return PARSER;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iO = (this.bitField0_ & 1) == 1 ? CodedOutputStream.o(1, this.flags_) + 0 : 0;
        if ((this.bitField0_ & 2) == 2) {
            iO += CodedOutputStream.o(2, this.name_);
        }
        for (int i2 = 0; i2 < this.typeParameter_.size(); i2++) {
            iO += CodedOutputStream.s(3, this.typeParameter_.get(i2));
        }
        if ((this.bitField0_ & 4) == 4) {
            iO += CodedOutputStream.s(4, this.underlyingType_);
        }
        if ((this.bitField0_ & 8) == 8) {
            iO += CodedOutputStream.o(5, this.underlyingTypeId_);
        }
        if ((this.bitField0_ & 16) == 16) {
            iO += CodedOutputStream.s(6, this.expandedType_);
        }
        if ((this.bitField0_ & 32) == 32) {
            iO += CodedOutputStream.o(7, this.expandedTypeId_);
        }
        for (int i3 = 0; i3 < this.annotation_.size(); i3++) {
            iO += CodedOutputStream.s(8, this.annotation_.get(i3));
        }
        int iP = 0;
        for (int i4 = 0; i4 < this.versionRequirement_.size(); i4++) {
            iP += CodedOutputStream.p(this.versionRequirement_.get(i4).intValue());
        }
        int size = iO + iP + (getVersionRequirementList().size() * 2) + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = size;
        return size;
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

    public ProtoBuf$Type getUnderlyingType() {
        return this.underlyingType_;
    }

    public int getUnderlyingTypeId() {
        return this.underlyingTypeId_;
    }

    public List<Integer> getVersionRequirementList() {
        return this.versionRequirement_;
    }

    public boolean hasExpandedType() {
        return (this.bitField0_ & 16) == 16;
    }

    public boolean hasExpandedTypeId() {
        return (this.bitField0_ & 32) == 32;
    }

    public boolean hasFlags() {
        return (this.bitField0_ & 1) == 1;
    }

    public boolean hasName() {
        return (this.bitField0_ & 2) == 2;
    }

    public boolean hasUnderlyingType() {
        return (this.bitField0_ & 4) == 4;
    }

    public boolean hasUnderlyingTypeId() {
        return (this.bitField0_ & 8) == 8;
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
        if (!hasName()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i = 0; i < getTypeParameterCount(); i++) {
            if (!getTypeParameter(i).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if (hasUnderlyingType() && !getUnderlyingType().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if (hasExpandedType() && !getExpandedType().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i2 = 0; i2 < getAnnotationCount(); i2++) {
            if (!getAnnotation(i2).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
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
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.a0(2, this.name_);
        }
        for (int i = 0; i < this.typeParameter_.size(); i++) {
            codedOutputStream.d0(3, this.typeParameter_.get(i));
        }
        if ((this.bitField0_ & 4) == 4) {
            codedOutputStream.d0(4, this.underlyingType_);
        }
        if ((this.bitField0_ & 8) == 8) {
            codedOutputStream.a0(5, this.underlyingTypeId_);
        }
        if ((this.bitField0_ & 16) == 16) {
            codedOutputStream.d0(6, this.expandedType_);
        }
        if ((this.bitField0_ & 32) == 32) {
            codedOutputStream.a0(7, this.expandedTypeId_);
        }
        for (int i2 = 0; i2 < this.annotation_.size(); i2++) {
            codedOutputStream.d0(8, this.annotation_.get(i2));
        }
        for (int i3 = 0; i3 < this.versionRequirement_.size(); i3++) {
            codedOutputStream.a0(31, this.versionRequirement_.get(i3).intValue());
        }
        aVarNewExtensionWriter.a(200, codedOutputStream);
        codedOutputStream.i0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$TypeAlias protoBuf$TypeAlias) {
        b bVarNewBuilder = newBuilder();
        bVarNewBuilder.F(protoBuf$TypeAlias);
        return bVarNewBuilder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
    public ProtoBuf$TypeAlias getDefaultInstanceForType() {
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

    private ProtoBuf$TypeAlias(GeneratedMessageLite.c<ProtoBuf$TypeAlias, ?> cVar) {
        super(cVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = cVar.e();
    }

    private ProtoBuf$TypeAlias(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = d.f15412a;
    }

    private ProtoBuf$TypeAlias(e eVar, f fVar) throws InvalidProtocolBufferException {
        ProtoBuf$Type.b builder;
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
                    try {
                        int iK = eVar.K();
                        switch (iK) {
                            case 0:
                                break;
                            case 8:
                                this.bitField0_ |= 1;
                                this.flags_ = eVar.s();
                                continue;
                            case 16:
                                this.bitField0_ |= 2;
                                this.name_ = eVar.s();
                                continue;
                            case 26:
                                if ((i & 4) != 4) {
                                    this.typeParameter_ = new ArrayList();
                                    i |= 4;
                                }
                                this.typeParameter_.add((ProtoBuf$TypeParameter) eVar.u(ProtoBuf$TypeParameter.PARSER, fVar));
                                continue;
                            case 34:
                                builder = (this.bitField0_ & 4) == 4 ? this.underlyingType_.toBuilder() : null;
                                ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) eVar.u(ProtoBuf$Type.PARSER, fVar);
                                this.underlyingType_ = protoBuf$Type;
                                if (builder != null) {
                                    builder.f(protoBuf$Type);
                                    this.underlyingType_ = builder.o();
                                }
                                this.bitField0_ |= 4;
                                continue;
                            case 40:
                                this.bitField0_ |= 8;
                                this.underlyingTypeId_ = eVar.s();
                                continue;
                            case 50:
                                builder = (this.bitField0_ & 16) == 16 ? this.expandedType_.toBuilder() : null;
                                ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) eVar.u(ProtoBuf$Type.PARSER, fVar);
                                this.expandedType_ = protoBuf$Type2;
                                if (builder != null) {
                                    builder.f(protoBuf$Type2);
                                    this.expandedType_ = builder.o();
                                }
                                this.bitField0_ |= 16;
                                continue;
                            case 56:
                                this.bitField0_ |= 32;
                                this.expandedTypeId_ = eVar.s();
                                continue;
                            case 66:
                                if ((i & 128) != 128) {
                                    this.annotation_ = new ArrayList();
                                    i |= 128;
                                }
                                this.annotation_.add((ProtoBuf$Annotation) eVar.u(ProtoBuf$Annotation.PARSER, fVar));
                                continue;
                            case 248:
                                if ((i & 256) != 256) {
                                    this.versionRequirement_ = new ArrayList();
                                    i |= 256;
                                }
                                this.versionRequirement_.add(Integer.valueOf(eVar.s()));
                                continue;
                            case 250:
                                int iJ = eVar.j(eVar.A());
                                if ((i & 256) != 256 && eVar.e() > 0) {
                                    this.versionRequirement_ = new ArrayList();
                                    i |= 256;
                                }
                                while (eVar.e() > 0) {
                                    this.versionRequirement_.add(Integer.valueOf(eVar.s()));
                                }
                                eVar.i(iJ);
                                continue;
                            default:
                                if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                                    break;
                                }
                                break;
                        }
                        z = true;
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } catch (InvalidProtocolBufferException e3) {
                    throw e3.setUnfinishedMessage(this);
                }
            } catch (Throwable th) {
                if ((i & 4) == 4) {
                    this.typeParameter_ = Collections.unmodifiableList(this.typeParameter_);
                }
                if ((i & 128) == 128) {
                    this.annotation_ = Collections.unmodifiableList(this.annotation_);
                }
                if ((i & 256) == 256) {
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
        if ((i & 4) == 4) {
            this.typeParameter_ = Collections.unmodifiableList(this.typeParameter_);
        }
        if ((i & 128) == 128) {
            this.annotation_ = Collections.unmodifiableList(this.annotation_);
        }
        if ((i & 256) == 256) {
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
