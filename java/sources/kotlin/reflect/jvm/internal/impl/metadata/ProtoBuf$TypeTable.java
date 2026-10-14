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
import kotlin.reflect.jvm.internal.impl.protobuf.o;
import kotlin.reflect.jvm.internal.impl.protobuf.p;

/* JADX INFO: loaded from: classes6.dex */
public final class ProtoBuf$TypeTable extends GeneratedMessageLite implements o {
    public static p<ProtoBuf$TypeTable> PARSER = new a();
    private static final ProtoBuf$TypeTable defaultInstance;
    private int bitField0_;
    private int firstNullable_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private List<ProtoBuf$Type> type_;
    private final d unknownFields;

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$TypeTable> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$TypeTable c(e eVar, f fVar) throws InvalidProtocolBufferException {
            return new ProtoBuf$TypeTable(eVar, fVar);
        }
    }

    public static final class b extends GeneratedMessageLite.b<ProtoBuf$TypeTable, b> implements Object {
        private int b;
        private List<ProtoBuf$Type> c = Collections.emptyList();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f15311d = -1;

        private b() {
            p();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b l() {
            return new b();
        }

        private void m() {
            if ((this.b & 1) != 1) {
                this.c = new ArrayList(this.c);
                this.b |= 1;
            }
        }

        private void p() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a, kotlin.reflect.jvm.internal.impl.protobuf.n.a
        public /* bridge */ /* synthetic */ n.a a(e eVar, f fVar) throws Throwable {
            r(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a
        /* JADX INFO: renamed from: b */
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a a(e eVar, f fVar) throws Throwable {
            r(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        public /* bridge */ /* synthetic */ GeneratedMessageLite.b f(GeneratedMessageLite generatedMessageLite) {
            q((ProtoBuf$TypeTable) generatedMessageLite);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$TypeTable build() {
            ProtoBuf$TypeTable protoBuf$TypeTableJ = j();
            if (protoBuf$TypeTableJ.isInitialized()) {
                return protoBuf$TypeTableJ;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(protoBuf$TypeTableJ);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
        public final boolean isInitialized() {
            for (int i = 0; i < o(); i++) {
                if (!n(i).isInitialized()) {
                    return false;
                }
            }
            return true;
        }

        public ProtoBuf$TypeTable j() {
            ProtoBuf$TypeTable protoBuf$TypeTable = new ProtoBuf$TypeTable(this);
            int i = this.b;
            if ((i & 1) == 1) {
                this.c = Collections.unmodifiableList(this.c);
                this.b &= -2;
            }
            protoBuf$TypeTable.type_ = this.c;
            int i2 = (i & 2) != 2 ? 0 : 1;
            protoBuf$TypeTable.firstNullable_ = this.f15311d;
            protoBuf$TypeTable.bitField0_ = i2;
            return protoBuf$TypeTable;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public b d() {
            b bVarL = l();
            bVarL.q(j());
            return bVarL;
        }

        public ProtoBuf$Type n(int i) {
            return this.c.get(i);
        }

        public int o() {
            return this.c.size();
        }

        public b q(ProtoBuf$TypeTable protoBuf$TypeTable) {
            if (protoBuf$TypeTable == ProtoBuf$TypeTable.getDefaultInstance()) {
                return this;
            }
            if (!protoBuf$TypeTable.type_.isEmpty()) {
                if (this.c.isEmpty()) {
                    this.c = protoBuf$TypeTable.type_;
                    this.b &= -2;
                } else {
                    m();
                    this.c.addAll(protoBuf$TypeTable.type_);
                }
            }
            if (protoBuf$TypeTable.hasFirstNullable()) {
                s(protoBuf$TypeTable.getFirstNullable());
            }
            g(e().b(protoBuf$TypeTable.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        public b r(e eVar, f fVar) throws Throwable {
            ProtoBuf$TypeTable protoBuf$TypeTable = null;
            try {
                try {
                    ProtoBuf$TypeTable protoBuf$TypeTableC = ProtoBuf$TypeTable.PARSER.c(eVar, fVar);
                    if (protoBuf$TypeTableC != null) {
                        q(protoBuf$TypeTableC);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$TypeTable protoBuf$TypeTable2 = (ProtoBuf$TypeTable) e2.getUnfinishedMessage();
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$TypeTable = protoBuf$TypeTable2;
                        if (protoBuf$TypeTable != null) {
                            q(protoBuf$TypeTable);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$TypeTable != null) {
                    q(protoBuf$TypeTable);
                }
                throw th;
            }
        }

        public b s(int i) {
            this.b |= 2;
            this.f15311d = i;
            return this;
        }
    }

    static {
        ProtoBuf$TypeTable protoBuf$TypeTable = new ProtoBuf$TypeTable(true);
        defaultInstance = protoBuf$TypeTable;
        protoBuf$TypeTable.initFields();
    }

    public static ProtoBuf$TypeTable getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.type_ = Collections.emptyList();
        this.firstNullable_ = -1;
    }

    public static b newBuilder() {
        return b.l();
    }

    public int getFirstNullable() {
        return this.firstNullable_;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public p<ProtoBuf$TypeTable> getParserForType() {
        return PARSER;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iO = 0;
        for (int i2 = 0; i2 < this.type_.size(); i2++) {
            iO += CodedOutputStream.s(1, this.type_.get(i2));
        }
        if ((this.bitField0_ & 1) == 1) {
            iO += CodedOutputStream.o(2, this.firstNullable_);
        }
        int size = iO + this.unknownFields.size();
        this.memoizedSerializedSize = size;
        return size;
    }

    public ProtoBuf$Type getType(int i) {
        return this.type_.get(i);
    }

    public int getTypeCount() {
        return this.type_.size();
    }

    public List<ProtoBuf$Type> getTypeList() {
        return this.type_;
    }

    public boolean hasFirstNullable() {
        return (this.bitField0_ & 1) == 1;
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
        for (int i = 0; i < getTypeCount(); i++) {
            if (!getType(i).isInitialized()) {
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
        for (int i = 0; i < this.type_.size(); i++) {
            codedOutputStream.d0(1, this.type_.get(i));
        }
        if ((this.bitField0_ & 1) == 1) {
            codedOutputStream.a0(2, this.firstNullable_);
        }
        codedOutputStream.i0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$TypeTable protoBuf$TypeTable) {
        b bVarNewBuilder = newBuilder();
        bVarNewBuilder.q(protoBuf$TypeTable);
        return bVarNewBuilder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
    public ProtoBuf$TypeTable getDefaultInstanceForType() {
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

    private ProtoBuf$TypeTable(GeneratedMessageLite.b bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = bVar.e();
    }

    private ProtoBuf$TypeTable(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = d.f15412a;
    }

    private ProtoBuf$TypeTable(e eVar, f fVar) throws InvalidProtocolBufferException {
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
                    int iK = eVar.K();
                    if (iK != 0) {
                        if (iK == 10) {
                            if (!(z2 & true)) {
                                this.type_ = new ArrayList();
                                z2 |= true;
                            }
                            this.type_.add((ProtoBuf$Type) eVar.u(ProtoBuf$Type.PARSER, fVar));
                        } else if (iK != 16) {
                            if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                            }
                        } else {
                            this.bitField0_ |= 1;
                            this.firstNullable_ = eVar.s();
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if (z2 & true) {
                        this.type_ = Collections.unmodifiableList(this.type_);
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
            } catch (InvalidProtocolBufferException e2) {
                throw e2.setUnfinishedMessage(this);
            } catch (IOException e3) {
                throw new InvalidProtocolBufferException(e3.getMessage()).setUnfinishedMessage(this);
            }
        }
        if (z2 & true) {
            this.type_ = Collections.unmodifiableList(this.type_);
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
