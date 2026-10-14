package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
import java.io.InputStream;
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

/* JADX INFO: loaded from: classes6.dex */
public final class ProtoBuf$Package extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$Package> implements Object {
    public static p<ProtoBuf$Package> PARSER = new a();
    private static final ProtoBuf$Package defaultInstance;
    private int bitField0_;
    private List<ProtoBuf$Function> function_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private List<ProtoBuf$Property> property_;
    private List<ProtoBuf$TypeAlias> typeAlias_;
    private ProtoBuf$TypeTable typeTable_;
    private final d unknownFields;
    private ProtoBuf$VersionRequirementTable versionRequirementTable_;

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$Package> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Package c(e eVar, f fVar) throws InvalidProtocolBufferException {
            return new ProtoBuf$Package(eVar, fVar);
        }
    }

    public static final class b extends GeneratedMessageLite.c<ProtoBuf$Package, b> implements Object {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f15277d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<ProtoBuf$Function> f15278e = Collections.emptyList();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private List<ProtoBuf$Property> f15279f = Collections.emptyList();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private List<ProtoBuf$TypeAlias> f15280g = Collections.emptyList();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private ProtoBuf$TypeTable f15281h = ProtoBuf$TypeTable.getDefaultInstance();
        private ProtoBuf$VersionRequirementTable i = ProtoBuf$VersionRequirementTable.getDefaultInstance();

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
            if ((this.f15277d & 1) != 1) {
                this.f15278e = new ArrayList(this.f15278e);
                this.f15277d |= 1;
            }
        }

        private void s() {
            if ((this.f15277d & 2) != 2) {
                this.f15279f = new ArrayList(this.f15279f);
                this.f15277d |= 2;
            }
        }

        private void t() {
            if ((this.f15277d & 4) != 4) {
                this.f15280g = new ArrayList(this.f15280g);
                this.f15277d |= 4;
            }
        }

        public ProtoBuf$TypeTable A() {
            return this.f15281h;
        }

        public boolean B() {
            return (this.f15277d & 8) == 8;
        }

        public b D(ProtoBuf$Package protoBuf$Package) {
            if (protoBuf$Package == ProtoBuf$Package.getDefaultInstance()) {
                return this;
            }
            if (!protoBuf$Package.function_.isEmpty()) {
                if (this.f15278e.isEmpty()) {
                    this.f15278e = protoBuf$Package.function_;
                    this.f15277d &= -2;
                } else {
                    r();
                    this.f15278e.addAll(protoBuf$Package.function_);
                }
            }
            if (!protoBuf$Package.property_.isEmpty()) {
                if (this.f15279f.isEmpty()) {
                    this.f15279f = protoBuf$Package.property_;
                    this.f15277d &= -3;
                } else {
                    s();
                    this.f15279f.addAll(protoBuf$Package.property_);
                }
            }
            if (!protoBuf$Package.typeAlias_.isEmpty()) {
                if (this.f15280g.isEmpty()) {
                    this.f15280g = protoBuf$Package.typeAlias_;
                    this.f15277d &= -5;
                } else {
                    t();
                    this.f15280g.addAll(protoBuf$Package.typeAlias_);
                }
            }
            if (protoBuf$Package.hasTypeTable()) {
                F(protoBuf$Package.getTypeTable());
            }
            if (protoBuf$Package.hasVersionRequirementTable()) {
                G(protoBuf$Package.getVersionRequirementTable());
            }
            l(protoBuf$Package);
            g(e().b(protoBuf$Package.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        public b E(e eVar, f fVar) throws Throwable {
            ProtoBuf$Package protoBuf$Package = null;
            try {
                try {
                    ProtoBuf$Package protoBuf$PackageC = ProtoBuf$Package.PARSER.c(eVar, fVar);
                    if (protoBuf$PackageC != null) {
                        D(protoBuf$PackageC);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$Package protoBuf$Package2 = (ProtoBuf$Package) e2.getUnfinishedMessage();
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Package = protoBuf$Package2;
                        if (protoBuf$Package != null) {
                            D(protoBuf$Package);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Package != null) {
                    D(protoBuf$Package);
                }
                throw th;
            }
        }

        public b F(ProtoBuf$TypeTable protoBuf$TypeTable) {
            if ((this.f15277d & 8) != 8 || this.f15281h == ProtoBuf$TypeTable.getDefaultInstance()) {
                this.f15281h = protoBuf$TypeTable;
            } else {
                ProtoBuf$TypeTable.b bVarNewBuilder = ProtoBuf$TypeTable.newBuilder(this.f15281h);
                bVarNewBuilder.q(protoBuf$TypeTable);
                this.f15281h = bVarNewBuilder.j();
            }
            this.f15277d |= 8;
            return this;
        }

        public b G(ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable) {
            if ((this.f15277d & 16) != 16 || this.i == ProtoBuf$VersionRequirementTable.getDefaultInstance()) {
                this.i = protoBuf$VersionRequirementTable;
            } else {
                ProtoBuf$VersionRequirementTable.b bVarNewBuilder = ProtoBuf$VersionRequirementTable.newBuilder(this.i);
                bVarNewBuilder.o(protoBuf$VersionRequirementTable);
                this.i = bVarNewBuilder.j();
            }
            this.f15277d |= 16;
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
            D((ProtoBuf$Package) generatedMessageLite);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
        public final boolean isInitialized() {
            for (int i = 0; i < v(); i++) {
                if (!u(i).isInitialized()) {
                    return false;
                }
            }
            for (int i2 = 0; i2 < x(); i2++) {
                if (!w(i2).isInitialized()) {
                    return false;
                }
            }
            for (int i3 = 0; i3 < z(); i3++) {
                if (!y(i3).isInitialized()) {
                    return false;
                }
            }
            return (!B() || A().isInitialized()) && k();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Package build() {
            ProtoBuf$Package protoBuf$PackageO = o();
            if (protoBuf$PackageO.isInitialized()) {
                return protoBuf$PackageO;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(protoBuf$PackageO);
        }

        public ProtoBuf$Package o() {
            ProtoBuf$Package protoBuf$Package = new ProtoBuf$Package(this);
            int i = this.f15277d;
            if ((i & 1) == 1) {
                this.f15278e = Collections.unmodifiableList(this.f15278e);
                this.f15277d &= -2;
            }
            protoBuf$Package.function_ = this.f15278e;
            if ((this.f15277d & 2) == 2) {
                this.f15279f = Collections.unmodifiableList(this.f15279f);
                this.f15277d &= -3;
            }
            protoBuf$Package.property_ = this.f15279f;
            if ((this.f15277d & 4) == 4) {
                this.f15280g = Collections.unmodifiableList(this.f15280g);
                this.f15277d &= -5;
            }
            protoBuf$Package.typeAlias_ = this.f15280g;
            int i2 = (i & 8) != 8 ? 0 : 1;
            protoBuf$Package.typeTable_ = this.f15281h;
            if ((i & 16) == 16) {
                i2 |= 2;
            }
            protoBuf$Package.versionRequirementTable_ = this.i;
            protoBuf$Package.bitField0_ = i2;
            return protoBuf$Package;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public b d() {
            b bVarQ = q();
            bVarQ.D(o());
            return bVarQ;
        }

        public ProtoBuf$Function u(int i) {
            return this.f15278e.get(i);
        }

        public int v() {
            return this.f15278e.size();
        }

        public ProtoBuf$Property w(int i) {
            return this.f15279f.get(i);
        }

        public int x() {
            return this.f15279f.size();
        }

        public ProtoBuf$TypeAlias y(int i) {
            return this.f15280g.get(i);
        }

        public int z() {
            return this.f15280g.size();
        }
    }

    static {
        ProtoBuf$Package protoBuf$Package = new ProtoBuf$Package(true);
        defaultInstance = protoBuf$Package;
        protoBuf$Package.initFields();
    }

    public static ProtoBuf$Package getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.function_ = Collections.emptyList();
        this.property_ = Collections.emptyList();
        this.typeAlias_ = Collections.emptyList();
        this.typeTable_ = ProtoBuf$TypeTable.getDefaultInstance();
        this.versionRequirementTable_ = ProtoBuf$VersionRequirementTable.getDefaultInstance();
    }

    public static b newBuilder() {
        return b.q();
    }

    public static ProtoBuf$Package parseFrom(InputStream inputStream, f fVar) throws IOException {
        return PARSER.a(inputStream, fVar);
    }

    public ProtoBuf$Function getFunction(int i) {
        return this.function_.get(i);
    }

    public int getFunctionCount() {
        return this.function_.size();
    }

    public List<ProtoBuf$Function> getFunctionList() {
        return this.function_;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public p<ProtoBuf$Package> getParserForType() {
        return PARSER;
    }

    public ProtoBuf$Property getProperty(int i) {
        return this.property_.get(i);
    }

    public int getPropertyCount() {
        return this.property_.size();
    }

    public List<ProtoBuf$Property> getPropertyList() {
        return this.property_;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iS = 0;
        for (int i2 = 0; i2 < this.function_.size(); i2++) {
            iS += CodedOutputStream.s(3, this.function_.get(i2));
        }
        for (int i3 = 0; i3 < this.property_.size(); i3++) {
            iS += CodedOutputStream.s(4, this.property_.get(i3));
        }
        for (int i4 = 0; i4 < this.typeAlias_.size(); i4++) {
            iS += CodedOutputStream.s(5, this.typeAlias_.get(i4));
        }
        if ((this.bitField0_ & 1) == 1) {
            iS += CodedOutputStream.s(30, this.typeTable_);
        }
        if ((this.bitField0_ & 2) == 2) {
            iS += CodedOutputStream.s(32, this.versionRequirementTable_);
        }
        int iExtensionsSerializedSize = iS + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = iExtensionsSerializedSize;
        return iExtensionsSerializedSize;
    }

    public ProtoBuf$TypeAlias getTypeAlias(int i) {
        return this.typeAlias_.get(i);
    }

    public int getTypeAliasCount() {
        return this.typeAlias_.size();
    }

    public List<ProtoBuf$TypeAlias> getTypeAliasList() {
        return this.typeAlias_;
    }

    public ProtoBuf$TypeTable getTypeTable() {
        return this.typeTable_;
    }

    public ProtoBuf$VersionRequirementTable getVersionRequirementTable() {
        return this.versionRequirementTable_;
    }

    public boolean hasTypeTable() {
        return (this.bitField0_ & 1) == 1;
    }

    public boolean hasVersionRequirementTable() {
        return (this.bitField0_ & 2) == 2;
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
        for (int i = 0; i < getFunctionCount(); i++) {
            if (!getFunction(i).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i2 = 0; i2 < getPropertyCount(); i2++) {
            if (!getProperty(i2).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i3 = 0; i3 < getTypeAliasCount(); i3++) {
            if (!getTypeAlias(i3).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if (hasTypeTable() && !getTypeTable().isInitialized()) {
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
        for (int i = 0; i < this.function_.size(); i++) {
            codedOutputStream.d0(3, this.function_.get(i));
        }
        for (int i2 = 0; i2 < this.property_.size(); i2++) {
            codedOutputStream.d0(4, this.property_.get(i2));
        }
        for (int i3 = 0; i3 < this.typeAlias_.size(); i3++) {
            codedOutputStream.d0(5, this.typeAlias_.get(i3));
        }
        if ((this.bitField0_ & 1) == 1) {
            codedOutputStream.d0(30, this.typeTable_);
        }
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.d0(32, this.versionRequirementTable_);
        }
        aVarNewExtensionWriter.a(200, codedOutputStream);
        codedOutputStream.i0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$Package protoBuf$Package) {
        b bVarNewBuilder = newBuilder();
        bVarNewBuilder.D(protoBuf$Package);
        return bVarNewBuilder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
    public ProtoBuf$Package getDefaultInstanceForType() {
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

    private ProtoBuf$Package(GeneratedMessageLite.c<ProtoBuf$Package, ?> cVar) {
        super(cVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = cVar.e();
    }

    private ProtoBuf$Package(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = d.f15412a;
    }

    private ProtoBuf$Package(e eVar, f fVar) throws InvalidProtocolBufferException {
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
                            if (iK == 26) {
                                if ((i & 1) != 1) {
                                    this.function_ = new ArrayList();
                                    i |= 1;
                                }
                                this.function_.add((ProtoBuf$Function) eVar.u(ProtoBuf$Function.PARSER, fVar));
                            } else if (iK == 34) {
                                if ((i & 2) != 2) {
                                    this.property_ = new ArrayList();
                                    i |= 2;
                                }
                                this.property_.add((ProtoBuf$Property) eVar.u(ProtoBuf$Property.PARSER, fVar));
                            } else if (iK != 42) {
                                if (iK == 242) {
                                    ProtoBuf$TypeTable.b builder = (this.bitField0_ & 1) == 1 ? this.typeTable_.toBuilder() : null;
                                    ProtoBuf$TypeTable protoBuf$TypeTable = (ProtoBuf$TypeTable) eVar.u(ProtoBuf$TypeTable.PARSER, fVar);
                                    this.typeTable_ = protoBuf$TypeTable;
                                    if (builder != null) {
                                        builder.q(protoBuf$TypeTable);
                                        this.typeTable_ = builder.j();
                                    }
                                    this.bitField0_ |= 1;
                                } else if (iK != 258) {
                                    if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                                    }
                                } else {
                                    ProtoBuf$VersionRequirementTable.b builder2 = (this.bitField0_ & 2) == 2 ? this.versionRequirementTable_.toBuilder() : null;
                                    ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable = (ProtoBuf$VersionRequirementTable) eVar.u(ProtoBuf$VersionRequirementTable.PARSER, fVar);
                                    this.versionRequirementTable_ = protoBuf$VersionRequirementTable;
                                    if (builder2 != null) {
                                        builder2.o(protoBuf$VersionRequirementTable);
                                        this.versionRequirementTable_ = builder2.j();
                                    }
                                    this.bitField0_ |= 2;
                                }
                            } else {
                                if ((i & 4) != 4) {
                                    this.typeAlias_ = new ArrayList();
                                    i |= 4;
                                }
                                this.typeAlias_.add((ProtoBuf$TypeAlias) eVar.u(ProtoBuf$TypeAlias.PARSER, fVar));
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
                if ((i & 1) == 1) {
                    this.function_ = Collections.unmodifiableList(this.function_);
                }
                if ((i & 2) == 2) {
                    this.property_ = Collections.unmodifiableList(this.property_);
                }
                if ((i & 4) == 4) {
                    this.typeAlias_ = Collections.unmodifiableList(this.typeAlias_);
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
        if ((i & 1) == 1) {
            this.function_ = Collections.unmodifiableList(this.function_);
        }
        if ((i & 2) == 2) {
            this.property_ = Collections.unmodifiableList(this.property_);
        }
        if ((i & 4) == 4) {
            this.typeAlias_ = Collections.unmodifiableList(this.typeAlias_);
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
