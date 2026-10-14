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
public final class ProtoBuf$Constructor extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$Constructor> implements Object {
    public static p<ProtoBuf$Constructor> PARSER = new a();
    private static final ProtoBuf$Constructor defaultInstance;
    private int bitField0_;
    private int flags_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private final d unknownFields;
    private List<ProtoBuf$ValueParameter> valueParameter_;
    private List<Integer> versionRequirement_;

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$Constructor> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Constructor c(e eVar, f fVar) throws InvalidProtocolBufferException {
            return new ProtoBuf$Constructor(eVar, fVar);
        }
    }

    public static final class b extends GeneratedMessageLite.c<ProtoBuf$Constructor, b> implements Object {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f15258d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f15259e = 6;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private List<ProtoBuf$ValueParameter> f15260f = Collections.emptyList();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private List<Integer> f15261g = Collections.emptyList();

        private b() {
            v();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b q() {
            return new b();
        }

        private void r() {
            if ((this.f15258d & 2) != 2) {
                this.f15260f = new ArrayList(this.f15260f);
                this.f15258d |= 2;
            }
        }

        private void s() {
            if ((this.f15258d & 4) != 4) {
                this.f15261g = new ArrayList(this.f15261g);
                this.f15258d |= 4;
            }
        }

        private void v() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a, kotlin.reflect.jvm.internal.impl.protobuf.n.a
        public /* bridge */ /* synthetic */ n.a a(e eVar, f fVar) throws Throwable {
            x(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a
        /* JADX INFO: renamed from: b */
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a a(e eVar, f fVar) throws Throwable {
            x(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        public /* bridge */ /* synthetic */ GeneratedMessageLite.b f(GeneratedMessageLite generatedMessageLite) {
            w((ProtoBuf$Constructor) generatedMessageLite);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
        public final boolean isInitialized() {
            for (int i = 0; i < u(); i++) {
                if (!t(i).isInitialized()) {
                    return false;
                }
            }
            return k();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Constructor build() {
            ProtoBuf$Constructor protoBuf$ConstructorO = o();
            if (protoBuf$ConstructorO.isInitialized()) {
                return protoBuf$ConstructorO;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(protoBuf$ConstructorO);
        }

        public ProtoBuf$Constructor o() {
            ProtoBuf$Constructor protoBuf$Constructor = new ProtoBuf$Constructor(this);
            int i = (this.f15258d & 1) != 1 ? 0 : 1;
            protoBuf$Constructor.flags_ = this.f15259e;
            if ((this.f15258d & 2) == 2) {
                this.f15260f = Collections.unmodifiableList(this.f15260f);
                this.f15258d &= -3;
            }
            protoBuf$Constructor.valueParameter_ = this.f15260f;
            if ((this.f15258d & 4) == 4) {
                this.f15261g = Collections.unmodifiableList(this.f15261g);
                this.f15258d &= -5;
            }
            protoBuf$Constructor.versionRequirement_ = this.f15261g;
            protoBuf$Constructor.bitField0_ = i;
            return protoBuf$Constructor;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public b d() {
            b bVarQ = q();
            bVarQ.w(o());
            return bVarQ;
        }

        public ProtoBuf$ValueParameter t(int i) {
            return this.f15260f.get(i);
        }

        public int u() {
            return this.f15260f.size();
        }

        public b w(ProtoBuf$Constructor protoBuf$Constructor) {
            if (protoBuf$Constructor == ProtoBuf$Constructor.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$Constructor.hasFlags()) {
                y(protoBuf$Constructor.getFlags());
            }
            if (!protoBuf$Constructor.valueParameter_.isEmpty()) {
                if (this.f15260f.isEmpty()) {
                    this.f15260f = protoBuf$Constructor.valueParameter_;
                    this.f15258d &= -3;
                } else {
                    r();
                    this.f15260f.addAll(protoBuf$Constructor.valueParameter_);
                }
            }
            if (!protoBuf$Constructor.versionRequirement_.isEmpty()) {
                if (this.f15261g.isEmpty()) {
                    this.f15261g = protoBuf$Constructor.versionRequirement_;
                    this.f15258d &= -5;
                } else {
                    s();
                    this.f15261g.addAll(protoBuf$Constructor.versionRequirement_);
                }
            }
            l(protoBuf$Constructor);
            g(e().b(protoBuf$Constructor.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        public b x(e eVar, f fVar) throws Throwable {
            ProtoBuf$Constructor protoBuf$Constructor = null;
            try {
                try {
                    ProtoBuf$Constructor protoBuf$ConstructorC = ProtoBuf$Constructor.PARSER.c(eVar, fVar);
                    if (protoBuf$ConstructorC != null) {
                        w(protoBuf$ConstructorC);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$Constructor protoBuf$Constructor2 = (ProtoBuf$Constructor) e2.getUnfinishedMessage();
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Constructor = protoBuf$Constructor2;
                        if (protoBuf$Constructor != null) {
                            w(protoBuf$Constructor);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Constructor != null) {
                    w(protoBuf$Constructor);
                }
                throw th;
            }
        }

        public b y(int i) {
            this.f15258d |= 1;
            this.f15259e = i;
            return this;
        }
    }

    static {
        ProtoBuf$Constructor protoBuf$Constructor = new ProtoBuf$Constructor(true);
        defaultInstance = protoBuf$Constructor;
        protoBuf$Constructor.initFields();
    }

    public static ProtoBuf$Constructor getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.flags_ = 6;
        this.valueParameter_ = Collections.emptyList();
        this.versionRequirement_ = Collections.emptyList();
    }

    public static b newBuilder() {
        return b.q();
    }

    public int getFlags() {
        return this.flags_;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public p<ProtoBuf$Constructor> getParserForType() {
        return PARSER;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iO = (this.bitField0_ & 1) == 1 ? CodedOutputStream.o(1, this.flags_) + 0 : 0;
        for (int i2 = 0; i2 < this.valueParameter_.size(); i2++) {
            iO += CodedOutputStream.s(2, this.valueParameter_.get(i2));
        }
        int iP = 0;
        for (int i3 = 0; i3 < this.versionRequirement_.size(); i3++) {
            iP += CodedOutputStream.p(this.versionRequirement_.get(i3).intValue());
        }
        int size = iO + iP + (getVersionRequirementList().size() * 2) + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = size;
        return size;
    }

    public ProtoBuf$ValueParameter getValueParameter(int i) {
        return this.valueParameter_.get(i);
    }

    public int getValueParameterCount() {
        return this.valueParameter_.size();
    }

    public List<ProtoBuf$ValueParameter> getValueParameterList() {
        return this.valueParameter_;
    }

    public List<Integer> getVersionRequirementList() {
        return this.versionRequirement_;
    }

    public boolean hasFlags() {
        return (this.bitField0_ & 1) == 1;
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
        for (int i = 0; i < getValueParameterCount(); i++) {
            if (!getValueParameter(i).isInitialized()) {
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
        for (int i = 0; i < this.valueParameter_.size(); i++) {
            codedOutputStream.d0(2, this.valueParameter_.get(i));
        }
        for (int i2 = 0; i2 < this.versionRequirement_.size(); i2++) {
            codedOutputStream.a0(31, this.versionRequirement_.get(i2).intValue());
        }
        aVarNewExtensionWriter.a(Videoio.CAP_PROP_IMAGES_LAST, codedOutputStream);
        codedOutputStream.i0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$Constructor protoBuf$Constructor) {
        b bVarNewBuilder = newBuilder();
        bVarNewBuilder.w(protoBuf$Constructor);
        return bVarNewBuilder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
    public ProtoBuf$Constructor getDefaultInstanceForType() {
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

    private ProtoBuf$Constructor(GeneratedMessageLite.c<ProtoBuf$Constructor, ?> cVar) {
        super(cVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = cVar.e();
    }

    private ProtoBuf$Constructor(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = d.f15412a;
    }

    private ProtoBuf$Constructor(e eVar, f fVar) throws InvalidProtocolBufferException {
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
                                this.flags_ = eVar.s();
                            } else if (iK == 18) {
                                if ((i & 2) != 2) {
                                    this.valueParameter_ = new ArrayList();
                                    i |= 2;
                                }
                                this.valueParameter_.add((ProtoBuf$ValueParameter) eVar.u(ProtoBuf$ValueParameter.PARSER, fVar));
                            } else if (iK == 248) {
                                if ((i & 4) != 4) {
                                    this.versionRequirement_ = new ArrayList();
                                    i |= 4;
                                }
                                this.versionRequirement_.add(Integer.valueOf(eVar.s()));
                            } else if (iK != 250) {
                                if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                                }
                            } else {
                                int iJ = eVar.j(eVar.A());
                                if ((i & 4) != 4 && eVar.e() > 0) {
                                    this.versionRequirement_ = new ArrayList();
                                    i |= 4;
                                }
                                while (eVar.e() > 0) {
                                    this.versionRequirement_.add(Integer.valueOf(eVar.s()));
                                }
                                eVar.i(iJ);
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } catch (IOException e3) {
                    throw new InvalidProtocolBufferException(e3.getMessage()).setUnfinishedMessage(this);
                }
            } catch (Throwable th) {
                if ((i & 2) == 2) {
                    this.valueParameter_ = Collections.unmodifiableList(this.valueParameter_);
                }
                if ((i & 4) == 4) {
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
        if ((i & 2) == 2) {
            this.valueParameter_ = Collections.unmodifiableList(this.valueParameter_);
        }
        if ((i & 4) == 4) {
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
