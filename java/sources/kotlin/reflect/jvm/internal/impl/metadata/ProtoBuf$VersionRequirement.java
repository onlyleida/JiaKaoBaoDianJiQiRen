package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
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
public final class ProtoBuf$VersionRequirement extends GeneratedMessageLite implements o {
    public static p<ProtoBuf$VersionRequirement> PARSER = new a();
    private static final ProtoBuf$VersionRequirement defaultInstance;
    private int bitField0_;
    private int errorCode_;
    private Level level_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private int message_;
    private final d unknownFields;
    private int versionFull_;
    private VersionKind versionKind_;
    private int version_;

    public enum Level implements h.a {
        WARNING(0, 0),
        ERROR(1, 1),
        HIDDEN(2, 2);

        private static h.b<Level> internalValueMap = new a();
        private final int value;

        static class a implements h.b<Level> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.b
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Level a(int i) {
                return Level.valueOf(i);
            }
        }

        Level(int i, int i2) {
            this.value = i2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
        public final int getNumber() {
            return this.value;
        }

        public static Level valueOf(int i) {
            if (i == 0) {
                return WARNING;
            }
            if (i == 1) {
                return ERROR;
            }
            if (i != 2) {
                return null;
            }
            return HIDDEN;
        }
    }

    public enum VersionKind implements h.a {
        LANGUAGE_VERSION(0, 0),
        COMPILER_VERSION(1, 1),
        API_VERSION(2, 2);

        private static h.b<VersionKind> internalValueMap = new a();
        private final int value;

        static class a implements h.b<VersionKind> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.b
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public VersionKind a(int i) {
                return VersionKind.valueOf(i);
            }
        }

        VersionKind(int i, int i2) {
            this.value = i2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
        public final int getNumber() {
            return this.value;
        }

        public static VersionKind valueOf(int i) {
            if (i == 0) {
                return LANGUAGE_VERSION;
            }
            if (i == 1) {
                return COMPILER_VERSION;
            }
            if (i != 2) {
                return null;
            }
            return API_VERSION;
        }
    }

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$VersionRequirement> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$VersionRequirement c(e eVar, f fVar) throws InvalidProtocolBufferException {
            return new ProtoBuf$VersionRequirement(eVar, fVar);
        }
    }

    public static final class b extends GeneratedMessageLite.b<ProtoBuf$VersionRequirement, b> implements Object {
        private int b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f15317d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f15319f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f15320g;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Level f15318e = Level.ERROR;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private VersionKind f15321h = VersionKind.LANGUAGE_VERSION;

        private b() {
            m();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b l() {
            return new b();
        }

        private void m() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a, kotlin.reflect.jvm.internal.impl.protobuf.n.a
        public /* bridge */ /* synthetic */ n.a a(e eVar, f fVar) throws Throwable {
            o(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a
        /* JADX INFO: renamed from: b */
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a a(e eVar, f fVar) throws Throwable {
            o(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        public /* bridge */ /* synthetic */ GeneratedMessageLite.b f(GeneratedMessageLite generatedMessageLite) {
            n((ProtoBuf$VersionRequirement) generatedMessageLite);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$VersionRequirement build() {
            ProtoBuf$VersionRequirement protoBuf$VersionRequirementJ = j();
            if (protoBuf$VersionRequirementJ.isInitialized()) {
                return protoBuf$VersionRequirementJ;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(protoBuf$VersionRequirementJ);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
        public final boolean isInitialized() {
            return true;
        }

        public ProtoBuf$VersionRequirement j() {
            ProtoBuf$VersionRequirement protoBuf$VersionRequirement = new ProtoBuf$VersionRequirement(this);
            int i = this.b;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$VersionRequirement.version_ = this.c;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$VersionRequirement.versionFull_ = this.f15317d;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$VersionRequirement.level_ = this.f15318e;
            if ((i & 8) == 8) {
                i2 |= 8;
            }
            protoBuf$VersionRequirement.errorCode_ = this.f15319f;
            if ((i & 16) == 16) {
                i2 |= 16;
            }
            protoBuf$VersionRequirement.message_ = this.f15320g;
            if ((i & 32) == 32) {
                i2 |= 32;
            }
            protoBuf$VersionRequirement.versionKind_ = this.f15321h;
            protoBuf$VersionRequirement.bitField0_ = i2;
            return protoBuf$VersionRequirement;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public b d() {
            b bVarL = l();
            bVarL.n(j());
            return bVarL;
        }

        public b n(ProtoBuf$VersionRequirement protoBuf$VersionRequirement) {
            if (protoBuf$VersionRequirement == ProtoBuf$VersionRequirement.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$VersionRequirement.hasVersion()) {
                s(protoBuf$VersionRequirement.getVersion());
            }
            if (protoBuf$VersionRequirement.hasVersionFull()) {
                t(protoBuf$VersionRequirement.getVersionFull());
            }
            if (protoBuf$VersionRequirement.hasLevel()) {
                q(protoBuf$VersionRequirement.getLevel());
            }
            if (protoBuf$VersionRequirement.hasErrorCode()) {
                p(protoBuf$VersionRequirement.getErrorCode());
            }
            if (protoBuf$VersionRequirement.hasMessage()) {
                r(protoBuf$VersionRequirement.getMessage());
            }
            if (protoBuf$VersionRequirement.hasVersionKind()) {
                u(protoBuf$VersionRequirement.getVersionKind());
            }
            g(e().b(protoBuf$VersionRequirement.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        public b o(e eVar, f fVar) throws Throwable {
            ProtoBuf$VersionRequirement protoBuf$VersionRequirement = null;
            try {
                try {
                    ProtoBuf$VersionRequirement protoBuf$VersionRequirementC = ProtoBuf$VersionRequirement.PARSER.c(eVar, fVar);
                    if (protoBuf$VersionRequirementC != null) {
                        n(protoBuf$VersionRequirementC);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$VersionRequirement protoBuf$VersionRequirement2 = (ProtoBuf$VersionRequirement) e2.getUnfinishedMessage();
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$VersionRequirement = protoBuf$VersionRequirement2;
                        if (protoBuf$VersionRequirement != null) {
                            n(protoBuf$VersionRequirement);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$VersionRequirement != null) {
                    n(protoBuf$VersionRequirement);
                }
                throw th;
            }
        }

        public b p(int i) {
            this.b |= 8;
            this.f15319f = i;
            return this;
        }

        public b q(Level level) {
            Objects.requireNonNull(level);
            this.b |= 4;
            this.f15318e = level;
            return this;
        }

        public b r(int i) {
            this.b |= 16;
            this.f15320g = i;
            return this;
        }

        public b s(int i) {
            this.b |= 1;
            this.c = i;
            return this;
        }

        public b t(int i) {
            this.b |= 2;
            this.f15317d = i;
            return this;
        }

        public b u(VersionKind versionKind) {
            Objects.requireNonNull(versionKind);
            this.b |= 32;
            this.f15321h = versionKind;
            return this;
        }
    }

    static {
        ProtoBuf$VersionRequirement protoBuf$VersionRequirement = new ProtoBuf$VersionRequirement(true);
        defaultInstance = protoBuf$VersionRequirement;
        protoBuf$VersionRequirement.initFields();
    }

    public static ProtoBuf$VersionRequirement getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.version_ = 0;
        this.versionFull_ = 0;
        this.level_ = Level.ERROR;
        this.errorCode_ = 0;
        this.message_ = 0;
        this.versionKind_ = VersionKind.LANGUAGE_VERSION;
    }

    public static b newBuilder() {
        return b.l();
    }

    public int getErrorCode() {
        return this.errorCode_;
    }

    public Level getLevel() {
        return this.level_;
    }

    public int getMessage() {
        return this.message_;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public p<ProtoBuf$VersionRequirement> getParserForType() {
        return PARSER;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iO = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.o(1, this.version_) : 0;
        if ((this.bitField0_ & 2) == 2) {
            iO += CodedOutputStream.o(2, this.versionFull_);
        }
        if ((this.bitField0_ & 4) == 4) {
            iO += CodedOutputStream.h(3, this.level_.getNumber());
        }
        if ((this.bitField0_ & 8) == 8) {
            iO += CodedOutputStream.o(4, this.errorCode_);
        }
        if ((this.bitField0_ & 16) == 16) {
            iO += CodedOutputStream.o(5, this.message_);
        }
        if ((this.bitField0_ & 32) == 32) {
            iO += CodedOutputStream.h(6, this.versionKind_.getNumber());
        }
        int size = iO + this.unknownFields.size();
        this.memoizedSerializedSize = size;
        return size;
    }

    public int getVersion() {
        return this.version_;
    }

    public int getVersionFull() {
        return this.versionFull_;
    }

    public VersionKind getVersionKind() {
        return this.versionKind_;
    }

    public boolean hasErrorCode() {
        return (this.bitField0_ & 8) == 8;
    }

    public boolean hasLevel() {
        return (this.bitField0_ & 4) == 4;
    }

    public boolean hasMessage() {
        return (this.bitField0_ & 16) == 16;
    }

    public boolean hasVersion() {
        return (this.bitField0_ & 1) == 1;
    }

    public boolean hasVersionFull() {
        return (this.bitField0_ & 2) == 2;
    }

    public boolean hasVersionKind() {
        return (this.bitField0_ & 32) == 32;
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
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if ((this.bitField0_ & 1) == 1) {
            codedOutputStream.a0(1, this.version_);
        }
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.a0(2, this.versionFull_);
        }
        if ((this.bitField0_ & 4) == 4) {
            codedOutputStream.S(3, this.level_.getNumber());
        }
        if ((this.bitField0_ & 8) == 8) {
            codedOutputStream.a0(4, this.errorCode_);
        }
        if ((this.bitField0_ & 16) == 16) {
            codedOutputStream.a0(5, this.message_);
        }
        if ((this.bitField0_ & 32) == 32) {
            codedOutputStream.S(6, this.versionKind_.getNumber());
        }
        codedOutputStream.i0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$VersionRequirement protoBuf$VersionRequirement) {
        b bVarNewBuilder = newBuilder();
        bVarNewBuilder.n(protoBuf$VersionRequirement);
        return bVarNewBuilder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
    public ProtoBuf$VersionRequirement getDefaultInstanceForType() {
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

    private ProtoBuf$VersionRequirement(GeneratedMessageLite.b bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = bVar.e();
    }

    private ProtoBuf$VersionRequirement(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = d.f15412a;
    }

    private ProtoBuf$VersionRequirement(e eVar, f fVar) throws InvalidProtocolBufferException {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        initFields();
        d.b bVarT = d.t();
        CodedOutputStream codedOutputStreamJ = CodedOutputStream.J(bVarT, 1);
        boolean z = false;
        while (!z) {
            try {
                try {
                    int iK = eVar.K();
                    if (iK != 0) {
                        if (iK == 8) {
                            this.bitField0_ |= 1;
                            this.version_ = eVar.s();
                        } else if (iK == 16) {
                            this.bitField0_ |= 2;
                            this.versionFull_ = eVar.s();
                        } else if (iK == 24) {
                            int iN = eVar.n();
                            Level levelValueOf = Level.valueOf(iN);
                            if (levelValueOf == null) {
                                codedOutputStreamJ.o0(iK);
                                codedOutputStreamJ.o0(iN);
                            } else {
                                this.bitField0_ |= 4;
                                this.level_ = levelValueOf;
                            }
                        } else if (iK == 32) {
                            this.bitField0_ |= 8;
                            this.errorCode_ = eVar.s();
                        } else if (iK == 40) {
                            this.bitField0_ |= 16;
                            this.message_ = eVar.s();
                        } else if (iK != 48) {
                            if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                            }
                        } else {
                            int iN2 = eVar.n();
                            VersionKind versionKindValueOf = VersionKind.valueOf(iN2);
                            if (versionKindValueOf == null) {
                                codedOutputStreamJ.o0(iK);
                                codedOutputStreamJ.o0(iN2);
                            } else {
                                this.bitField0_ |= 32;
                                this.versionKind_ = versionKindValueOf;
                            }
                        }
                    }
                    z = true;
                } catch (InvalidProtocolBufferException e2) {
                    throw e2.setUnfinishedMessage(this);
                } catch (IOException e3) {
                    throw new InvalidProtocolBufferException(e3.getMessage()).setUnfinishedMessage(this);
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
