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
public final class ProtoBuf$EnumEntry extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$EnumEntry> implements Object {
    public static p<ProtoBuf$EnumEntry> PARSER = new a();
    private static final ProtoBuf$EnumEntry defaultInstance;
    private int bitField0_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private int name_;
    private final d unknownFields;

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$EnumEntry> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$EnumEntry c(e eVar, f fVar) throws InvalidProtocolBufferException {
            return new ProtoBuf$EnumEntry(eVar, fVar);
        }
    }

    public static final class b extends GeneratedMessageLite.c<ProtoBuf$EnumEntry, b> implements Object {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f15265d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f15266e;

        private b() {
            r();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b q() {
            return new b();
        }

        private void r() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a, kotlin.reflect.jvm.internal.impl.protobuf.n.a
        public /* bridge */ /* synthetic */ n.a a(e eVar, f fVar) throws Throwable {
            t(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a
        /* JADX INFO: renamed from: b */
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a a(e eVar, f fVar) throws Throwable {
            t(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        public /* bridge */ /* synthetic */ GeneratedMessageLite.b f(GeneratedMessageLite generatedMessageLite) {
            s((ProtoBuf$EnumEntry) generatedMessageLite);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
        public final boolean isInitialized() {
            return k();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$EnumEntry build() {
            ProtoBuf$EnumEntry protoBuf$EnumEntryO = o();
            if (protoBuf$EnumEntryO.isInitialized()) {
                return protoBuf$EnumEntryO;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(protoBuf$EnumEntryO);
        }

        public ProtoBuf$EnumEntry o() {
            ProtoBuf$EnumEntry protoBuf$EnumEntry = new ProtoBuf$EnumEntry(this);
            int i = (this.f15265d & 1) != 1 ? 0 : 1;
            protoBuf$EnumEntry.name_ = this.f15266e;
            protoBuf$EnumEntry.bitField0_ = i;
            return protoBuf$EnumEntry;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public b d() {
            b bVarQ = q();
            bVarQ.s(o());
            return bVarQ;
        }

        public b s(ProtoBuf$EnumEntry protoBuf$EnumEntry) {
            if (protoBuf$EnumEntry == ProtoBuf$EnumEntry.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$EnumEntry.hasName()) {
                u(protoBuf$EnumEntry.getName());
            }
            l(protoBuf$EnumEntry);
            g(e().b(protoBuf$EnumEntry.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        public b t(e eVar, f fVar) throws Throwable {
            ProtoBuf$EnumEntry protoBuf$EnumEntry = null;
            try {
                try {
                    ProtoBuf$EnumEntry protoBuf$EnumEntryC = ProtoBuf$EnumEntry.PARSER.c(eVar, fVar);
                    if (protoBuf$EnumEntryC != null) {
                        s(protoBuf$EnumEntryC);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$EnumEntry protoBuf$EnumEntry2 = (ProtoBuf$EnumEntry) e2.getUnfinishedMessage();
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$EnumEntry = protoBuf$EnumEntry2;
                        if (protoBuf$EnumEntry != null) {
                            s(protoBuf$EnumEntry);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$EnumEntry != null) {
                    s(protoBuf$EnumEntry);
                }
                throw th;
            }
        }

        public b u(int i) {
            this.f15265d |= 1;
            this.f15266e = i;
            return this;
        }
    }

    static {
        ProtoBuf$EnumEntry protoBuf$EnumEntry = new ProtoBuf$EnumEntry(true);
        defaultInstance = protoBuf$EnumEntry;
        protoBuf$EnumEntry.initFields();
    }

    public static ProtoBuf$EnumEntry getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.name_ = 0;
    }

    public static b newBuilder() {
        return b.q();
    }

    public int getName() {
        return this.name_;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public p<ProtoBuf$EnumEntry> getParserForType() {
        return PARSER;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iO = ((this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.o(1, this.name_) : 0) + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = iO;
        return iO;
    }

    public boolean hasName() {
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
            codedOutputStream.a0(1, this.name_);
        }
        aVarNewExtensionWriter.a(200, codedOutputStream);
        codedOutputStream.i0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$EnumEntry protoBuf$EnumEntry) {
        b bVarNewBuilder = newBuilder();
        bVarNewBuilder.s(protoBuf$EnumEntry);
        return bVarNewBuilder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
    public ProtoBuf$EnumEntry getDefaultInstanceForType() {
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

    private ProtoBuf$EnumEntry(GeneratedMessageLite.c<ProtoBuf$EnumEntry, ?> cVar) {
        super(cVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = cVar.e();
    }

    private ProtoBuf$EnumEntry(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = d.f15412a;
    }

    private ProtoBuf$EnumEntry(e eVar, f fVar) throws InvalidProtocolBufferException {
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
                        if (iK != 8) {
                            if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                            }
                        } else {
                            this.bitField0_ |= 1;
                            this.name_ = eVar.s();
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
