package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.d;
import kotlin.reflect.jvm.internal.impl.protobuf.e;
import kotlin.reflect.jvm.internal.impl.protobuf.f;
import kotlin.reflect.jvm.internal.impl.protobuf.k;
import kotlin.reflect.jvm.internal.impl.protobuf.l;
import kotlin.reflect.jvm.internal.impl.protobuf.n;
import kotlin.reflect.jvm.internal.impl.protobuf.o;
import kotlin.reflect.jvm.internal.impl.protobuf.p;
import kotlin.reflect.jvm.internal.impl.protobuf.q;

/* JADX INFO: loaded from: classes6.dex */
public final class ProtoBuf$StringTable extends GeneratedMessageLite implements o {
    public static p<ProtoBuf$StringTable> PARSER = new a();
    private static final ProtoBuf$StringTable defaultInstance;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private l string_;
    private final d unknownFields;

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$StringTable> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$StringTable c(e eVar, f fVar) throws InvalidProtocolBufferException {
            return new ProtoBuf$StringTable(eVar, fVar);
        }
    }

    public static final class b extends GeneratedMessageLite.b<ProtoBuf$StringTable, b> implements Object {
        private int b;
        private l c = k.b;

        private b() {
            n();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b l() {
            return new b();
        }

        private void m() {
            if ((this.b & 1) != 1) {
                this.c = new k(this.c);
                this.b |= 1;
            }
        }

        private void n() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a, kotlin.reflect.jvm.internal.impl.protobuf.n.a
        public /* bridge */ /* synthetic */ n.a a(e eVar, f fVar) throws Throwable {
            p(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a
        /* JADX INFO: renamed from: b */
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a a(e eVar, f fVar) throws Throwable {
            p(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        public /* bridge */ /* synthetic */ GeneratedMessageLite.b f(GeneratedMessageLite generatedMessageLite) {
            o((ProtoBuf$StringTable) generatedMessageLite);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$StringTable build() {
            ProtoBuf$StringTable protoBuf$StringTableJ = j();
            if (protoBuf$StringTableJ.isInitialized()) {
                return protoBuf$StringTableJ;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(protoBuf$StringTableJ);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
        public final boolean isInitialized() {
            return true;
        }

        public ProtoBuf$StringTable j() {
            ProtoBuf$StringTable protoBuf$StringTable = new ProtoBuf$StringTable(this);
            if ((this.b & 1) == 1) {
                this.c = this.c.k();
                this.b &= -2;
            }
            protoBuf$StringTable.string_ = this.c;
            return protoBuf$StringTable;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public b d() {
            b bVarL = l();
            bVarL.o(j());
            return bVarL;
        }

        public b o(ProtoBuf$StringTable protoBuf$StringTable) {
            if (protoBuf$StringTable == ProtoBuf$StringTable.getDefaultInstance()) {
                return this;
            }
            if (!protoBuf$StringTable.string_.isEmpty()) {
                if (this.c.isEmpty()) {
                    this.c = protoBuf$StringTable.string_;
                    this.b &= -2;
                } else {
                    m();
                    this.c.addAll(protoBuf$StringTable.string_);
                }
            }
            g(e().b(protoBuf$StringTable.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        public b p(e eVar, f fVar) throws Throwable {
            ProtoBuf$StringTable protoBuf$StringTable = null;
            try {
                try {
                    ProtoBuf$StringTable protoBuf$StringTableC = ProtoBuf$StringTable.PARSER.c(eVar, fVar);
                    if (protoBuf$StringTableC != null) {
                        o(protoBuf$StringTableC);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$StringTable protoBuf$StringTable2 = (ProtoBuf$StringTable) e2.getUnfinishedMessage();
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$StringTable = protoBuf$StringTable2;
                        if (protoBuf$StringTable != null) {
                            o(protoBuf$StringTable);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$StringTable != null) {
                    o(protoBuf$StringTable);
                }
                throw th;
            }
        }
    }

    static {
        ProtoBuf$StringTable protoBuf$StringTable = new ProtoBuf$StringTable(true);
        defaultInstance = protoBuf$StringTable;
        protoBuf$StringTable.initFields();
    }

    public static ProtoBuf$StringTable getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.string_ = k.b;
    }

    public static b newBuilder() {
        return b.l();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public p<ProtoBuf$StringTable> getParserForType() {
        return PARSER;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iE = 0;
        for (int i2 = 0; i2 < this.string_.size(); i2++) {
            iE += CodedOutputStream.e(this.string_.e(i2));
        }
        int size = 0 + iE + (getStringList().size() * 1) + this.unknownFields.size();
        this.memoizedSerializedSize = size;
        return size;
    }

    public String getString(int i) {
        return this.string_.get(i);
    }

    public q getStringList() {
        return this.string_;
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
        for (int i = 0; i < this.string_.size(); i++) {
            codedOutputStream.O(1, this.string_.e(i));
        }
        codedOutputStream.i0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$StringTable protoBuf$StringTable) {
        b bVarNewBuilder = newBuilder();
        bVarNewBuilder.o(protoBuf$StringTable);
        return bVarNewBuilder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
    public ProtoBuf$StringTable getDefaultInstanceForType() {
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

    private ProtoBuf$StringTable(GeneratedMessageLite.b bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = bVar.e();
    }

    private ProtoBuf$StringTable(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = d.f15412a;
    }

    private ProtoBuf$StringTable(e eVar, f fVar) throws InvalidProtocolBufferException {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        initFields();
        d.b bVarT = d.t();
        CodedOutputStream codedOutputStreamJ = CodedOutputStream.J(bVarT, 1);
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            try {
                try {
                    try {
                        int iK = eVar.K();
                        if (iK != 0) {
                            if (iK != 10) {
                                if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                                }
                            } else {
                                d dVarL = eVar.l();
                                if (!(z2 & true)) {
                                    this.string_ = new k();
                                    z2 |= true;
                                }
                                this.string_.g(dVarL);
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
                if (z2 & true) {
                    this.string_ = this.string_.k();
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
        if (z2 & true) {
            this.string_ = this.string_.k();
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
