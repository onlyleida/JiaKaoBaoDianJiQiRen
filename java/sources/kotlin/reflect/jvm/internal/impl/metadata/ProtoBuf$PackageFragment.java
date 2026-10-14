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
public final class ProtoBuf$PackageFragment extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$PackageFragment> implements Object {
    public static p<ProtoBuf$PackageFragment> PARSER = new a();
    private static final ProtoBuf$PackageFragment defaultInstance;
    private int bitField0_;
    private List<ProtoBuf$Class> class__;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private ProtoBuf$Package package_;
    private ProtoBuf$QualifiedNameTable qualifiedNames_;
    private ProtoBuf$StringTable strings_;
    private final d unknownFields;

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$PackageFragment> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$PackageFragment c(e eVar, f fVar) throws InvalidProtocolBufferException {
            return new ProtoBuf$PackageFragment(eVar, fVar);
        }
    }

    public static final class b extends GeneratedMessageLite.c<ProtoBuf$PackageFragment, b> implements Object {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f15282d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ProtoBuf$StringTable f15283e = ProtoBuf$StringTable.getDefaultInstance();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private ProtoBuf$QualifiedNameTable f15284f = ProtoBuf$QualifiedNameTable.getDefaultInstance();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private ProtoBuf$Package f15285g = ProtoBuf$Package.getDefaultInstance();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private List<ProtoBuf$Class> f15286h = Collections.emptyList();

        private b() {
            y();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b q() {
            return new b();
        }

        private void r() {
            if ((this.f15282d & 8) != 8) {
                this.f15286h = new ArrayList(this.f15286h);
                this.f15282d |= 8;
            }
        }

        private void y() {
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        public b A(e eVar, f fVar) throws Throwable {
            ProtoBuf$PackageFragment protoBuf$PackageFragment = null;
            try {
                try {
                    ProtoBuf$PackageFragment protoBuf$PackageFragmentC = ProtoBuf$PackageFragment.PARSER.c(eVar, fVar);
                    if (protoBuf$PackageFragmentC != null) {
                        z(protoBuf$PackageFragmentC);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$PackageFragment protoBuf$PackageFragment2 = (ProtoBuf$PackageFragment) e2.getUnfinishedMessage();
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$PackageFragment = protoBuf$PackageFragment2;
                        if (protoBuf$PackageFragment != null) {
                            z(protoBuf$PackageFragment);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$PackageFragment != null) {
                    z(protoBuf$PackageFragment);
                }
                throw th;
            }
        }

        public b B(ProtoBuf$Package protoBuf$Package) {
            if ((this.f15282d & 4) != 4 || this.f15285g == ProtoBuf$Package.getDefaultInstance()) {
                this.f15285g = protoBuf$Package;
            } else {
                ProtoBuf$Package.b bVarNewBuilder = ProtoBuf$Package.newBuilder(this.f15285g);
                bVarNewBuilder.D(protoBuf$Package);
                this.f15285g = bVarNewBuilder.o();
            }
            this.f15282d |= 4;
            return this;
        }

        public b C(ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable) {
            if ((this.f15282d & 2) != 2 || this.f15284f == ProtoBuf$QualifiedNameTable.getDefaultInstance()) {
                this.f15284f = protoBuf$QualifiedNameTable;
            } else {
                ProtoBuf$QualifiedNameTable.b bVarNewBuilder = ProtoBuf$QualifiedNameTable.newBuilder(this.f15284f);
                bVarNewBuilder.q(protoBuf$QualifiedNameTable);
                this.f15284f = bVarNewBuilder.j();
            }
            this.f15282d |= 2;
            return this;
        }

        public b D(ProtoBuf$StringTable protoBuf$StringTable) {
            if ((this.f15282d & 1) != 1 || this.f15283e == ProtoBuf$StringTable.getDefaultInstance()) {
                this.f15283e = protoBuf$StringTable;
            } else {
                ProtoBuf$StringTable.b bVarNewBuilder = ProtoBuf$StringTable.newBuilder(this.f15283e);
                bVarNewBuilder.o(protoBuf$StringTable);
                this.f15283e = bVarNewBuilder.j();
            }
            this.f15282d |= 1;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a, kotlin.reflect.jvm.internal.impl.protobuf.n.a
        public /* bridge */ /* synthetic */ n.a a(e eVar, f fVar) throws Throwable {
            A(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a
        /* JADX INFO: renamed from: b */
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a a(e eVar, f fVar) throws Throwable {
            A(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        public /* bridge */ /* synthetic */ GeneratedMessageLite.b f(GeneratedMessageLite generatedMessageLite) {
            z((ProtoBuf$PackageFragment) generatedMessageLite);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
        public final boolean isInitialized() {
            if (x() && !v().isInitialized()) {
                return false;
            }
            if (w() && !u().isInitialized()) {
                return false;
            }
            for (int i = 0; i < t(); i++) {
                if (!s(i).isInitialized()) {
                    return false;
                }
            }
            return k();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$PackageFragment build() {
            ProtoBuf$PackageFragment protoBuf$PackageFragmentO = o();
            if (protoBuf$PackageFragmentO.isInitialized()) {
                return protoBuf$PackageFragmentO;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(protoBuf$PackageFragmentO);
        }

        public ProtoBuf$PackageFragment o() {
            ProtoBuf$PackageFragment protoBuf$PackageFragment = new ProtoBuf$PackageFragment(this);
            int i = this.f15282d;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$PackageFragment.strings_ = this.f15283e;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$PackageFragment.qualifiedNames_ = this.f15284f;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$PackageFragment.package_ = this.f15285g;
            if ((this.f15282d & 8) == 8) {
                this.f15286h = Collections.unmodifiableList(this.f15286h);
                this.f15282d &= -9;
            }
            protoBuf$PackageFragment.class__ = this.f15286h;
            protoBuf$PackageFragment.bitField0_ = i2;
            return protoBuf$PackageFragment;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public b d() {
            b bVarQ = q();
            bVarQ.z(o());
            return bVarQ;
        }

        public ProtoBuf$Class s(int i) {
            return this.f15286h.get(i);
        }

        public int t() {
            return this.f15286h.size();
        }

        public ProtoBuf$Package u() {
            return this.f15285g;
        }

        public ProtoBuf$QualifiedNameTable v() {
            return this.f15284f;
        }

        public boolean w() {
            return (this.f15282d & 4) == 4;
        }

        public boolean x() {
            return (this.f15282d & 2) == 2;
        }

        public b z(ProtoBuf$PackageFragment protoBuf$PackageFragment) {
            if (protoBuf$PackageFragment == ProtoBuf$PackageFragment.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$PackageFragment.hasStrings()) {
                D(protoBuf$PackageFragment.getStrings());
            }
            if (protoBuf$PackageFragment.hasQualifiedNames()) {
                C(protoBuf$PackageFragment.getQualifiedNames());
            }
            if (protoBuf$PackageFragment.hasPackage()) {
                B(protoBuf$PackageFragment.getPackage());
            }
            if (!protoBuf$PackageFragment.class__.isEmpty()) {
                if (this.f15286h.isEmpty()) {
                    this.f15286h = protoBuf$PackageFragment.class__;
                    this.f15282d &= -9;
                } else {
                    r();
                    this.f15286h.addAll(protoBuf$PackageFragment.class__);
                }
            }
            l(protoBuf$PackageFragment);
            g(e().b(protoBuf$PackageFragment.unknownFields));
            return this;
        }
    }

    static {
        ProtoBuf$PackageFragment protoBuf$PackageFragment = new ProtoBuf$PackageFragment(true);
        defaultInstance = protoBuf$PackageFragment;
        protoBuf$PackageFragment.initFields();
    }

    public static ProtoBuf$PackageFragment getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.strings_ = ProtoBuf$StringTable.getDefaultInstance();
        this.qualifiedNames_ = ProtoBuf$QualifiedNameTable.getDefaultInstance();
        this.package_ = ProtoBuf$Package.getDefaultInstance();
        this.class__ = Collections.emptyList();
    }

    public static b newBuilder() {
        return b.q();
    }

    public static ProtoBuf$PackageFragment parseFrom(InputStream inputStream, f fVar) throws IOException {
        return PARSER.a(inputStream, fVar);
    }

    public ProtoBuf$Class getClass_(int i) {
        return this.class__.get(i);
    }

    public int getClass_Count() {
        return this.class__.size();
    }

    public List<ProtoBuf$Class> getClass_List() {
        return this.class__;
    }

    public ProtoBuf$Package getPackage() {
        return this.package_;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public p<ProtoBuf$PackageFragment> getParserForType() {
        return PARSER;
    }

    public ProtoBuf$QualifiedNameTable getQualifiedNames() {
        return this.qualifiedNames_;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iS = (this.bitField0_ & 1) == 1 ? CodedOutputStream.s(1, this.strings_) + 0 : 0;
        if ((this.bitField0_ & 2) == 2) {
            iS += CodedOutputStream.s(2, this.qualifiedNames_);
        }
        if ((this.bitField0_ & 4) == 4) {
            iS += CodedOutputStream.s(3, this.package_);
        }
        for (int i2 = 0; i2 < this.class__.size(); i2++) {
            iS += CodedOutputStream.s(4, this.class__.get(i2));
        }
        int iExtensionsSerializedSize = iS + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = iExtensionsSerializedSize;
        return iExtensionsSerializedSize;
    }

    public ProtoBuf$StringTable getStrings() {
        return this.strings_;
    }

    public boolean hasPackage() {
        return (this.bitField0_ & 4) == 4;
    }

    public boolean hasQualifiedNames() {
        return (this.bitField0_ & 2) == 2;
    }

    public boolean hasStrings() {
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
        if (hasQualifiedNames() && !getQualifiedNames().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if (hasPackage() && !getPackage().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i = 0; i < getClass_Count(); i++) {
            if (!getClass_(i).isInitialized()) {
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
            codedOutputStream.d0(1, this.strings_);
        }
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.d0(2, this.qualifiedNames_);
        }
        if ((this.bitField0_ & 4) == 4) {
            codedOutputStream.d0(3, this.package_);
        }
        for (int i = 0; i < this.class__.size(); i++) {
            codedOutputStream.d0(4, this.class__.get(i));
        }
        aVarNewExtensionWriter.a(200, codedOutputStream);
        codedOutputStream.i0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$PackageFragment protoBuf$PackageFragment) {
        b bVarNewBuilder = newBuilder();
        bVarNewBuilder.z(protoBuf$PackageFragment);
        return bVarNewBuilder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
    public ProtoBuf$PackageFragment getDefaultInstanceForType() {
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

    private ProtoBuf$PackageFragment(GeneratedMessageLite.c<ProtoBuf$PackageFragment, ?> cVar) {
        super(cVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = cVar.e();
    }

    private ProtoBuf$PackageFragment(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = d.f15412a;
    }

    private ProtoBuf$PackageFragment(e eVar, f fVar) throws InvalidProtocolBufferException {
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
                            if (iK == 10) {
                                ProtoBuf$StringTable.b builder = (this.bitField0_ & 1) == 1 ? this.strings_.toBuilder() : null;
                                ProtoBuf$StringTable protoBuf$StringTable = (ProtoBuf$StringTable) eVar.u(ProtoBuf$StringTable.PARSER, fVar);
                                this.strings_ = protoBuf$StringTable;
                                if (builder != null) {
                                    builder.o(protoBuf$StringTable);
                                    this.strings_ = builder.j();
                                }
                                this.bitField0_ |= 1;
                            } else if (iK == 18) {
                                ProtoBuf$QualifiedNameTable.b builder2 = (this.bitField0_ & 2) == 2 ? this.qualifiedNames_.toBuilder() : null;
                                ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable = (ProtoBuf$QualifiedNameTable) eVar.u(ProtoBuf$QualifiedNameTable.PARSER, fVar);
                                this.qualifiedNames_ = protoBuf$QualifiedNameTable;
                                if (builder2 != null) {
                                    builder2.q(protoBuf$QualifiedNameTable);
                                    this.qualifiedNames_ = builder2.j();
                                }
                                this.bitField0_ |= 2;
                            } else if (iK == 26) {
                                ProtoBuf$Package.b builder3 = (this.bitField0_ & 4) == 4 ? this.package_.toBuilder() : null;
                                ProtoBuf$Package protoBuf$Package = (ProtoBuf$Package) eVar.u(ProtoBuf$Package.PARSER, fVar);
                                this.package_ = protoBuf$Package;
                                if (builder3 != null) {
                                    builder3.D(protoBuf$Package);
                                    this.package_ = builder3.o();
                                }
                                this.bitField0_ |= 4;
                            } else if (iK != 34) {
                                if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                                }
                            } else {
                                if ((i & 8) != 8) {
                                    this.class__ = new ArrayList();
                                    i |= 8;
                                }
                                this.class__.add((ProtoBuf$Class) eVar.u(ProtoBuf$Class.PARSER, fVar));
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
                if ((i & 8) == 8) {
                    this.class__ = Collections.unmodifiableList(this.class__);
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
        if ((i & 8) == 8) {
            this.class__ = Collections.unmodifiableList(this.class__);
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
