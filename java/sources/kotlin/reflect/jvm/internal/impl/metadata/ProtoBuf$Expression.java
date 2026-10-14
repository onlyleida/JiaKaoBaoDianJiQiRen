package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.d;
import kotlin.reflect.jvm.internal.impl.protobuf.e;
import kotlin.reflect.jvm.internal.impl.protobuf.f;
import kotlin.reflect.jvm.internal.impl.protobuf.h;
import kotlin.reflect.jvm.internal.impl.protobuf.n;
import kotlin.reflect.jvm.internal.impl.protobuf.o;
import kotlin.reflect.jvm.internal.impl.protobuf.p;

/* JADX INFO: loaded from: classes6.dex */
public final class ProtoBuf$Expression extends GeneratedMessageLite implements o {
    public static p<ProtoBuf$Expression> PARSER = new a();
    private static final ProtoBuf$Expression defaultInstance;
    private List<ProtoBuf$Expression> andArgument_;
    private int bitField0_;
    private ConstantValue constantValue_;
    private int flags_;
    private int isInstanceTypeId_;
    private ProtoBuf$Type isInstanceType_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private List<ProtoBuf$Expression> orArgument_;
    private final d unknownFields;
    private int valueParameterReference_;

    public enum ConstantValue implements h.a {
        TRUE(0, 0),
        FALSE(1, 1),
        NULL(2, 2);

        private static h.b<ConstantValue> internalValueMap = new a();
        private final int value;

        static class a implements h.b<ConstantValue> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.b
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public ConstantValue a(int i) {
                return ConstantValue.valueOf(i);
            }
        }

        ConstantValue(int i, int i2) {
            this.value = i2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
        public final int getNumber() {
            return this.value;
        }

        public static ConstantValue valueOf(int i) {
            if (i == 0) {
                return TRUE;
            }
            if (i == 1) {
                return FALSE;
            }
            if (i != 2) {
                return null;
            }
            return NULL;
        }
    }

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$Expression> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Expression c(e eVar, f fVar) throws InvalidProtocolBufferException {
            return new ProtoBuf$Expression(eVar, fVar);
        }
    }

    public static final class b extends GeneratedMessageLite.b<ProtoBuf$Expression, b> implements Object {
        private int b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f15267d;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f15270g;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ConstantValue f15268e = ConstantValue.TRUE;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private ProtoBuf$Type f15269f = ProtoBuf$Type.getDefaultInstance();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private List<ProtoBuf$Expression> f15271h = Collections.emptyList();
        private List<ProtoBuf$Expression> i = Collections.emptyList();

        private b() {
            u();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b l() {
            return new b();
        }

        private void m() {
            if ((this.b & 32) != 32) {
                this.f15271h = new ArrayList(this.f15271h);
                this.b |= 32;
            }
        }

        private void n() {
            if ((this.b & 64) != 64) {
                this.i = new ArrayList(this.i);
                this.b |= 64;
            }
        }

        private void u() {
        }

        public b A(int i) {
            this.b |= 16;
            this.f15270g = i;
            return this;
        }

        public b B(int i) {
            this.b |= 2;
            this.f15267d = i;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a, kotlin.reflect.jvm.internal.impl.protobuf.n.a
        public /* bridge */ /* synthetic */ n.a a(e eVar, f fVar) throws Throwable {
            w(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a
        /* JADX INFO: renamed from: b */
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a a(e eVar, f fVar) throws Throwable {
            w(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        public /* bridge */ /* synthetic */ GeneratedMessageLite.b f(GeneratedMessageLite generatedMessageLite) {
            v((ProtoBuf$Expression) generatedMessageLite);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Expression build() {
            ProtoBuf$Expression protoBuf$ExpressionJ = j();
            if (protoBuf$ExpressionJ.isInitialized()) {
                return protoBuf$ExpressionJ;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(protoBuf$ExpressionJ);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
        public final boolean isInitialized() {
            if (t() && !q().isInitialized()) {
                return false;
            }
            for (int i = 0; i < p(); i++) {
                if (!o(i).isInitialized()) {
                    return false;
                }
            }
            for (int i2 = 0; i2 < s(); i2++) {
                if (!r(i2).isInitialized()) {
                    return false;
                }
            }
            return true;
        }

        public ProtoBuf$Expression j() {
            ProtoBuf$Expression protoBuf$Expression = new ProtoBuf$Expression(this);
            int i = this.b;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$Expression.flags_ = this.c;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$Expression.valueParameterReference_ = this.f15267d;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$Expression.constantValue_ = this.f15268e;
            if ((i & 8) == 8) {
                i2 |= 8;
            }
            protoBuf$Expression.isInstanceType_ = this.f15269f;
            if ((i & 16) == 16) {
                i2 |= 16;
            }
            protoBuf$Expression.isInstanceTypeId_ = this.f15270g;
            if ((this.b & 32) == 32) {
                this.f15271h = Collections.unmodifiableList(this.f15271h);
                this.b &= -33;
            }
            protoBuf$Expression.andArgument_ = this.f15271h;
            if ((this.b & 64) == 64) {
                this.i = Collections.unmodifiableList(this.i);
                this.b &= -65;
            }
            protoBuf$Expression.orArgument_ = this.i;
            protoBuf$Expression.bitField0_ = i2;
            return protoBuf$Expression;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public b d() {
            b bVarL = l();
            bVarL.v(j());
            return bVarL;
        }

        public ProtoBuf$Expression o(int i) {
            return this.f15271h.get(i);
        }

        public int p() {
            return this.f15271h.size();
        }

        public ProtoBuf$Type q() {
            return this.f15269f;
        }

        public ProtoBuf$Expression r(int i) {
            return this.i.get(i);
        }

        public int s() {
            return this.i.size();
        }

        public boolean t() {
            return (this.b & 8) == 8;
        }

        public b v(ProtoBuf$Expression protoBuf$Expression) {
            if (protoBuf$Expression == ProtoBuf$Expression.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$Expression.hasFlags()) {
                z(protoBuf$Expression.getFlags());
            }
            if (protoBuf$Expression.hasValueParameterReference()) {
                B(protoBuf$Expression.getValueParameterReference());
            }
            if (protoBuf$Expression.hasConstantValue()) {
                y(protoBuf$Expression.getConstantValue());
            }
            if (protoBuf$Expression.hasIsInstanceType()) {
                x(protoBuf$Expression.getIsInstanceType());
            }
            if (protoBuf$Expression.hasIsInstanceTypeId()) {
                A(protoBuf$Expression.getIsInstanceTypeId());
            }
            if (!protoBuf$Expression.andArgument_.isEmpty()) {
                if (this.f15271h.isEmpty()) {
                    this.f15271h = protoBuf$Expression.andArgument_;
                    this.b &= -33;
                } else {
                    m();
                    this.f15271h.addAll(protoBuf$Expression.andArgument_);
                }
            }
            if (!protoBuf$Expression.orArgument_.isEmpty()) {
                if (this.i.isEmpty()) {
                    this.i = protoBuf$Expression.orArgument_;
                    this.b &= -65;
                } else {
                    n();
                    this.i.addAll(protoBuf$Expression.orArgument_);
                }
            }
            g(e().b(protoBuf$Expression.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        public b w(e eVar, f fVar) throws Throwable {
            ProtoBuf$Expression protoBuf$Expression = null;
            try {
                try {
                    ProtoBuf$Expression protoBuf$ExpressionC = ProtoBuf$Expression.PARSER.c(eVar, fVar);
                    if (protoBuf$ExpressionC != null) {
                        v(protoBuf$ExpressionC);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$Expression protoBuf$Expression2 = (ProtoBuf$Expression) e2.getUnfinishedMessage();
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Expression = protoBuf$Expression2;
                        if (protoBuf$Expression != null) {
                            v(protoBuf$Expression);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Expression != null) {
                    v(protoBuf$Expression);
                }
                throw th;
            }
        }

        public b x(ProtoBuf$Type protoBuf$Type) {
            if ((this.b & 8) != 8 || this.f15269f == ProtoBuf$Type.getDefaultInstance()) {
                this.f15269f = protoBuf$Type;
            } else {
                this.f15269f = ProtoBuf$Type.newBuilder(this.f15269f).f(protoBuf$Type).o();
            }
            this.b |= 8;
            return this;
        }

        public b y(ConstantValue constantValue) {
            Objects.requireNonNull(constantValue);
            this.b |= 4;
            this.f15268e = constantValue;
            return this;
        }

        public b z(int i) {
            this.b |= 1;
            this.c = i;
            return this;
        }
    }

    static {
        ProtoBuf$Expression protoBuf$Expression = new ProtoBuf$Expression(true);
        defaultInstance = protoBuf$Expression;
        protoBuf$Expression.initFields();
    }

    public static ProtoBuf$Expression getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.flags_ = 0;
        this.valueParameterReference_ = 0;
        this.constantValue_ = ConstantValue.TRUE;
        this.isInstanceType_ = ProtoBuf$Type.getDefaultInstance();
        this.isInstanceTypeId_ = 0;
        this.andArgument_ = Collections.emptyList();
        this.orArgument_ = Collections.emptyList();
    }

    public static b newBuilder() {
        return b.l();
    }

    public ProtoBuf$Expression getAndArgument(int i) {
        return this.andArgument_.get(i);
    }

    public int getAndArgumentCount() {
        return this.andArgument_.size();
    }

    public ConstantValue getConstantValue() {
        return this.constantValue_;
    }

    public int getFlags() {
        return this.flags_;
    }

    public ProtoBuf$Type getIsInstanceType() {
        return this.isInstanceType_;
    }

    public int getIsInstanceTypeId() {
        return this.isInstanceTypeId_;
    }

    public ProtoBuf$Expression getOrArgument(int i) {
        return this.orArgument_.get(i);
    }

    public int getOrArgumentCount() {
        return this.orArgument_.size();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public p<ProtoBuf$Expression> getParserForType() {
        return PARSER;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iO = (this.bitField0_ & 1) == 1 ? CodedOutputStream.o(1, this.flags_) + 0 : 0;
        if ((this.bitField0_ & 2) == 2) {
            iO += CodedOutputStream.o(2, this.valueParameterReference_);
        }
        if ((this.bitField0_ & 4) == 4) {
            iO += CodedOutputStream.h(3, this.constantValue_.getNumber());
        }
        if ((this.bitField0_ & 8) == 8) {
            iO += CodedOutputStream.s(4, this.isInstanceType_);
        }
        if ((this.bitField0_ & 16) == 16) {
            iO += CodedOutputStream.o(5, this.isInstanceTypeId_);
        }
        for (int i2 = 0; i2 < this.andArgument_.size(); i2++) {
            iO += CodedOutputStream.s(6, this.andArgument_.get(i2));
        }
        for (int i3 = 0; i3 < this.orArgument_.size(); i3++) {
            iO += CodedOutputStream.s(7, this.orArgument_.get(i3));
        }
        int size = iO + this.unknownFields.size();
        this.memoizedSerializedSize = size;
        return size;
    }

    public int getValueParameterReference() {
        return this.valueParameterReference_;
    }

    public boolean hasConstantValue() {
        return (this.bitField0_ & 4) == 4;
    }

    public boolean hasFlags() {
        return (this.bitField0_ & 1) == 1;
    }

    public boolean hasIsInstanceType() {
        return (this.bitField0_ & 8) == 8;
    }

    public boolean hasIsInstanceTypeId() {
        return (this.bitField0_ & 16) == 16;
    }

    public boolean hasValueParameterReference() {
        return (this.bitField0_ & 2) == 2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.o
    public final boolean isInitialized() {
        byte b2 = this.memoizedIsInitialized;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        if (hasIsInstanceType() && !getIsInstanceType().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i = 0; i < getAndArgumentCount(); i++) {
            if (!getAndArgument(i).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i2 = 0; i2 < getOrArgumentCount(); i2++) {
            if (!getOrArgument(i2).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if ((this.bitField0_ & 1) == 1) {
            codedOutputStream.a0(1, this.flags_);
        }
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.a0(2, this.valueParameterReference_);
        }
        if ((this.bitField0_ & 4) == 4) {
            codedOutputStream.S(3, this.constantValue_.getNumber());
        }
        if ((this.bitField0_ & 8) == 8) {
            codedOutputStream.d0(4, this.isInstanceType_);
        }
        if ((this.bitField0_ & 16) == 16) {
            codedOutputStream.a0(5, this.isInstanceTypeId_);
        }
        for (int i = 0; i < this.andArgument_.size(); i++) {
            codedOutputStream.d0(6, this.andArgument_.get(i));
        }
        for (int i2 = 0; i2 < this.orArgument_.size(); i2++) {
            codedOutputStream.d0(7, this.orArgument_.get(i2));
        }
        codedOutputStream.i0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$Expression protoBuf$Expression) {
        b bVarNewBuilder = newBuilder();
        bVarNewBuilder.v(protoBuf$Expression);
        return bVarNewBuilder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
    public ProtoBuf$Expression getDefaultInstanceForType() {
        return defaultInstance;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public b newBuilderForType() {
        return newBuilder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public b toBuilder() {
        return newBuilder(this);
    }

    private ProtoBuf$Expression(GeneratedMessageLite.b bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = bVar.e();
    }

    private ProtoBuf$Expression(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = d.f15412a;
    }

    private ProtoBuf$Expression(e eVar, f fVar) throws InvalidProtocolBufferException {
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
                    if (iK != 0) {
                        if (iK == 8) {
                            this.bitField0_ |= 1;
                            this.flags_ = eVar.s();
                        } else if (iK == 16) {
                            this.bitField0_ |= 2;
                            this.valueParameterReference_ = eVar.s();
                        } else if (iK == 24) {
                            int iN = eVar.n();
                            ConstantValue constantValueValueOf = ConstantValue.valueOf(iN);
                            if (constantValueValueOf == null) {
                                codedOutputStreamJ.o0(iK);
                                codedOutputStreamJ.o0(iN);
                            } else {
                                this.bitField0_ |= 4;
                                this.constantValue_ = constantValueValueOf;
                            }
                        } else if (iK == 34) {
                            ProtoBuf$Type.b builder = (this.bitField0_ & 8) == 8 ? this.isInstanceType_.toBuilder() : null;
                            ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) eVar.u(ProtoBuf$Type.PARSER, fVar);
                            this.isInstanceType_ = protoBuf$Type;
                            if (builder != null) {
                                builder.f(protoBuf$Type);
                                this.isInstanceType_ = builder.o();
                            }
                            this.bitField0_ |= 8;
                        } else if (iK == 40) {
                            this.bitField0_ |= 16;
                            this.isInstanceTypeId_ = eVar.s();
                        } else if (iK == 50) {
                            if ((i & 32) != 32) {
                                this.andArgument_ = new ArrayList();
                                i |= 32;
                            }
                            this.andArgument_.add((ProtoBuf$Expression) eVar.u(PARSER, fVar));
                        } else if (iK != 58) {
                            if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                            }
                        } else {
                            if ((i & 64) != 64) {
                                this.orArgument_ = new ArrayList();
                                i |= 64;
                            }
                            this.orArgument_.add((ProtoBuf$Expression) eVar.u(PARSER, fVar));
                        }
                    }
                    z = true;
                } catch (InvalidProtocolBufferException e2) {
                    throw e2.setUnfinishedMessage(this);
                } catch (IOException e3) {
                    throw new InvalidProtocolBufferException(e3.getMessage()).setUnfinishedMessage(this);
                }
            } catch (Throwable th) {
                if ((i & 32) == 32) {
                    this.andArgument_ = Collections.unmodifiableList(this.andArgument_);
                }
                if ((i & 64) == 64) {
                    this.orArgument_ = Collections.unmodifiableList(this.orArgument_);
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
            this.andArgument_ = Collections.unmodifiableList(this.andArgument_);
        }
        if ((i & 64) == 64) {
            this.orArgument_ = Collections.unmodifiableList(this.orArgument_);
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
