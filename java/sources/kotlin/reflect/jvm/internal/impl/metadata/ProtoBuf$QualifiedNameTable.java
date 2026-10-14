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
public final class ProtoBuf$QualifiedNameTable extends GeneratedMessageLite implements o {
    public static p<ProtoBuf$QualifiedNameTable> PARSER = new a();
    private static final ProtoBuf$QualifiedNameTable defaultInstance;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private List<QualifiedName> qualifiedName_;
    private final d unknownFields;

    public static final class QualifiedName extends GeneratedMessageLite implements o {
        public static p<QualifiedName> PARSER = new a();
        private static final QualifiedName defaultInstance;
        private int bitField0_;
        private Kind kind_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private int parentQualifiedName_;
        private int shortName_;
        private final d unknownFields;

        public enum Kind implements h.a {
            CLASS(0, 0),
            PACKAGE(1, 1),
            LOCAL(2, 2);

            private static h.b<Kind> internalValueMap = new a();
            private final int value;

            static class a implements h.b<Kind> {
                a() {
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.b
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public Kind a(int i) {
                    return Kind.valueOf(i);
                }
            }

            Kind(int i, int i2) {
                this.value = i2;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final int getNumber() {
                return this.value;
            }

            public static Kind valueOf(int i) {
                if (i == 0) {
                    return CLASS;
                }
                if (i == 1) {
                    return PACKAGE;
                }
                if (i != 2) {
                    return null;
                }
                return LOCAL;
            }
        }

        static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<QualifiedName> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
            /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
            public QualifiedName c(e eVar, f fVar) throws InvalidProtocolBufferException {
                return new QualifiedName(eVar, fVar);
            }
        }

        public static final class b extends GeneratedMessageLite.b<QualifiedName, b> implements Object {
            private int b;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f15292d;
            private int c = -1;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private Kind f15293e = Kind.PACKAGE;

            private b() {
                n();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static b l() {
                return new b();
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
                o((QualifiedName) generatedMessageLite);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public QualifiedName build() {
                QualifiedName qualifiedNameJ = j();
                if (qualifiedNameJ.isInitialized()) {
                    return qualifiedNameJ;
                }
                throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(qualifiedNameJ);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
            public final boolean isInitialized() {
                return m();
            }

            public QualifiedName j() {
                QualifiedName qualifiedName = new QualifiedName(this);
                int i = this.b;
                int i2 = (i & 1) != 1 ? 0 : 1;
                qualifiedName.parentQualifiedName_ = this.c;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                qualifiedName.shortName_ = this.f15292d;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                qualifiedName.kind_ = this.f15293e;
                qualifiedName.bitField0_ = i2;
                return qualifiedName;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public b d() {
                b bVarL = l();
                bVarL.o(j());
                return bVarL;
            }

            public boolean m() {
                return (this.b & 2) == 2;
            }

            public b o(QualifiedName qualifiedName) {
                if (qualifiedName == QualifiedName.getDefaultInstance()) {
                    return this;
                }
                if (qualifiedName.hasParentQualifiedName()) {
                    r(qualifiedName.getParentQualifiedName());
                }
                if (qualifiedName.hasShortName()) {
                    s(qualifiedName.getShortName());
                }
                if (qualifiedName.hasKind()) {
                    q(qualifiedName.getKind());
                }
                g(e().b(qualifiedName.unknownFields));
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:15:0x001d  */
            public b p(e eVar, f fVar) throws Throwable {
                QualifiedName qualifiedName = null;
                try {
                    try {
                        QualifiedName qualifiedNameC = QualifiedName.PARSER.c(eVar, fVar);
                        if (qualifiedNameC != null) {
                            o(qualifiedNameC);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        QualifiedName qualifiedName2 = (QualifiedName) e2.getUnfinishedMessage();
                        try {
                            throw e2;
                        } catch (Throwable th) {
                            th = th;
                            qualifiedName = qualifiedName2;
                            if (qualifiedName != null) {
                                o(qualifiedName);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (qualifiedName != null) {
                        o(qualifiedName);
                    }
                    throw th;
                }
            }

            public b q(Kind kind) {
                Objects.requireNonNull(kind);
                this.b |= 4;
                this.f15293e = kind;
                return this;
            }

            public b r(int i) {
                this.b |= 1;
                this.c = i;
                return this;
            }

            public b s(int i) {
                this.b |= 2;
                this.f15292d = i;
                return this;
            }
        }

        static {
            QualifiedName qualifiedName = new QualifiedName(true);
            defaultInstance = qualifiedName;
            qualifiedName.initFields();
        }

        public static QualifiedName getDefaultInstance() {
            return defaultInstance;
        }

        private void initFields() {
            this.parentQualifiedName_ = -1;
            this.shortName_ = 0;
            this.kind_ = Kind.PACKAGE;
        }

        public static b newBuilder() {
            return b.l();
        }

        public Kind getKind() {
            return this.kind_;
        }

        public int getParentQualifiedName() {
            return this.parentQualifiedName_;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
        public p<QualifiedName> getParserForType() {
            return PARSER;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iO = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.o(1, this.parentQualifiedName_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iO += CodedOutputStream.o(2, this.shortName_);
            }
            if ((this.bitField0_ & 4) == 4) {
                iO += CodedOutputStream.h(3, this.kind_.getNumber());
            }
            int size = iO + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        public int getShortName() {
            return this.shortName_;
        }

        public boolean hasKind() {
            return (this.bitField0_ & 4) == 4;
        }

        public boolean hasParentQualifiedName() {
            return (this.bitField0_ & 1) == 1;
        }

        public boolean hasShortName() {
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
            if (hasShortName()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.a0(1, this.parentQualifiedName_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.a0(2, this.shortName_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.S(3, this.kind_.getNumber());
            }
            codedOutputStream.i0(this.unknownFields);
        }

        public static b newBuilder(QualifiedName qualifiedName) {
            b bVarNewBuilder = newBuilder();
            bVarNewBuilder.o(qualifiedName);
            return bVarNewBuilder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
        public QualifiedName getDefaultInstanceForType() {
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

        private QualifiedName(GeneratedMessageLite.b bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = bVar.e();
        }

        private QualifiedName(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = d.f15412a;
        }

        private QualifiedName(e eVar, f fVar) throws InvalidProtocolBufferException {
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
                                this.parentQualifiedName_ = eVar.s();
                            } else if (iK == 16) {
                                this.bitField0_ |= 2;
                                this.shortName_ = eVar.s();
                            } else if (iK != 24) {
                                if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                                }
                            } else {
                                int iN = eVar.n();
                                Kind kindValueOf = Kind.valueOf(iN);
                                if (kindValueOf == null) {
                                    codedOutputStreamJ.o0(iK);
                                    codedOutputStreamJ.o0(iN);
                                } else {
                                    this.bitField0_ |= 4;
                                    this.kind_ = kindValueOf;
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

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$QualifiedNameTable> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$QualifiedNameTable c(e eVar, f fVar) throws InvalidProtocolBufferException {
            return new ProtoBuf$QualifiedNameTable(eVar, fVar);
        }
    }

    public static final class b extends GeneratedMessageLite.b<ProtoBuf$QualifiedNameTable, b> implements Object {
        private int b;
        private List<QualifiedName> c = Collections.emptyList();

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
            q((ProtoBuf$QualifiedNameTable) generatedMessageLite);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$QualifiedNameTable build() {
            ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTableJ = j();
            if (protoBuf$QualifiedNameTableJ.isInitialized()) {
                return protoBuf$QualifiedNameTableJ;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(protoBuf$QualifiedNameTableJ);
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

        public ProtoBuf$QualifiedNameTable j() {
            ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable = new ProtoBuf$QualifiedNameTable(this);
            if ((this.b & 1) == 1) {
                this.c = Collections.unmodifiableList(this.c);
                this.b &= -2;
            }
            protoBuf$QualifiedNameTable.qualifiedName_ = this.c;
            return protoBuf$QualifiedNameTable;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public b d() {
            b bVarL = l();
            bVarL.q(j());
            return bVarL;
        }

        public QualifiedName n(int i) {
            return this.c.get(i);
        }

        public int o() {
            return this.c.size();
        }

        public b q(ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable) {
            if (protoBuf$QualifiedNameTable == ProtoBuf$QualifiedNameTable.getDefaultInstance()) {
                return this;
            }
            if (!protoBuf$QualifiedNameTable.qualifiedName_.isEmpty()) {
                if (this.c.isEmpty()) {
                    this.c = protoBuf$QualifiedNameTable.qualifiedName_;
                    this.b &= -2;
                } else {
                    m();
                    this.c.addAll(protoBuf$QualifiedNameTable.qualifiedName_);
                }
            }
            g(e().b(protoBuf$QualifiedNameTable.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        public b r(e eVar, f fVar) throws Throwable {
            ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable = null;
            try {
                try {
                    ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTableC = ProtoBuf$QualifiedNameTable.PARSER.c(eVar, fVar);
                    if (protoBuf$QualifiedNameTableC != null) {
                        q(protoBuf$QualifiedNameTableC);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable2 = (ProtoBuf$QualifiedNameTable) e2.getUnfinishedMessage();
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$QualifiedNameTable = protoBuf$QualifiedNameTable2;
                        if (protoBuf$QualifiedNameTable != null) {
                            q(protoBuf$QualifiedNameTable);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$QualifiedNameTable != null) {
                    q(protoBuf$QualifiedNameTable);
                }
                throw th;
            }
        }
    }

    static {
        ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable = new ProtoBuf$QualifiedNameTable(true);
        defaultInstance = protoBuf$QualifiedNameTable;
        protoBuf$QualifiedNameTable.initFields();
    }

    public static ProtoBuf$QualifiedNameTable getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.qualifiedName_ = Collections.emptyList();
    }

    public static b newBuilder() {
        return b.l();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public p<ProtoBuf$QualifiedNameTable> getParserForType() {
        return PARSER;
    }

    public QualifiedName getQualifiedName(int i) {
        return this.qualifiedName_.get(i);
    }

    public int getQualifiedNameCount() {
        return this.qualifiedName_.size();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iS = 0;
        for (int i2 = 0; i2 < this.qualifiedName_.size(); i2++) {
            iS += CodedOutputStream.s(1, this.qualifiedName_.get(i2));
        }
        int size = iS + this.unknownFields.size();
        this.memoizedSerializedSize = size;
        return size;
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
        for (int i = 0; i < getQualifiedNameCount(); i++) {
            if (!getQualifiedName(i).isInitialized()) {
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
        for (int i = 0; i < this.qualifiedName_.size(); i++) {
            codedOutputStream.d0(1, this.qualifiedName_.get(i));
        }
        codedOutputStream.i0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable) {
        b bVarNewBuilder = newBuilder();
        bVarNewBuilder.q(protoBuf$QualifiedNameTable);
        return bVarNewBuilder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
    public ProtoBuf$QualifiedNameTable getDefaultInstanceForType() {
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

    private ProtoBuf$QualifiedNameTable(GeneratedMessageLite.b bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = bVar.e();
    }

    private ProtoBuf$QualifiedNameTable(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = d.f15412a;
    }

    private ProtoBuf$QualifiedNameTable(e eVar, f fVar) throws InvalidProtocolBufferException {
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
                        if (iK != 10) {
                            if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                            }
                        } else {
                            if (!(z2 & true)) {
                                this.qualifiedName_ = new ArrayList();
                                z2 |= true;
                            }
                            this.qualifiedName_.add((QualifiedName) eVar.u(QualifiedName.PARSER, fVar));
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if (z2 & true) {
                        this.qualifiedName_ = Collections.unmodifiableList(this.qualifiedName_);
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
            this.qualifiedName_ = Collections.unmodifiableList(this.qualifiedName_);
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
