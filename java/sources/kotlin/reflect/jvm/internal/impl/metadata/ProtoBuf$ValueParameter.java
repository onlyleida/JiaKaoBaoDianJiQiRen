package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.d;
import kotlin.reflect.jvm.internal.impl.protobuf.e;
import kotlin.reflect.jvm.internal.impl.protobuf.f;
import kotlin.reflect.jvm.internal.impl.protobuf.n;
import kotlin.reflect.jvm.internal.impl.protobuf.p;

/* JADX INFO: loaded from: classes6.dex */
public final class ProtoBuf$ValueParameter extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$ValueParameter> implements Object {
    public static p<ProtoBuf$ValueParameter> PARSER = new a();
    private static final ProtoBuf$ValueParameter defaultInstance;
    private int bitField0_;
    private int flags_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private int name_;
    private int typeId_;
    private ProtoBuf$Type type_;
    private final d unknownFields;
    private int varargElementTypeId_;
    private ProtoBuf$Type varargElementType_;

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$ValueParameter> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$ValueParameter c(e eVar, f fVar) throws InvalidProtocolBufferException {
            return new ProtoBuf$ValueParameter(eVar, fVar);
        }
    }

    public static final class b extends GeneratedMessageLite.c<ProtoBuf$ValueParameter, b> implements Object {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f15312d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f15313e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f15314f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f15316h;
        private int j;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private ProtoBuf$Type f15315g = ProtoBuf$Type.getDefaultInstance();
        private ProtoBuf$Type i = ProtoBuf$Type.getDefaultInstance();

        private b() {
            w();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b q() {
            return new b();
        }

        private void w() {
        }

        public b A(ProtoBuf$Type protoBuf$Type) {
            if ((this.f15312d & 16) != 16 || this.i == ProtoBuf$Type.getDefaultInstance()) {
                this.i = protoBuf$Type;
            } else {
                this.i = ProtoBuf$Type.newBuilder(this.i).f(protoBuf$Type).o();
            }
            this.f15312d |= 16;
            return this;
        }

        public b B(int i) {
            this.f15312d |= 1;
            this.f15313e = i;
            return this;
        }

        public b C(int i) {
            this.f15312d |= 2;
            this.f15314f = i;
            return this;
        }

        public b D(int i) {
            this.f15312d |= 8;
            this.f15316h = i;
            return this;
        }

        public b E(int i) {
            this.f15312d |= 32;
            this.j = i;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a, kotlin.reflect.jvm.internal.impl.protobuf.n.a
        public /* bridge */ /* synthetic */ n.a a(e eVar, f fVar) throws Throwable {
            y(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a
        /* JADX INFO: renamed from: b */
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a a(e eVar, f fVar) throws Throwable {
            y(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        public /* bridge */ /* synthetic */ GeneratedMessageLite.b f(GeneratedMessageLite generatedMessageLite) {
            x((ProtoBuf$ValueParameter) generatedMessageLite);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
        public final boolean isInitialized() {
            if (!t()) {
                return false;
            }
            if (!u() || r().isInitialized()) {
                return (!v() || s().isInitialized()) && k();
            }
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$ValueParameter build() {
            ProtoBuf$ValueParameter protoBuf$ValueParameterO = o();
            if (protoBuf$ValueParameterO.isInitialized()) {
                return protoBuf$ValueParameterO;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(protoBuf$ValueParameterO);
        }

        public ProtoBuf$ValueParameter o() {
            ProtoBuf$ValueParameter protoBuf$ValueParameter = new ProtoBuf$ValueParameter(this);
            int i = this.f15312d;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$ValueParameter.flags_ = this.f15313e;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$ValueParameter.name_ = this.f15314f;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$ValueParameter.type_ = this.f15315g;
            if ((i & 8) == 8) {
                i2 |= 8;
            }
            protoBuf$ValueParameter.typeId_ = this.f15316h;
            if ((i & 16) == 16) {
                i2 |= 16;
            }
            protoBuf$ValueParameter.varargElementType_ = this.i;
            if ((i & 32) == 32) {
                i2 |= 32;
            }
            protoBuf$ValueParameter.varargElementTypeId_ = this.j;
            protoBuf$ValueParameter.bitField0_ = i2;
            return protoBuf$ValueParameter;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public b d() {
            b bVarQ = q();
            bVarQ.x(o());
            return bVarQ;
        }

        public ProtoBuf$Type r() {
            return this.f15315g;
        }

        public ProtoBuf$Type s() {
            return this.i;
        }

        public boolean t() {
            return (this.f15312d & 2) == 2;
        }

        public boolean u() {
            return (this.f15312d & 4) == 4;
        }

        public boolean v() {
            return (this.f15312d & 16) == 16;
        }

        public b x(ProtoBuf$ValueParameter protoBuf$ValueParameter) {
            if (protoBuf$ValueParameter == ProtoBuf$ValueParameter.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$ValueParameter.hasFlags()) {
                B(protoBuf$ValueParameter.getFlags());
            }
            if (protoBuf$ValueParameter.hasName()) {
                C(protoBuf$ValueParameter.getName());
            }
            if (protoBuf$ValueParameter.hasType()) {
                z(protoBuf$ValueParameter.getType());
            }
            if (protoBuf$ValueParameter.hasTypeId()) {
                D(protoBuf$ValueParameter.getTypeId());
            }
            if (protoBuf$ValueParameter.hasVarargElementType()) {
                A(protoBuf$ValueParameter.getVarargElementType());
            }
            if (protoBuf$ValueParameter.hasVarargElementTypeId()) {
                E(protoBuf$ValueParameter.getVarargElementTypeId());
            }
            l(protoBuf$ValueParameter);
            g(e().b(protoBuf$ValueParameter.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        public b y(e eVar, f fVar) throws Throwable {
            ProtoBuf$ValueParameter protoBuf$ValueParameter = null;
            try {
                try {
                    ProtoBuf$ValueParameter protoBuf$ValueParameterC = ProtoBuf$ValueParameter.PARSER.c(eVar, fVar);
                    if (protoBuf$ValueParameterC != null) {
                        x(protoBuf$ValueParameterC);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$ValueParameter protoBuf$ValueParameter2 = (ProtoBuf$ValueParameter) e2.getUnfinishedMessage();
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$ValueParameter = protoBuf$ValueParameter2;
                        if (protoBuf$ValueParameter != null) {
                            x(protoBuf$ValueParameter);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$ValueParameter != null) {
                    x(protoBuf$ValueParameter);
                }
                throw th;
            }
        }

        public b z(ProtoBuf$Type protoBuf$Type) {
            if ((this.f15312d & 4) != 4 || this.f15315g == ProtoBuf$Type.getDefaultInstance()) {
                this.f15315g = protoBuf$Type;
            } else {
                this.f15315g = ProtoBuf$Type.newBuilder(this.f15315g).f(protoBuf$Type).o();
            }
            this.f15312d |= 4;
            return this;
        }
    }

    static {
        ProtoBuf$ValueParameter protoBuf$ValueParameter = new ProtoBuf$ValueParameter(true);
        defaultInstance = protoBuf$ValueParameter;
        protoBuf$ValueParameter.initFields();
    }

    public static ProtoBuf$ValueParameter getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.flags_ = 0;
        this.name_ = 0;
        this.type_ = ProtoBuf$Type.getDefaultInstance();
        this.typeId_ = 0;
        this.varargElementType_ = ProtoBuf$Type.getDefaultInstance();
        this.varargElementTypeId_ = 0;
    }

    public static b newBuilder() {
        return b.q();
    }

    public int getFlags() {
        return this.flags_;
    }

    public int getName() {
        return this.name_;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public p<ProtoBuf$ValueParameter> getParserForType() {
        return PARSER;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iO = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.o(1, this.flags_) : 0;
        if ((this.bitField0_ & 2) == 2) {
            iO += CodedOutputStream.o(2, this.name_);
        }
        if ((this.bitField0_ & 4) == 4) {
            iO += CodedOutputStream.s(3, this.type_);
        }
        if ((this.bitField0_ & 16) == 16) {
            iO += CodedOutputStream.s(4, this.varargElementType_);
        }
        if ((this.bitField0_ & 8) == 8) {
            iO += CodedOutputStream.o(5, this.typeId_);
        }
        if ((this.bitField0_ & 32) == 32) {
            iO += CodedOutputStream.o(6, this.varargElementTypeId_);
        }
        int iExtensionsSerializedSize = iO + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = iExtensionsSerializedSize;
        return iExtensionsSerializedSize;
    }

    public ProtoBuf$Type getType() {
        return this.type_;
    }

    public int getTypeId() {
        return this.typeId_;
    }

    public ProtoBuf$Type getVarargElementType() {
        return this.varargElementType_;
    }

    public int getVarargElementTypeId() {
        return this.varargElementTypeId_;
    }

    public boolean hasFlags() {
        return (this.bitField0_ & 1) == 1;
    }

    public boolean hasName() {
        return (this.bitField0_ & 2) == 2;
    }

    public boolean hasType() {
        return (this.bitField0_ & 4) == 4;
    }

    public boolean hasTypeId() {
        return (this.bitField0_ & 8) == 8;
    }

    public boolean hasVarargElementType() {
        return (this.bitField0_ & 16) == 16;
    }

    public boolean hasVarargElementTypeId() {
        return (this.bitField0_ & 32) == 32;
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
        if (hasType() && !getType().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if (hasVarargElementType() && !getVarargElementType().isInitialized()) {
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
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.a0(2, this.name_);
        }
        if ((this.bitField0_ & 4) == 4) {
            codedOutputStream.d0(3, this.type_);
        }
        if ((this.bitField0_ & 16) == 16) {
            codedOutputStream.d0(4, this.varargElementType_);
        }
        if ((this.bitField0_ & 8) == 8) {
            codedOutputStream.a0(5, this.typeId_);
        }
        if ((this.bitField0_ & 32) == 32) {
            codedOutputStream.a0(6, this.varargElementTypeId_);
        }
        aVarNewExtensionWriter.a(200, codedOutputStream);
        codedOutputStream.i0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$ValueParameter protoBuf$ValueParameter) {
        b bVarNewBuilder = newBuilder();
        bVarNewBuilder.x(protoBuf$ValueParameter);
        return bVarNewBuilder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
    public ProtoBuf$ValueParameter getDefaultInstanceForType() {
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

    private ProtoBuf$ValueParameter(GeneratedMessageLite.c<ProtoBuf$ValueParameter, ?> cVar) {
        super(cVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = cVar.e();
    }

    private ProtoBuf$ValueParameter(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = d.f15412a;
    }

    private ProtoBuf$ValueParameter(e eVar, f fVar) throws InvalidProtocolBufferException {
        ProtoBuf$Type.b builder;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        initFields();
        d.b bVarT = d.t();
        CodedOutputStream codedOutputStreamJ = CodedOutputStream.J(bVarT, 1);
        boolean z = false;
        while (!z) {
            try {
                try {
                    try {
                        int iK = eVar.K();
                        if (iK != 0) {
                            if (iK == 8) {
                                this.bitField0_ |= 1;
                                this.flags_ = eVar.s();
                            } else if (iK != 16) {
                                if (iK == 26) {
                                    builder = (this.bitField0_ & 4) == 4 ? this.type_.toBuilder() : null;
                                    ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) eVar.u(ProtoBuf$Type.PARSER, fVar);
                                    this.type_ = protoBuf$Type;
                                    if (builder != null) {
                                        builder.f(protoBuf$Type);
                                        this.type_ = builder.o();
                                    }
                                    this.bitField0_ |= 4;
                                } else if (iK == 34) {
                                    builder = (this.bitField0_ & 16) == 16 ? this.varargElementType_.toBuilder() : null;
                                    ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) eVar.u(ProtoBuf$Type.PARSER, fVar);
                                    this.varargElementType_ = protoBuf$Type2;
                                    if (builder != null) {
                                        builder.f(protoBuf$Type2);
                                        this.varargElementType_ = builder.o();
                                    }
                                    this.bitField0_ |= 16;
                                } else if (iK == 40) {
                                    this.bitField0_ |= 8;
                                    this.typeId_ = eVar.s();
                                } else if (iK != 48) {
                                    if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                                    }
                                } else {
                                    this.bitField0_ |= 32;
                                    this.varargElementTypeId_ = eVar.s();
                                }
                            } else {
                                this.bitField0_ |= 2;
                                this.name_ = eVar.s();
                            }
                        }
                        z = true;
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } catch (InvalidProtocolBufferException e3) {
                    throw e3.setUnfinishedMessage(this);
                }
            } catch (Throwable th) {
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
        try {
            codedOutputStreamJ.I();
        } catch (IOException unused2) {
        } finally {
            this.unknownFields = bVarT.e();
        }
        makeExtensionsImmutable();
    }
}
