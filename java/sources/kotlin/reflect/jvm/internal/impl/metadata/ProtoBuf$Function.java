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
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes6.dex */
public final class ProtoBuf$Function extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$Function> implements Object {
    public static p<ProtoBuf$Function> PARSER = new a();
    private static final ProtoBuf$Function defaultInstance;
    private int bitField0_;
    private ProtoBuf$Contract contract_;
    private int flags_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private int name_;
    private int oldFlags_;
    private int receiverTypeId_;
    private ProtoBuf$Type receiverType_;
    private int returnTypeId_;
    private ProtoBuf$Type returnType_;
    private List<ProtoBuf$TypeParameter> typeParameter_;
    private ProtoBuf$TypeTable typeTable_;
    private final d unknownFields;
    private List<ProtoBuf$ValueParameter> valueParameter_;
    private List<Integer> versionRequirement_;

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$Function> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Function c(e eVar, f fVar) throws InvalidProtocolBufferException {
            return new ProtoBuf$Function(eVar, fVar);
        }
    }

    public static final class b extends GeneratedMessageLite.c<ProtoBuf$Function, b> implements Object {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f15272d;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f15275g;
        private int i;
        private int l;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f15273e = 6;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f15274f = 6;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private ProtoBuf$Type f15276h = ProtoBuf$Type.getDefaultInstance();
        private List<ProtoBuf$TypeParameter> j = Collections.emptyList();
        private ProtoBuf$Type k = ProtoBuf$Type.getDefaultInstance();
        private List<ProtoBuf$ValueParameter> m = Collections.emptyList();
        private ProtoBuf$TypeTable n = ProtoBuf$TypeTable.getDefaultInstance();
        private List<Integer> o = Collections.emptyList();
        private ProtoBuf$Contract p = ProtoBuf$Contract.getDefaultInstance();

        private b() {
            H();
        }

        private void H() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b q() {
            return new b();
        }

        private void r() {
            if ((this.f15272d & 32) != 32) {
                this.j = new ArrayList(this.j);
                this.f15272d |= 32;
            }
        }

        private void s() {
            if ((this.f15272d & 256) != 256) {
                this.m = new ArrayList(this.m);
                this.f15272d |= 256;
            }
        }

        private void t() {
            if ((this.f15272d & 1024) != 1024) {
                this.o = new ArrayList(this.o);
                this.f15272d |= 1024;
            }
        }

        public ProtoBuf$ValueParameter A(int i) {
            return this.m.get(i);
        }

        public int B() {
            return this.m.size();
        }

        public boolean C() {
            return (this.f15272d & 2048) == 2048;
        }

        public boolean D() {
            return (this.f15272d & 4) == 4;
        }

        public boolean E() {
            return (this.f15272d & 64) == 64;
        }

        public boolean F() {
            return (this.f15272d & 8) == 8;
        }

        public boolean G() {
            return (this.f15272d & 512) == 512;
        }

        public b I(ProtoBuf$Contract protoBuf$Contract) {
            if ((this.f15272d & 2048) != 2048 || this.p == ProtoBuf$Contract.getDefaultInstance()) {
                this.p = protoBuf$Contract;
            } else {
                ProtoBuf$Contract.b bVarNewBuilder = ProtoBuf$Contract.newBuilder(this.p);
                bVarNewBuilder.q(protoBuf$Contract);
                this.p = bVarNewBuilder.j();
            }
            this.f15272d |= 2048;
            return this;
        }

        public b J(ProtoBuf$Function protoBuf$Function) {
            if (protoBuf$Function == ProtoBuf$Function.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$Function.hasFlags()) {
                O(protoBuf$Function.getFlags());
            }
            if (protoBuf$Function.hasOldFlags()) {
                Q(protoBuf$Function.getOldFlags());
            }
            if (protoBuf$Function.hasName()) {
                P(protoBuf$Function.getName());
            }
            if (protoBuf$Function.hasReturnType()) {
                M(protoBuf$Function.getReturnType());
            }
            if (protoBuf$Function.hasReturnTypeId()) {
                S(protoBuf$Function.getReturnTypeId());
            }
            if (!protoBuf$Function.typeParameter_.isEmpty()) {
                if (this.j.isEmpty()) {
                    this.j = protoBuf$Function.typeParameter_;
                    this.f15272d &= -33;
                } else {
                    r();
                    this.j.addAll(protoBuf$Function.typeParameter_);
                }
            }
            if (protoBuf$Function.hasReceiverType()) {
                L(protoBuf$Function.getReceiverType());
            }
            if (protoBuf$Function.hasReceiverTypeId()) {
                R(protoBuf$Function.getReceiverTypeId());
            }
            if (!protoBuf$Function.valueParameter_.isEmpty()) {
                if (this.m.isEmpty()) {
                    this.m = protoBuf$Function.valueParameter_;
                    this.f15272d &= -257;
                } else {
                    s();
                    this.m.addAll(protoBuf$Function.valueParameter_);
                }
            }
            if (protoBuf$Function.hasTypeTable()) {
                N(protoBuf$Function.getTypeTable());
            }
            if (!protoBuf$Function.versionRequirement_.isEmpty()) {
                if (this.o.isEmpty()) {
                    this.o = protoBuf$Function.versionRequirement_;
                    this.f15272d &= -1025;
                } else {
                    t();
                    this.o.addAll(protoBuf$Function.versionRequirement_);
                }
            }
            if (protoBuf$Function.hasContract()) {
                I(protoBuf$Function.getContract());
            }
            l(protoBuf$Function);
            g(e().b(protoBuf$Function.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        public b K(e eVar, f fVar) throws Throwable {
            ProtoBuf$Function protoBuf$Function = null;
            try {
                try {
                    ProtoBuf$Function protoBuf$FunctionC = ProtoBuf$Function.PARSER.c(eVar, fVar);
                    if (protoBuf$FunctionC != null) {
                        J(protoBuf$FunctionC);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$Function protoBuf$Function2 = (ProtoBuf$Function) e2.getUnfinishedMessage();
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Function = protoBuf$Function2;
                        if (protoBuf$Function != null) {
                            J(protoBuf$Function);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Function != null) {
                    J(protoBuf$Function);
                }
                throw th;
            }
        }

        public b L(ProtoBuf$Type protoBuf$Type) {
            if ((this.f15272d & 64) != 64 || this.k == ProtoBuf$Type.getDefaultInstance()) {
                this.k = protoBuf$Type;
            } else {
                this.k = ProtoBuf$Type.newBuilder(this.k).f(protoBuf$Type).o();
            }
            this.f15272d |= 64;
            return this;
        }

        public b M(ProtoBuf$Type protoBuf$Type) {
            if ((this.f15272d & 8) != 8 || this.f15276h == ProtoBuf$Type.getDefaultInstance()) {
                this.f15276h = protoBuf$Type;
            } else {
                this.f15276h = ProtoBuf$Type.newBuilder(this.f15276h).f(protoBuf$Type).o();
            }
            this.f15272d |= 8;
            return this;
        }

        public b N(ProtoBuf$TypeTable protoBuf$TypeTable) {
            if ((this.f15272d & 512) != 512 || this.n == ProtoBuf$TypeTable.getDefaultInstance()) {
                this.n = protoBuf$TypeTable;
            } else {
                ProtoBuf$TypeTable.b bVarNewBuilder = ProtoBuf$TypeTable.newBuilder(this.n);
                bVarNewBuilder.q(protoBuf$TypeTable);
                this.n = bVarNewBuilder.j();
            }
            this.f15272d |= 512;
            return this;
        }

        public b O(int i) {
            this.f15272d |= 1;
            this.f15273e = i;
            return this;
        }

        public b P(int i) {
            this.f15272d |= 4;
            this.f15275g = i;
            return this;
        }

        public b Q(int i) {
            this.f15272d |= 2;
            this.f15274f = i;
            return this;
        }

        public b R(int i) {
            this.f15272d |= 128;
            this.l = i;
            return this;
        }

        public b S(int i) {
            this.f15272d |= 16;
            this.i = i;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a, kotlin.reflect.jvm.internal.impl.protobuf.n.a
        public /* bridge */ /* synthetic */ n.a a(e eVar, f fVar) throws Throwable {
            K(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a
        /* JADX INFO: renamed from: b */
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a a(e eVar, f fVar) throws Throwable {
            K(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        public /* bridge */ /* synthetic */ GeneratedMessageLite.b f(GeneratedMessageLite generatedMessageLite) {
            J((ProtoBuf$Function) generatedMessageLite);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
        public final boolean isInitialized() {
            if (!D()) {
                return false;
            }
            if (F() && !w().isInitialized()) {
                return false;
            }
            for (int i = 0; i < y(); i++) {
                if (!x(i).isInitialized()) {
                    return false;
                }
            }
            if (E() && !v().isInitialized()) {
                return false;
            }
            for (int i2 = 0; i2 < B(); i2++) {
                if (!A(i2).isInitialized()) {
                    return false;
                }
            }
            if (!G() || z().isInitialized()) {
                return (!C() || u().isInitialized()) && k();
            }
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Function build() {
            ProtoBuf$Function protoBuf$FunctionO = o();
            if (protoBuf$FunctionO.isInitialized()) {
                return protoBuf$FunctionO;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(protoBuf$FunctionO);
        }

        public ProtoBuf$Function o() {
            ProtoBuf$Function protoBuf$Function = new ProtoBuf$Function(this);
            int i = this.f15272d;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$Function.flags_ = this.f15273e;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$Function.oldFlags_ = this.f15274f;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$Function.name_ = this.f15275g;
            if ((i & 8) == 8) {
                i2 |= 8;
            }
            protoBuf$Function.returnType_ = this.f15276h;
            if ((i & 16) == 16) {
                i2 |= 16;
            }
            protoBuf$Function.returnTypeId_ = this.i;
            if ((this.f15272d & 32) == 32) {
                this.j = Collections.unmodifiableList(this.j);
                this.f15272d &= -33;
            }
            protoBuf$Function.typeParameter_ = this.j;
            if ((i & 64) == 64) {
                i2 |= 32;
            }
            protoBuf$Function.receiverType_ = this.k;
            if ((i & 128) == 128) {
                i2 |= 64;
            }
            protoBuf$Function.receiverTypeId_ = this.l;
            if ((this.f15272d & 256) == 256) {
                this.m = Collections.unmodifiableList(this.m);
                this.f15272d &= -257;
            }
            protoBuf$Function.valueParameter_ = this.m;
            if ((i & 512) == 512) {
                i2 |= 128;
            }
            protoBuf$Function.typeTable_ = this.n;
            if ((this.f15272d & 1024) == 1024) {
                this.o = Collections.unmodifiableList(this.o);
                this.f15272d &= -1025;
            }
            protoBuf$Function.versionRequirement_ = this.o;
            if ((i & 2048) == 2048) {
                i2 |= 256;
            }
            protoBuf$Function.contract_ = this.p;
            protoBuf$Function.bitField0_ = i2;
            return protoBuf$Function;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public b d() {
            b bVarQ = q();
            bVarQ.J(o());
            return bVarQ;
        }

        public ProtoBuf$Contract u() {
            return this.p;
        }

        public ProtoBuf$Type v() {
            return this.k;
        }

        public ProtoBuf$Type w() {
            return this.f15276h;
        }

        public ProtoBuf$TypeParameter x(int i) {
            return this.j.get(i);
        }

        public int y() {
            return this.j.size();
        }

        public ProtoBuf$TypeTable z() {
            return this.n;
        }
    }

    static {
        ProtoBuf$Function protoBuf$Function = new ProtoBuf$Function(true);
        defaultInstance = protoBuf$Function;
        protoBuf$Function.initFields();
    }

    public static ProtoBuf$Function getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.flags_ = 6;
        this.oldFlags_ = 6;
        this.name_ = 0;
        this.returnType_ = ProtoBuf$Type.getDefaultInstance();
        this.returnTypeId_ = 0;
        this.typeParameter_ = Collections.emptyList();
        this.receiverType_ = ProtoBuf$Type.getDefaultInstance();
        this.receiverTypeId_ = 0;
        this.valueParameter_ = Collections.emptyList();
        this.typeTable_ = ProtoBuf$TypeTable.getDefaultInstance();
        this.versionRequirement_ = Collections.emptyList();
        this.contract_ = ProtoBuf$Contract.getDefaultInstance();
    }

    public static b newBuilder() {
        return b.q();
    }

    public static ProtoBuf$Function parseFrom(InputStream inputStream, f fVar) throws IOException {
        return PARSER.a(inputStream, fVar);
    }

    public ProtoBuf$Contract getContract() {
        return this.contract_;
    }

    public int getFlags() {
        return this.flags_;
    }

    public int getName() {
        return this.name_;
    }

    public int getOldFlags() {
        return this.oldFlags_;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public p<ProtoBuf$Function> getParserForType() {
        return PARSER;
    }

    public ProtoBuf$Type getReceiverType() {
        return this.receiverType_;
    }

    public int getReceiverTypeId() {
        return this.receiverTypeId_;
    }

    public ProtoBuf$Type getReturnType() {
        return this.returnType_;
    }

    public int getReturnTypeId() {
        return this.returnTypeId_;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iO = (this.bitField0_ & 2) == 2 ? CodedOutputStream.o(1, this.oldFlags_) + 0 : 0;
        if ((this.bitField0_ & 4) == 4) {
            iO += CodedOutputStream.o(2, this.name_);
        }
        if ((this.bitField0_ & 8) == 8) {
            iO += CodedOutputStream.s(3, this.returnType_);
        }
        for (int i2 = 0; i2 < this.typeParameter_.size(); i2++) {
            iO += CodedOutputStream.s(4, this.typeParameter_.get(i2));
        }
        if ((this.bitField0_ & 32) == 32) {
            iO += CodedOutputStream.s(5, this.receiverType_);
        }
        for (int i3 = 0; i3 < this.valueParameter_.size(); i3++) {
            iO += CodedOutputStream.s(6, this.valueParameter_.get(i3));
        }
        if ((this.bitField0_ & 16) == 16) {
            iO += CodedOutputStream.o(7, this.returnTypeId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            iO += CodedOutputStream.o(8, this.receiverTypeId_);
        }
        if ((this.bitField0_ & 1) == 1) {
            iO += CodedOutputStream.o(9, this.flags_);
        }
        if ((this.bitField0_ & 128) == 128) {
            iO += CodedOutputStream.s(30, this.typeTable_);
        }
        int iP = 0;
        for (int i4 = 0; i4 < this.versionRequirement_.size(); i4++) {
            iP += CodedOutputStream.p(this.versionRequirement_.get(i4).intValue());
        }
        int size = iO + iP + (getVersionRequirementList().size() * 2);
        if ((this.bitField0_ & 256) == 256) {
            size += CodedOutputStream.s(32, this.contract_);
        }
        int iExtensionsSerializedSize = size + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = iExtensionsSerializedSize;
        return iExtensionsSerializedSize;
    }

    public ProtoBuf$TypeParameter getTypeParameter(int i) {
        return this.typeParameter_.get(i);
    }

    public int getTypeParameterCount() {
        return this.typeParameter_.size();
    }

    public List<ProtoBuf$TypeParameter> getTypeParameterList() {
        return this.typeParameter_;
    }

    public ProtoBuf$TypeTable getTypeTable() {
        return this.typeTable_;
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

    public boolean hasContract() {
        return (this.bitField0_ & 256) == 256;
    }

    public boolean hasFlags() {
        return (this.bitField0_ & 1) == 1;
    }

    public boolean hasName() {
        return (this.bitField0_ & 4) == 4;
    }

    public boolean hasOldFlags() {
        return (this.bitField0_ & 2) == 2;
    }

    public boolean hasReceiverType() {
        return (this.bitField0_ & 32) == 32;
    }

    public boolean hasReceiverTypeId() {
        return (this.bitField0_ & 64) == 64;
    }

    public boolean hasReturnType() {
        return (this.bitField0_ & 8) == 8;
    }

    public boolean hasReturnTypeId() {
        return (this.bitField0_ & 16) == 16;
    }

    public boolean hasTypeTable() {
        return (this.bitField0_ & 128) == 128;
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
        if (!hasName()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if (hasReturnType() && !getReturnType().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i = 0; i < getTypeParameterCount(); i++) {
            if (!getTypeParameter(i).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if (hasReceiverType() && !getReceiverType().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i2 = 0; i2 < getValueParameterCount(); i2++) {
            if (!getValueParameter(i2).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if (hasTypeTable() && !getTypeTable().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if (hasContract() && !getContract().isInitialized()) {
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
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.a0(1, this.oldFlags_);
        }
        if ((this.bitField0_ & 4) == 4) {
            codedOutputStream.a0(2, this.name_);
        }
        if ((this.bitField0_ & 8) == 8) {
            codedOutputStream.d0(3, this.returnType_);
        }
        for (int i = 0; i < this.typeParameter_.size(); i++) {
            codedOutputStream.d0(4, this.typeParameter_.get(i));
        }
        if ((this.bitField0_ & 32) == 32) {
            codedOutputStream.d0(5, this.receiverType_);
        }
        for (int i2 = 0; i2 < this.valueParameter_.size(); i2++) {
            codedOutputStream.d0(6, this.valueParameter_.get(i2));
        }
        if ((this.bitField0_ & 16) == 16) {
            codedOutputStream.a0(7, this.returnTypeId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            codedOutputStream.a0(8, this.receiverTypeId_);
        }
        if ((this.bitField0_ & 1) == 1) {
            codedOutputStream.a0(9, this.flags_);
        }
        if ((this.bitField0_ & 128) == 128) {
            codedOutputStream.d0(30, this.typeTable_);
        }
        for (int i3 = 0; i3 < this.versionRequirement_.size(); i3++) {
            codedOutputStream.a0(31, this.versionRequirement_.get(i3).intValue());
        }
        if ((this.bitField0_ & 256) == 256) {
            codedOutputStream.d0(32, this.contract_);
        }
        aVarNewExtensionWriter.a(Videoio.CAP_PROP_IMAGES_LAST, codedOutputStream);
        codedOutputStream.i0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$Function protoBuf$Function) {
        b bVarNewBuilder = newBuilder();
        bVarNewBuilder.J(protoBuf$Function);
        return bVarNewBuilder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
    public ProtoBuf$Function getDefaultInstanceForType() {
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

    private ProtoBuf$Function(GeneratedMessageLite.c<ProtoBuf$Function, ?> cVar) {
        super(cVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = cVar.e();
    }

    private ProtoBuf$Function(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = d.f15412a;
    }

    private ProtoBuf$Function(e eVar, f fVar) throws InvalidProtocolBufferException {
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
                        switch (iK) {
                            case 0:
                                break;
                            case 8:
                                this.bitField0_ |= 2;
                                this.oldFlags_ = eVar.s();
                                continue;
                            case 16:
                                this.bitField0_ |= 4;
                                this.name_ = eVar.s();
                                continue;
                            case 26:
                                ProtoBuf$Type.b builder = (this.bitField0_ & 8) == 8 ? this.returnType_.toBuilder() : null;
                                ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) eVar.u(ProtoBuf$Type.PARSER, fVar);
                                this.returnType_ = protoBuf$Type;
                                if (builder != null) {
                                    builder.f(protoBuf$Type);
                                    this.returnType_ = builder.o();
                                }
                                this.bitField0_ |= 8;
                                continue;
                            case 34:
                                if ((i & 32) != 32) {
                                    this.typeParameter_ = new ArrayList();
                                    i |= 32;
                                }
                                this.typeParameter_.add((ProtoBuf$TypeParameter) eVar.u(ProtoBuf$TypeParameter.PARSER, fVar));
                                continue;
                            case 42:
                                ProtoBuf$Type.b builder2 = (this.bitField0_ & 32) == 32 ? this.receiverType_.toBuilder() : null;
                                ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) eVar.u(ProtoBuf$Type.PARSER, fVar);
                                this.receiverType_ = protoBuf$Type2;
                                if (builder2 != null) {
                                    builder2.f(protoBuf$Type2);
                                    this.receiverType_ = builder2.o();
                                }
                                this.bitField0_ |= 32;
                                continue;
                            case 50:
                                if ((i & 256) != 256) {
                                    this.valueParameter_ = new ArrayList();
                                    i |= 256;
                                }
                                this.valueParameter_.add((ProtoBuf$ValueParameter) eVar.u(ProtoBuf$ValueParameter.PARSER, fVar));
                                continue;
                            case 56:
                                this.bitField0_ |= 16;
                                this.returnTypeId_ = eVar.s();
                                continue;
                            case 64:
                                this.bitField0_ |= 64;
                                this.receiverTypeId_ = eVar.s();
                                continue;
                            case 72:
                                this.bitField0_ |= 1;
                                this.flags_ = eVar.s();
                                continue;
                            case 242:
                                ProtoBuf$TypeTable.b builder3 = (this.bitField0_ & 128) == 128 ? this.typeTable_.toBuilder() : null;
                                ProtoBuf$TypeTable protoBuf$TypeTable = (ProtoBuf$TypeTable) eVar.u(ProtoBuf$TypeTable.PARSER, fVar);
                                this.typeTable_ = protoBuf$TypeTable;
                                if (builder3 != null) {
                                    builder3.q(protoBuf$TypeTable);
                                    this.typeTable_ = builder3.j();
                                }
                                this.bitField0_ |= 128;
                                continue;
                            case 248:
                                if ((i & 1024) != 1024) {
                                    this.versionRequirement_ = new ArrayList();
                                    i |= 1024;
                                }
                                this.versionRequirement_.add(Integer.valueOf(eVar.s()));
                                continue;
                            case 250:
                                int iJ = eVar.j(eVar.A());
                                if ((i & 1024) != 1024 && eVar.e() > 0) {
                                    this.versionRequirement_ = new ArrayList();
                                    i |= 1024;
                                }
                                while (eVar.e() > 0) {
                                    this.versionRequirement_.add(Integer.valueOf(eVar.s()));
                                }
                                eVar.i(iJ);
                                continue;
                            case 258:
                                ProtoBuf$Contract.b builder4 = (this.bitField0_ & 256) == 256 ? this.contract_.toBuilder() : null;
                                ProtoBuf$Contract protoBuf$Contract = (ProtoBuf$Contract) eVar.u(ProtoBuf$Contract.PARSER, fVar);
                                this.contract_ = protoBuf$Contract;
                                if (builder4 != null) {
                                    builder4.q(protoBuf$Contract);
                                    this.contract_ = builder4.j();
                                }
                                this.bitField0_ |= 256;
                                continue;
                            default:
                                if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                                    break;
                                }
                                break;
                        }
                        z = true;
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } catch (InvalidProtocolBufferException e3) {
                    throw e3.setUnfinishedMessage(this);
                }
            } catch (Throwable th) {
                if ((i & 32) == 32) {
                    this.typeParameter_ = Collections.unmodifiableList(this.typeParameter_);
                }
                if ((i & 256) == 256) {
                    this.valueParameter_ = Collections.unmodifiableList(this.valueParameter_);
                }
                if ((i & 1024) == 1024) {
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
        if ((i & 32) == 32) {
            this.typeParameter_ = Collections.unmodifiableList(this.typeParameter_);
        }
        if ((i & 256) == 256) {
            this.valueParameter_ = Collections.unmodifiableList(this.valueParameter_);
        }
        if ((i & 1024) == 1024) {
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
