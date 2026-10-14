package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
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
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes6.dex */
public final class ProtoBuf$Property extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$Property> implements Object {
    public static p<ProtoBuf$Property> PARSER = new a();
    private static final ProtoBuf$Property defaultInstance;
    private int bitField0_;
    private int flags_;
    private int getterFlags_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private int name_;
    private int oldFlags_;
    private int receiverTypeId_;
    private ProtoBuf$Type receiverType_;
    private int returnTypeId_;
    private ProtoBuf$Type returnType_;
    private int setterFlags_;
    private ProtoBuf$ValueParameter setterValueParameter_;
    private List<ProtoBuf$TypeParameter> typeParameter_;
    private final d unknownFields;
    private List<Integer> versionRequirement_;

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$Property> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Property c(e eVar, f fVar) throws InvalidProtocolBufferException {
            return new ProtoBuf$Property(eVar, fVar);
        }
    }

    public static final class b extends GeneratedMessageLite.c<ProtoBuf$Property, b> implements Object {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f15287d;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f15290g;
        private int i;
        private int l;
        private int n;
        private int o;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f15288e = Videoio.CAP_PROP_XI_LENS_FEATURE;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f15289f = 2054;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private ProtoBuf$Type f15291h = ProtoBuf$Type.getDefaultInstance();
        private List<ProtoBuf$TypeParameter> j = Collections.emptyList();
        private ProtoBuf$Type k = ProtoBuf$Type.getDefaultInstance();
        private ProtoBuf$ValueParameter m = ProtoBuf$ValueParameter.getDefaultInstance();
        private List<Integer> p = Collections.emptyList();

        private b() {
            C();
        }

        private void C() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b q() {
            return new b();
        }

        private void r() {
            if ((this.f15287d & 32) != 32) {
                this.j = new ArrayList(this.j);
                this.f15287d |= 32;
            }
        }

        private void s() {
            if ((this.f15287d & 2048) != 2048) {
                this.p = new ArrayList(this.p);
                this.f15287d |= 2048;
            }
        }

        public boolean A() {
            return (this.f15287d & 8) == 8;
        }

        public boolean B() {
            return (this.f15287d & 256) == 256;
        }

        public b D(ProtoBuf$Property protoBuf$Property) {
            if (protoBuf$Property == ProtoBuf$Property.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$Property.hasFlags()) {
                I(protoBuf$Property.getFlags());
            }
            if (protoBuf$Property.hasOldFlags()) {
                L(protoBuf$Property.getOldFlags());
            }
            if (protoBuf$Property.hasName()) {
                K(protoBuf$Property.getName());
            }
            if (protoBuf$Property.hasReturnType()) {
                G(protoBuf$Property.getReturnType());
            }
            if (protoBuf$Property.hasReturnTypeId()) {
                N(protoBuf$Property.getReturnTypeId());
            }
            if (!protoBuf$Property.typeParameter_.isEmpty()) {
                if (this.j.isEmpty()) {
                    this.j = protoBuf$Property.typeParameter_;
                    this.f15287d &= -33;
                } else {
                    r();
                    this.j.addAll(protoBuf$Property.typeParameter_);
                }
            }
            if (protoBuf$Property.hasReceiverType()) {
                F(protoBuf$Property.getReceiverType());
            }
            if (protoBuf$Property.hasReceiverTypeId()) {
                M(protoBuf$Property.getReceiverTypeId());
            }
            if (protoBuf$Property.hasSetterValueParameter()) {
                H(protoBuf$Property.getSetterValueParameter());
            }
            if (protoBuf$Property.hasGetterFlags()) {
                J(protoBuf$Property.getGetterFlags());
            }
            if (protoBuf$Property.hasSetterFlags()) {
                O(protoBuf$Property.getSetterFlags());
            }
            if (!protoBuf$Property.versionRequirement_.isEmpty()) {
                if (this.p.isEmpty()) {
                    this.p = protoBuf$Property.versionRequirement_;
                    this.f15287d &= -2049;
                } else {
                    s();
                    this.p.addAll(protoBuf$Property.versionRequirement_);
                }
            }
            l(protoBuf$Property);
            g(e().b(protoBuf$Property.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        public b E(e eVar, f fVar) throws Throwable {
            ProtoBuf$Property protoBuf$Property = null;
            try {
                try {
                    ProtoBuf$Property protoBuf$PropertyC = ProtoBuf$Property.PARSER.c(eVar, fVar);
                    if (protoBuf$PropertyC != null) {
                        D(protoBuf$PropertyC);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$Property protoBuf$Property2 = (ProtoBuf$Property) e2.getUnfinishedMessage();
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Property = protoBuf$Property2;
                        if (protoBuf$Property != null) {
                            D(protoBuf$Property);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Property != null) {
                    D(protoBuf$Property);
                }
                throw th;
            }
        }

        public b F(ProtoBuf$Type protoBuf$Type) {
            if ((this.f15287d & 64) != 64 || this.k == ProtoBuf$Type.getDefaultInstance()) {
                this.k = protoBuf$Type;
            } else {
                this.k = ProtoBuf$Type.newBuilder(this.k).f(protoBuf$Type).o();
            }
            this.f15287d |= 64;
            return this;
        }

        public b G(ProtoBuf$Type protoBuf$Type) {
            if ((this.f15287d & 8) != 8 || this.f15291h == ProtoBuf$Type.getDefaultInstance()) {
                this.f15291h = protoBuf$Type;
            } else {
                this.f15291h = ProtoBuf$Type.newBuilder(this.f15291h).f(protoBuf$Type).o();
            }
            this.f15287d |= 8;
            return this;
        }

        public b H(ProtoBuf$ValueParameter protoBuf$ValueParameter) {
            if ((this.f15287d & 256) != 256 || this.m == ProtoBuf$ValueParameter.getDefaultInstance()) {
                this.m = protoBuf$ValueParameter;
            } else {
                ProtoBuf$ValueParameter.b bVarNewBuilder = ProtoBuf$ValueParameter.newBuilder(this.m);
                bVarNewBuilder.x(protoBuf$ValueParameter);
                this.m = bVarNewBuilder.o();
            }
            this.f15287d |= 256;
            return this;
        }

        public b I(int i) {
            this.f15287d |= 1;
            this.f15288e = i;
            return this;
        }

        public b J(int i) {
            this.f15287d |= 512;
            this.n = i;
            return this;
        }

        public b K(int i) {
            this.f15287d |= 4;
            this.f15290g = i;
            return this;
        }

        public b L(int i) {
            this.f15287d |= 2;
            this.f15289f = i;
            return this;
        }

        public b M(int i) {
            this.f15287d |= 128;
            this.l = i;
            return this;
        }

        public b N(int i) {
            this.f15287d |= 16;
            this.i = i;
            return this;
        }

        public b O(int i) {
            this.f15287d |= 1024;
            this.o = i;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a, kotlin.reflect.jvm.internal.impl.protobuf.n.a
        public /* bridge */ /* synthetic */ n.a a(e eVar, f fVar) throws Throwable {
            E(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a
        /* JADX INFO: renamed from: b */
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a a(e eVar, f fVar) throws Throwable {
            E(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        public /* bridge */ /* synthetic */ GeneratedMessageLite.b f(GeneratedMessageLite generatedMessageLite) {
            D((ProtoBuf$Property) generatedMessageLite);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
        public final boolean isInitialized() {
            if (!y()) {
                return false;
            }
            if (A() && !u().isInitialized()) {
                return false;
            }
            for (int i = 0; i < x(); i++) {
                if (!w(i).isInitialized()) {
                    return false;
                }
            }
            if (!z() || t().isInitialized()) {
                return (!B() || v().isInitialized()) && k();
            }
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Property build() {
            ProtoBuf$Property protoBuf$PropertyO = o();
            if (protoBuf$PropertyO.isInitialized()) {
                return protoBuf$PropertyO;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(protoBuf$PropertyO);
        }

        public ProtoBuf$Property o() {
            ProtoBuf$Property protoBuf$Property = new ProtoBuf$Property(this);
            int i = this.f15287d;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$Property.flags_ = this.f15288e;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$Property.oldFlags_ = this.f15289f;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$Property.name_ = this.f15290g;
            if ((i & 8) == 8) {
                i2 |= 8;
            }
            protoBuf$Property.returnType_ = this.f15291h;
            if ((i & 16) == 16) {
                i2 |= 16;
            }
            protoBuf$Property.returnTypeId_ = this.i;
            if ((this.f15287d & 32) == 32) {
                this.j = Collections.unmodifiableList(this.j);
                this.f15287d &= -33;
            }
            protoBuf$Property.typeParameter_ = this.j;
            if ((i & 64) == 64) {
                i2 |= 32;
            }
            protoBuf$Property.receiverType_ = this.k;
            if ((i & 128) == 128) {
                i2 |= 64;
            }
            protoBuf$Property.receiverTypeId_ = this.l;
            if ((i & 256) == 256) {
                i2 |= 128;
            }
            protoBuf$Property.setterValueParameter_ = this.m;
            if ((i & 512) == 512) {
                i2 |= 256;
            }
            protoBuf$Property.getterFlags_ = this.n;
            if ((i & 1024) == 1024) {
                i2 |= 512;
            }
            protoBuf$Property.setterFlags_ = this.o;
            if ((this.f15287d & 2048) == 2048) {
                this.p = Collections.unmodifiableList(this.p);
                this.f15287d &= -2049;
            }
            protoBuf$Property.versionRequirement_ = this.p;
            protoBuf$Property.bitField0_ = i2;
            return protoBuf$Property;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public b d() {
            b bVarQ = q();
            bVarQ.D(o());
            return bVarQ;
        }

        public ProtoBuf$Type t() {
            return this.k;
        }

        public ProtoBuf$Type u() {
            return this.f15291h;
        }

        public ProtoBuf$ValueParameter v() {
            return this.m;
        }

        public ProtoBuf$TypeParameter w(int i) {
            return this.j.get(i);
        }

        public int x() {
            return this.j.size();
        }

        public boolean y() {
            return (this.f15287d & 4) == 4;
        }

        public boolean z() {
            return (this.f15287d & 64) == 64;
        }
    }

    static {
        ProtoBuf$Property protoBuf$Property = new ProtoBuf$Property(true);
        defaultInstance = protoBuf$Property;
        protoBuf$Property.initFields();
    }

    public static ProtoBuf$Property getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.flags_ = Videoio.CAP_PROP_XI_LENS_FEATURE;
        this.oldFlags_ = 2054;
        this.name_ = 0;
        this.returnType_ = ProtoBuf$Type.getDefaultInstance();
        this.returnTypeId_ = 0;
        this.typeParameter_ = Collections.emptyList();
        this.receiverType_ = ProtoBuf$Type.getDefaultInstance();
        this.receiverTypeId_ = 0;
        this.setterValueParameter_ = ProtoBuf$ValueParameter.getDefaultInstance();
        this.getterFlags_ = 0;
        this.setterFlags_ = 0;
        this.versionRequirement_ = Collections.emptyList();
    }

    public static b newBuilder() {
        return b.q();
    }

    public int getFlags() {
        return this.flags_;
    }

    public int getGetterFlags() {
        return this.getterFlags_;
    }

    public int getName() {
        return this.name_;
    }

    public int getOldFlags() {
        return this.oldFlags_;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public p<ProtoBuf$Property> getParserForType() {
        return PARSER;
    }

    public ProtoBuf$Type getReceiverType() {
        return this.receiverType_;
    }

    public int getReceiverTypeId() {
        return this.receiverTypeId_;
    }

    public ProtoBuf$Type getReturnType() {
        return this.returnType_;
    }

    public int getReturnTypeId() {
        return this.returnTypeId_;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iO = (this.bitField0_ & 2) == 2 ? CodedOutputStream.o(1, this.oldFlags_) + 0 : 0;
        if ((this.bitField0_ & 4) == 4) {
            iO += CodedOutputStream.o(2, this.name_);
        }
        if ((this.bitField0_ & 8) == 8) {
            iO += CodedOutputStream.s(3, this.returnType_);
        }
        for (int i2 = 0; i2 < this.typeParameter_.size(); i2++) {
            iO += CodedOutputStream.s(4, this.typeParameter_.get(i2));
        }
        if ((this.bitField0_ & 32) == 32) {
            iO += CodedOutputStream.s(5, this.receiverType_);
        }
        if ((this.bitField0_ & 128) == 128) {
            iO += CodedOutputStream.s(6, this.setterValueParameter_);
        }
        if ((this.bitField0_ & 256) == 256) {
            iO += CodedOutputStream.o(7, this.getterFlags_);
        }
        if ((this.bitField0_ & 512) == 512) {
            iO += CodedOutputStream.o(8, this.setterFlags_);
        }
        if ((this.bitField0_ & 16) == 16) {
            iO += CodedOutputStream.o(9, this.returnTypeId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            iO += CodedOutputStream.o(10, this.receiverTypeId_);
        }
        if ((this.bitField0_ & 1) == 1) {
            iO += CodedOutputStream.o(11, this.flags_);
        }
        int iP = 0;
        for (int i3 = 0; i3 < this.versionRequirement_.size(); i3++) {
            iP += CodedOutputStream.p(this.versionRequirement_.get(i3).intValue());
        }
        int size = iO + iP + (getVersionRequirementList().size() * 2) + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = size;
        return size;
    }

    public int getSetterFlags() {
        return this.setterFlags_;
    }

    public ProtoBuf$ValueParameter getSetterValueParameter() {
        return this.setterValueParameter_;
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

    public List<Integer> getVersionRequirementList() {
        return this.versionRequirement_;
    }

    public boolean hasFlags() {
        return (this.bitField0_ & 1) == 1;
    }

    public boolean hasGetterFlags() {
        return (this.bitField0_ & 256) == 256;
    }

    public boolean hasName() {
        return (this.bitField0_ & 4) == 4;
    }

    public boolean hasOldFlags() {
        return (this.bitField0_ & 2) == 2;
    }

    public boolean hasReceiverType() {
        return (this.bitField0_ & 32) == 32;
    }

    public boolean hasReceiverTypeId() {
        return (this.bitField0_ & 64) == 64;
    }

    public boolean hasReturnType() {
        return (this.bitField0_ & 8) == 8;
    }

    public boolean hasReturnTypeId() {
        return (this.bitField0_ & 16) == 16;
    }

    public boolean hasSetterFlags() {
        return (this.bitField0_ & 512) == 512;
    }

    public boolean hasSetterValueParameter() {
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
        if (!hasName()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if (hasReturnType() && !getReturnType().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i = 0; i < getTypeParameterCount(); i++) {
            if (!getTypeParameter(i).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if (hasReceiverType() && !getReceiverType().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if (hasSetterValueParameter() && !getSetterValueParameter().isInitialized()) {
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
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.a0(1, this.oldFlags_);
        }
        if ((this.bitField0_ & 4) == 4) {
            codedOutputStream.a0(2, this.name_);
        }
        if ((this.bitField0_ & 8) == 8) {
            codedOutputStream.d0(3, this.returnType_);
        }
        for (int i = 0; i < this.typeParameter_.size(); i++) {
            codedOutputStream.d0(4, this.typeParameter_.get(i));
        }
        if ((this.bitField0_ & 32) == 32) {
            codedOutputStream.d0(5, this.receiverType_);
        }
        if ((this.bitField0_ & 128) == 128) {
            codedOutputStream.d0(6, this.setterValueParameter_);
        }
        if ((this.bitField0_ & 256) == 256) {
            codedOutputStream.a0(7, this.getterFlags_);
        }
        if ((this.bitField0_ & 512) == 512) {
            codedOutputStream.a0(8, this.setterFlags_);
        }
        if ((this.bitField0_ & 16) == 16) {
            codedOutputStream.a0(9, this.returnTypeId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            codedOutputStream.a0(10, this.receiverTypeId_);
        }
        if ((this.bitField0_ & 1) == 1) {
            codedOutputStream.a0(11, this.flags_);
        }
        for (int i2 = 0; i2 < this.versionRequirement_.size(); i2++) {
            codedOutputStream.a0(31, this.versionRequirement_.get(i2).intValue());
        }
        aVarNewExtensionWriter.a(Videoio.CAP_PROP_IMAGES_LAST, codedOutputStream);
        codedOutputStream.i0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$Property protoBuf$Property) {
        b bVarNewBuilder = newBuilder();
        bVarNewBuilder.D(protoBuf$Property);
        return bVarNewBuilder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
    public ProtoBuf$Property getDefaultInstanceForType() {
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

    private ProtoBuf$Property(GeneratedMessageLite.c<ProtoBuf$Property, ?> cVar) {
        super(cVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = cVar.e();
    }

    private ProtoBuf$Property(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = d.f15412a;
    }

    private ProtoBuf$Property(e eVar, f fVar) throws InvalidProtocolBufferException {
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
                                this.bitField0_ |= 2;
                                this.oldFlags_ = eVar.s();
                                continue;
                            case 16:
                                this.bitField0_ |= 4;
                                this.name_ = eVar.s();
                                continue;
                            case 26:
                                ProtoBuf$Type.b builder = (this.bitField0_ & 8) == 8 ? this.returnType_.toBuilder() : null;
                                ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) eVar.u(ProtoBuf$Type.PARSER, fVar);
                                this.returnType_ = protoBuf$Type;
                                if (builder != null) {
                                    builder.f(protoBuf$Type);
                                    this.returnType_ = builder.o();
                                }
                                this.bitField0_ |= 8;
                                continue;
                            case 34:
                                if ((i & 32) != 32) {
                                    this.typeParameter_ = new ArrayList();
                                    i |= 32;
                                }
                                this.typeParameter_.add((ProtoBuf$TypeParameter) eVar.u(ProtoBuf$TypeParameter.PARSER, fVar));
                                continue;
                            case 42:
                                ProtoBuf$Type.b builder2 = (this.bitField0_ & 32) == 32 ? this.receiverType_.toBuilder() : null;
                                ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) eVar.u(ProtoBuf$Type.PARSER, fVar);
                                this.receiverType_ = protoBuf$Type2;
                                if (builder2 != null) {
                                    builder2.f(protoBuf$Type2);
                                    this.receiverType_ = builder2.o();
                                }
                                this.bitField0_ |= 32;
                                continue;
                            case 50:
                                ProtoBuf$ValueParameter.b builder3 = (this.bitField0_ & 128) == 128 ? this.setterValueParameter_.toBuilder() : null;
                                ProtoBuf$ValueParameter protoBuf$ValueParameter = (ProtoBuf$ValueParameter) eVar.u(ProtoBuf$ValueParameter.PARSER, fVar);
                                this.setterValueParameter_ = protoBuf$ValueParameter;
                                if (builder3 != null) {
                                    builder3.x(protoBuf$ValueParameter);
                                    this.setterValueParameter_ = builder3.o();
                                }
                                this.bitField0_ |= 128;
                                continue;
                            case 56:
                                this.bitField0_ |= 256;
                                this.getterFlags_ = eVar.s();
                                continue;
                            case 64:
                                this.bitField0_ |= 512;
                                this.setterFlags_ = eVar.s();
                                continue;
                            case 72:
                                this.bitField0_ |= 16;
                                this.returnTypeId_ = eVar.s();
                                continue;
                            case 80:
                                this.bitField0_ |= 64;
                                this.receiverTypeId_ = eVar.s();
                                continue;
                            case 88:
                                this.bitField0_ |= 1;
                                this.flags_ = eVar.s();
                                continue;
                            case 248:
                                if ((i & 2048) != 2048) {
                                    this.versionRequirement_ = new ArrayList();
                                    i |= 2048;
                                }
                                this.versionRequirement_.add(Integer.valueOf(eVar.s()));
                                continue;
                            case 250:
                                int iJ = eVar.j(eVar.A());
                                if ((i & 2048) != 2048 && eVar.e() > 0) {
                                    this.versionRequirement_ = new ArrayList();
                                    i |= 2048;
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
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } catch (IOException e3) {
                    throw new InvalidProtocolBufferException(e3.getMessage()).setUnfinishedMessage(this);
                }
            } catch (Throwable th) {
                if ((i & 32) == 32) {
                    this.typeParameter_ = Collections.unmodifiableList(this.typeParameter_);
                }
                if ((i & 2048) == 2048) {
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
            this.typeParameter_ = Collections.unmodifiableList(this.typeParameter_);
        }
        if ((i & 2048) == 2048) {
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
