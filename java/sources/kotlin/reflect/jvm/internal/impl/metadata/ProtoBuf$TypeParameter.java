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
import kotlin.reflect.jvm.internal.impl.protobuf.p;

/* JADX INFO: loaded from: classes6.dex */
public final class ProtoBuf$TypeParameter extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$TypeParameter> implements Object {
    public static p<ProtoBuf$TypeParameter> PARSER = new a();
    private static final ProtoBuf$TypeParameter defaultInstance;
    private int bitField0_;
    private int id_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private int name_;
    private boolean reified_;
    private final d unknownFields;
    private int upperBoundIdMemoizedSerializedSize;
    private List<Integer> upperBoundId_;
    private List<ProtoBuf$Type> upperBound_;
    private Variance variance_;

    public enum Variance implements h.a {
        IN(0, 0),
        OUT(1, 1),
        INV(2, 2);

        private static h.b<Variance> internalValueMap = new a();
        private final int value;

        static class a implements h.b<Variance> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.b
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Variance a(int i) {
                return Variance.valueOf(i);
            }
        }

        Variance(int i, int i2) {
            this.value = i2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
        public final int getNumber() {
            return this.value;
        }

        public static Variance valueOf(int i) {
            if (i == 0) {
                return IN;
            }
            if (i == 1) {
                return OUT;
            }
            if (i != 2) {
                return null;
            }
            return INV;
        }
    }

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$TypeParameter> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$TypeParameter c(e eVar, f fVar) throws InvalidProtocolBufferException {
            return new ProtoBuf$TypeParameter(eVar, fVar);
        }
    }

    public static final class b extends GeneratedMessageLite.c<ProtoBuf$TypeParameter, b> implements Object {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f15306d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f15307e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f15308f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f15309g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Variance f15310h = Variance.INV;
        private List<ProtoBuf$Type> i = Collections.emptyList();
        private List<Integer> j = Collections.emptyList();

        private b() {
            x();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b q() {
            return new b();
        }

        private void r() {
            if ((this.f15306d & 32) != 32) {
                this.j = new ArrayList(this.j);
                this.f15306d |= 32;
            }
        }

        private void s() {
            if ((this.f15306d & 16) != 16) {
                this.i = new ArrayList(this.i);
                this.f15306d |= 16;
            }
        }

        private void x() {
        }

        public b A(int i) {
            this.f15306d |= 1;
            this.f15307e = i;
            return this;
        }

        public b B(int i) {
            this.f15306d |= 2;
            this.f15308f = i;
            return this;
        }

        public b C(boolean z) {
            this.f15306d |= 4;
            this.f15309g = z;
            return this;
        }

        public b D(Variance variance) {
            Objects.requireNonNull(variance);
            this.f15306d |= 8;
            this.f15310h = variance;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a, kotlin.reflect.jvm.internal.impl.protobuf.n.a
        public /* bridge */ /* synthetic */ n.a a(e eVar, f fVar) throws Throwable {
            z(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a
        /* JADX INFO: renamed from: b */
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a a(e eVar, f fVar) throws Throwable {
            z(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        public /* bridge */ /* synthetic */ GeneratedMessageLite.b f(GeneratedMessageLite generatedMessageLite) {
            y((ProtoBuf$TypeParameter) generatedMessageLite);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
        public final boolean isInitialized() {
            if (!v() || !w()) {
                return false;
            }
            for (int i = 0; i < u(); i++) {
                if (!t(i).isInitialized()) {
                    return false;
                }
            }
            return k();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$TypeParameter build() {
            ProtoBuf$TypeParameter protoBuf$TypeParameterO = o();
            if (protoBuf$TypeParameterO.isInitialized()) {
                return protoBuf$TypeParameterO;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(protoBuf$TypeParameterO);
        }

        public ProtoBuf$TypeParameter o() {
            ProtoBuf$TypeParameter protoBuf$TypeParameter = new ProtoBuf$TypeParameter(this);
            int i = this.f15306d;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$TypeParameter.id_ = this.f15307e;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$TypeParameter.name_ = this.f15308f;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$TypeParameter.reified_ = this.f15309g;
            if ((i & 8) == 8) {
                i2 |= 8;
            }
            protoBuf$TypeParameter.variance_ = this.f15310h;
            if ((this.f15306d & 16) == 16) {
                this.i = Collections.unmodifiableList(this.i);
                this.f15306d &= -17;
            }
            protoBuf$TypeParameter.upperBound_ = this.i;
            if ((this.f15306d & 32) == 32) {
                this.j = Collections.unmodifiableList(this.j);
                this.f15306d &= -33;
            }
            protoBuf$TypeParameter.upperBoundId_ = this.j;
            protoBuf$TypeParameter.bitField0_ = i2;
            return protoBuf$TypeParameter;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public b d() {
            b bVarQ = q();
            bVarQ.y(o());
            return bVarQ;
        }

        public ProtoBuf$Type t(int i) {
            return this.i.get(i);
        }

        public int u() {
            return this.i.size();
        }

        public boolean v() {
            return (this.f15306d & 1) == 1;
        }

        public boolean w() {
            return (this.f15306d & 2) == 2;
        }

        public b y(ProtoBuf$TypeParameter protoBuf$TypeParameter) {
            if (protoBuf$TypeParameter == ProtoBuf$TypeParameter.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$TypeParameter.hasId()) {
                A(protoBuf$TypeParameter.getId());
            }
            if (protoBuf$TypeParameter.hasName()) {
                B(protoBuf$TypeParameter.getName());
            }
            if (protoBuf$TypeParameter.hasReified()) {
                C(protoBuf$TypeParameter.getReified());
            }
            if (protoBuf$TypeParameter.hasVariance()) {
                D(protoBuf$TypeParameter.getVariance());
            }
            if (!protoBuf$TypeParameter.upperBound_.isEmpty()) {
                if (this.i.isEmpty()) {
                    this.i = protoBuf$TypeParameter.upperBound_;
                    this.f15306d &= -17;
                } else {
                    s();
                    this.i.addAll(protoBuf$TypeParameter.upperBound_);
                }
            }
            if (!protoBuf$TypeParameter.upperBoundId_.isEmpty()) {
                if (this.j.isEmpty()) {
                    this.j = protoBuf$TypeParameter.upperBoundId_;
                    this.f15306d &= -33;
                } else {
                    r();
                    this.j.addAll(protoBuf$TypeParameter.upperBoundId_);
                }
            }
            l(protoBuf$TypeParameter);
            g(e().b(protoBuf$TypeParameter.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        public b z(e eVar, f fVar) throws Throwable {
            ProtoBuf$TypeParameter protoBuf$TypeParameter = null;
            try {
                try {
                    ProtoBuf$TypeParameter protoBuf$TypeParameterC = ProtoBuf$TypeParameter.PARSER.c(eVar, fVar);
                    if (protoBuf$TypeParameterC != null) {
                        y(protoBuf$TypeParameterC);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$TypeParameter protoBuf$TypeParameter2 = (ProtoBuf$TypeParameter) e2.getUnfinishedMessage();
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$TypeParameter = protoBuf$TypeParameter2;
                        if (protoBuf$TypeParameter != null) {
                            y(protoBuf$TypeParameter);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$TypeParameter != null) {
                    y(protoBuf$TypeParameter);
                }
                throw th;
            }
        }
    }

    static {
        ProtoBuf$TypeParameter protoBuf$TypeParameter = new ProtoBuf$TypeParameter(true);
        defaultInstance = protoBuf$TypeParameter;
        protoBuf$TypeParameter.initFields();
    }

    public static ProtoBuf$TypeParameter getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.id_ = 0;
        this.name_ = 0;
        this.reified_ = false;
        this.variance_ = Variance.INV;
        this.upperBound_ = Collections.emptyList();
        this.upperBoundId_ = Collections.emptyList();
    }

    public static b newBuilder() {
        return b.q();
    }

    public int getId() {
        return this.id_;
    }

    public int getName() {
        return this.name_;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public p<ProtoBuf$TypeParameter> getParserForType() {
        return PARSER;
    }

    public boolean getReified() {
        return this.reified_;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iO = (this.bitField0_ & 1) == 1 ? CodedOutputStream.o(1, this.id_) + 0 : 0;
        if ((this.bitField0_ & 2) == 2) {
            iO += CodedOutputStream.o(2, this.name_);
        }
        if ((this.bitField0_ & 4) == 4) {
            iO += CodedOutputStream.a(3, this.reified_);
        }
        if ((this.bitField0_ & 8) == 8) {
            iO += CodedOutputStream.h(4, this.variance_.getNumber());
        }
        for (int i2 = 0; i2 < this.upperBound_.size(); i2++) {
            iO += CodedOutputStream.s(5, this.upperBound_.get(i2));
        }
        int iP = 0;
        for (int i3 = 0; i3 < this.upperBoundId_.size(); i3++) {
            iP += CodedOutputStream.p(this.upperBoundId_.get(i3).intValue());
        }
        int iP2 = iO + iP;
        if (!getUpperBoundIdList().isEmpty()) {
            iP2 = iP2 + 1 + CodedOutputStream.p(iP);
        }
        this.upperBoundIdMemoizedSerializedSize = iP;
        int iExtensionsSerializedSize = iP2 + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = iExtensionsSerializedSize;
        return iExtensionsSerializedSize;
    }

    public ProtoBuf$Type getUpperBound(int i) {
        return this.upperBound_.get(i);
    }

    public int getUpperBoundCount() {
        return this.upperBound_.size();
    }

    public List<Integer> getUpperBoundIdList() {
        return this.upperBoundId_;
    }

    public List<ProtoBuf$Type> getUpperBoundList() {
        return this.upperBound_;
    }

    public Variance getVariance() {
        return this.variance_;
    }

    public boolean hasId() {
        return (this.bitField0_ & 1) == 1;
    }

    public boolean hasName() {
        return (this.bitField0_ & 2) == 2;
    }

    public boolean hasReified() {
        return (this.bitField0_ & 4) == 4;
    }

    public boolean hasVariance() {
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
        if (!hasId()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if (!hasName()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i = 0; i < getUpperBoundCount(); i++) {
            if (!getUpperBound(i).isInitialized()) {
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
            codedOutputStream.a0(1, this.id_);
        }
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.a0(2, this.name_);
        }
        if ((this.bitField0_ & 4) == 4) {
            codedOutputStream.L(3, this.reified_);
        }
        if ((this.bitField0_ & 8) == 8) {
            codedOutputStream.S(4, this.variance_.getNumber());
        }
        for (int i = 0; i < this.upperBound_.size(); i++) {
            codedOutputStream.d0(5, this.upperBound_.get(i));
        }
        if (getUpperBoundIdList().size() > 0) {
            codedOutputStream.o0(50);
            codedOutputStream.o0(this.upperBoundIdMemoizedSerializedSize);
        }
        for (int i2 = 0; i2 < this.upperBoundId_.size(); i2++) {
            codedOutputStream.b0(this.upperBoundId_.get(i2).intValue());
        }
        aVarNewExtensionWriter.a(1000, codedOutputStream);
        codedOutputStream.i0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$TypeParameter protoBuf$TypeParameter) {
        b bVarNewBuilder = newBuilder();
        bVarNewBuilder.y(protoBuf$TypeParameter);
        return bVarNewBuilder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
    public ProtoBuf$TypeParameter getDefaultInstanceForType() {
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

    private ProtoBuf$TypeParameter(GeneratedMessageLite.c<ProtoBuf$TypeParameter, ?> cVar) {
        super(cVar);
        this.upperBoundIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = cVar.e();
    }

    private ProtoBuf$TypeParameter(boolean z) {
        this.upperBoundIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = d.f15412a;
    }

    private ProtoBuf$TypeParameter(e eVar, f fVar) throws InvalidProtocolBufferException {
        this.upperBoundIdMemoizedSerializedSize = -1;
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
                        if (iK != 0) {
                            if (iK == 8) {
                                this.bitField0_ |= 1;
                                this.id_ = eVar.s();
                            } else if (iK == 16) {
                                this.bitField0_ |= 2;
                                this.name_ = eVar.s();
                            } else if (iK == 24) {
                                this.bitField0_ |= 4;
                                this.reified_ = eVar.k();
                            } else if (iK == 32) {
                                int iN = eVar.n();
                                Variance varianceValueOf = Variance.valueOf(iN);
                                if (varianceValueOf == null) {
                                    codedOutputStreamJ.o0(iK);
                                    codedOutputStreamJ.o0(iN);
                                } else {
                                    this.bitField0_ |= 8;
                                    this.variance_ = varianceValueOf;
                                }
                            } else if (iK == 42) {
                                if ((i & 16) != 16) {
                                    this.upperBound_ = new ArrayList();
                                    i |= 16;
                                }
                                this.upperBound_.add((ProtoBuf$Type) eVar.u(ProtoBuf$Type.PARSER, fVar));
                            } else if (iK == 48) {
                                if ((i & 32) != 32) {
                                    this.upperBoundId_ = new ArrayList();
                                    i |= 32;
                                }
                                this.upperBoundId_.add(Integer.valueOf(eVar.s()));
                            } else if (iK != 50) {
                                if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                                }
                            } else {
                                int iJ = eVar.j(eVar.A());
                                if ((i & 32) != 32 && eVar.e() > 0) {
                                    this.upperBoundId_ = new ArrayList();
                                    i |= 32;
                                }
                                while (eVar.e() > 0) {
                                    this.upperBoundId_.add(Integer.valueOf(eVar.s()));
                                }
                                eVar.i(iJ);
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
                if ((i & 16) == 16) {
                    this.upperBound_ = Collections.unmodifiableList(this.upperBound_);
                }
                if ((i & 32) == 32) {
                    this.upperBoundId_ = Collections.unmodifiableList(this.upperBoundId_);
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
        if ((i & 16) == 16) {
            this.upperBound_ = Collections.unmodifiableList(this.upperBound_);
        }
        if ((i & 32) == 32) {
            this.upperBoundId_ = Collections.unmodifiableList(this.upperBoundId_);
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
