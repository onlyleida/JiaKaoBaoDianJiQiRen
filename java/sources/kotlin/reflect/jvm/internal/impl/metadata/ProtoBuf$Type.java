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
public final class ProtoBuf$Type extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$Type> implements Object {
    public static p<ProtoBuf$Type> PARSER = new a();
    private static final ProtoBuf$Type defaultInstance;
    private int abbreviatedTypeId_;
    private ProtoBuf$Type abbreviatedType_;
    private List<Argument> argument_;
    private int bitField0_;
    private int className_;
    private int flags_;
    private int flexibleTypeCapabilitiesId_;
    private int flexibleUpperBoundId_;
    private ProtoBuf$Type flexibleUpperBound_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private boolean nullable_;
    private int outerTypeId_;
    private ProtoBuf$Type outerType_;
    private int typeAliasName_;
    private int typeParameterName_;
    private int typeParameter_;
    private final d unknownFields;

    public static final class Argument extends GeneratedMessageLite implements o {
        public static p<Argument> PARSER = new a();
        private static final Argument defaultInstance;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Projection projection_;
        private int typeId_;
        private ProtoBuf$Type type_;
        private final d unknownFields;

        public enum Projection implements h.a {
            IN(0, 0),
            OUT(1, 1),
            INV(2, 2),
            STAR(3, 3);

            private static h.b<Projection> internalValueMap = new a();
            private final int value;

            static class a implements h.b<Projection> {
                a() {
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.b
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public Projection a(int i) {
                    return Projection.valueOf(i);
                }
            }

            Projection(int i, int i2) {
                this.value = i2;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final int getNumber() {
                return this.value;
            }

            public static Projection valueOf(int i) {
                if (i == 0) {
                    return IN;
                }
                if (i == 1) {
                    return OUT;
                }
                if (i == 2) {
                    return INV;
                }
                if (i != 3) {
                    return null;
                }
                return STAR;
            }
        }

        static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<Argument> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
            /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
            public Argument c(e eVar, f fVar) throws InvalidProtocolBufferException {
                return new Argument(eVar, fVar);
            }
        }

        public static final class b extends GeneratedMessageLite.b<Argument, b> implements Object {
            private int b;
            private Projection c = Projection.INV;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private ProtoBuf$Type f15294d = ProtoBuf$Type.getDefaultInstance();

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private int f15295e;

            private b() {
                o();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static b l() {
                return new b();
            }

            private void o() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a, kotlin.reflect.jvm.internal.impl.protobuf.n.a
            public /* bridge */ /* synthetic */ n.a a(e eVar, f fVar) throws Throwable {
                q(eVar, fVar);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a
            /* JADX INFO: renamed from: b */
            public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a a(e eVar, f fVar) throws Throwable {
                q(eVar, fVar);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
            public /* bridge */ /* synthetic */ GeneratedMessageLite.b f(GeneratedMessageLite generatedMessageLite) {
                p((Argument) generatedMessageLite);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public Argument build() {
                Argument argumentJ = j();
                if (argumentJ.isInitialized()) {
                    return argumentJ;
                }
                throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(argumentJ);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
            public final boolean isInitialized() {
                return !n() || m().isInitialized();
            }

            public Argument j() {
                Argument argument = new Argument(this);
                int i = this.b;
                int i2 = (i & 1) != 1 ? 0 : 1;
                argument.projection_ = this.c;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                argument.type_ = this.f15294d;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                argument.typeId_ = this.f15295e;
                argument.bitField0_ = i2;
                return argument;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public b d() {
                b bVarL = l();
                bVarL.p(j());
                return bVarL;
            }

            public ProtoBuf$Type m() {
                return this.f15294d;
            }

            public boolean n() {
                return (this.b & 2) == 2;
            }

            public b p(Argument argument) {
                if (argument == Argument.getDefaultInstance()) {
                    return this;
                }
                if (argument.hasProjection()) {
                    s(argument.getProjection());
                }
                if (argument.hasType()) {
                    r(argument.getType());
                }
                if (argument.hasTypeId()) {
                    t(argument.getTypeId());
                }
                g(e().b(argument.unknownFields));
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:15:0x001d  */
            public b q(e eVar, f fVar) throws Throwable {
                Argument argument = null;
                try {
                    try {
                        Argument argumentC = Argument.PARSER.c(eVar, fVar);
                        if (argumentC != null) {
                            p(argumentC);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        Argument argument2 = (Argument) e2.getUnfinishedMessage();
                        try {
                            throw e2;
                        } catch (Throwable th) {
                            th = th;
                            argument = argument2;
                            if (argument != null) {
                                p(argument);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (argument != null) {
                        p(argument);
                    }
                    throw th;
                }
            }

            public b r(ProtoBuf$Type protoBuf$Type) {
                if ((this.b & 2) != 2 || this.f15294d == ProtoBuf$Type.getDefaultInstance()) {
                    this.f15294d = protoBuf$Type;
                } else {
                    this.f15294d = ProtoBuf$Type.newBuilder(this.f15294d).f(protoBuf$Type).o();
                }
                this.b |= 2;
                return this;
            }

            public b s(Projection projection) {
                Objects.requireNonNull(projection);
                this.b |= 1;
                this.c = projection;
                return this;
            }

            public b t(int i) {
                this.b |= 4;
                this.f15295e = i;
                return this;
            }
        }

        static {
            Argument argument = new Argument(true);
            defaultInstance = argument;
            argument.initFields();
        }

        public static Argument getDefaultInstance() {
            return defaultInstance;
        }

        private void initFields() {
            this.projection_ = Projection.INV;
            this.type_ = ProtoBuf$Type.getDefaultInstance();
            this.typeId_ = 0;
        }

        public static b newBuilder() {
            return b.l();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
        public p<Argument> getParserForType() {
            return PARSER;
        }

        public Projection getProjection() {
            return this.projection_;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iH = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.h(1, this.projection_.getNumber()) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iH += CodedOutputStream.s(2, this.type_);
            }
            if ((this.bitField0_ & 4) == 4) {
                iH += CodedOutputStream.o(3, this.typeId_);
            }
            int size = iH + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        public ProtoBuf$Type getType() {
            return this.type_;
        }

        public int getTypeId() {
            return this.typeId_;
        }

        public boolean hasProjection() {
            return (this.bitField0_ & 1) == 1;
        }

        public boolean hasType() {
            return (this.bitField0_ & 2) == 2;
        }

        public boolean hasTypeId() {
            return (this.bitField0_ & 4) == 4;
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
            if (!hasType() || getType().isInitialized()) {
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
                codedOutputStream.S(1, this.projection_.getNumber());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.d0(2, this.type_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.a0(3, this.typeId_);
            }
            codedOutputStream.i0(this.unknownFields);
        }

        public static b newBuilder(Argument argument) {
            b bVarNewBuilder = newBuilder();
            bVarNewBuilder.p(argument);
            return bVarNewBuilder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
        public Argument getDefaultInstanceForType() {
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

        private Argument(GeneratedMessageLite.b bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = bVar.e();
        }

        private Argument(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = d.f15412a;
        }

        private Argument(e eVar, f fVar) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            d.b bVarT = d.t();
            CodedOutputStream codedOutputStreamJ = CodedOutputStream.J(bVarT, 1);
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int iK = eVar.K();
                            if (iK != 0) {
                                if (iK == 8) {
                                    int iN = eVar.n();
                                    Projection projectionValueOf = Projection.valueOf(iN);
                                    if (projectionValueOf == null) {
                                        codedOutputStreamJ.o0(iK);
                                        codedOutputStreamJ.o0(iN);
                                    } else {
                                        this.bitField0_ |= 1;
                                        this.projection_ = projectionValueOf;
                                    }
                                } else if (iK == 18) {
                                    b builder = (this.bitField0_ & 2) == 2 ? this.type_.toBuilder() : null;
                                    ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) eVar.u(ProtoBuf$Type.PARSER, fVar);
                                    this.type_ = protoBuf$Type;
                                    if (builder != null) {
                                        builder.f(protoBuf$Type);
                                        this.type_ = builder.o();
                                    }
                                    this.bitField0_ |= 2;
                                } else if (iK != 24) {
                                    if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                                    }
                                } else {
                                    this.bitField0_ |= 4;
                                    this.typeId_ = eVar.s();
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

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$Type> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Type c(e eVar, f fVar) throws InvalidProtocolBufferException {
            return new ProtoBuf$Type(eVar, fVar);
        }
    }

    public static final class b extends GeneratedMessageLite.c<ProtoBuf$Type, b> implements Object {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f15296d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f15298f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f15299g;
        private int i;
        private int j;
        private int k;
        private int l;
        private int m;
        private int o;
        private int q;
        private int r;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<Argument> f15297e = Collections.emptyList();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private ProtoBuf$Type f15300h = ProtoBuf$Type.getDefaultInstance();
        private ProtoBuf$Type n = ProtoBuf$Type.getDefaultInstance();
        private ProtoBuf$Type p = ProtoBuf$Type.getDefaultInstance();

        private b() {
            A();
        }

        private void A() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b q() {
            return new b();
        }

        private void r() {
            if ((this.f15296d & 1) != 1) {
                this.f15297e = new ArrayList(this.f15297e);
                this.f15296d |= 1;
            }
        }

        public b B(ProtoBuf$Type protoBuf$Type) {
            if ((this.f15296d & 2048) != 2048 || this.p == ProtoBuf$Type.getDefaultInstance()) {
                this.p = protoBuf$Type;
            } else {
                this.p = ProtoBuf$Type.newBuilder(this.p).f(protoBuf$Type).o();
            }
            this.f15296d |= 2048;
            return this;
        }

        public b C(ProtoBuf$Type protoBuf$Type) {
            if ((this.f15296d & 8) != 8 || this.f15300h == ProtoBuf$Type.getDefaultInstance()) {
                this.f15300h = protoBuf$Type;
            } else {
                this.f15300h = ProtoBuf$Type.newBuilder(this.f15300h).f(protoBuf$Type).o();
            }
            this.f15296d |= 8;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
        public b f(ProtoBuf$Type protoBuf$Type) {
            if (protoBuf$Type == ProtoBuf$Type.getDefaultInstance()) {
                return this;
            }
            if (!protoBuf$Type.argument_.isEmpty()) {
                if (this.f15297e.isEmpty()) {
                    this.f15297e = protoBuf$Type.argument_;
                    this.f15296d &= -2;
                } else {
                    r();
                    this.f15297e.addAll(protoBuf$Type.argument_);
                }
            }
            if (protoBuf$Type.hasNullable()) {
                L(protoBuf$Type.getNullable());
            }
            if (protoBuf$Type.hasFlexibleTypeCapabilitiesId()) {
                J(protoBuf$Type.getFlexibleTypeCapabilitiesId());
            }
            if (protoBuf$Type.hasFlexibleUpperBound()) {
                C(protoBuf$Type.getFlexibleUpperBound());
            }
            if (protoBuf$Type.hasFlexibleUpperBoundId()) {
                K(protoBuf$Type.getFlexibleUpperBoundId());
            }
            if (protoBuf$Type.hasClassName()) {
                H(protoBuf$Type.getClassName());
            }
            if (protoBuf$Type.hasTypeParameter()) {
                O(protoBuf$Type.getTypeParameter());
            }
            if (protoBuf$Type.hasTypeParameterName()) {
                P(protoBuf$Type.getTypeParameterName());
            }
            if (protoBuf$Type.hasTypeAliasName()) {
                N(protoBuf$Type.getTypeAliasName());
            }
            if (protoBuf$Type.hasOuterType()) {
                F(protoBuf$Type.getOuterType());
            }
            if (protoBuf$Type.hasOuterTypeId()) {
                M(protoBuf$Type.getOuterTypeId());
            }
            if (protoBuf$Type.hasAbbreviatedType()) {
                B(protoBuf$Type.getAbbreviatedType());
            }
            if (protoBuf$Type.hasAbbreviatedTypeId()) {
                G(protoBuf$Type.getAbbreviatedTypeId());
            }
            if (protoBuf$Type.hasFlags()) {
                I(protoBuf$Type.getFlags());
            }
            l(protoBuf$Type);
            g(e().b(protoBuf$Type.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        public b E(e eVar, f fVar) throws Throwable {
            ProtoBuf$Type protoBuf$Type = null;
            try {
                try {
                    ProtoBuf$Type protoBuf$TypeC = ProtoBuf$Type.PARSER.c(eVar, fVar);
                    if (protoBuf$TypeC != null) {
                        f(protoBuf$TypeC);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) e2.getUnfinishedMessage();
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Type = protoBuf$Type2;
                        if (protoBuf$Type != null) {
                            f(protoBuf$Type);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Type != null) {
                    f(protoBuf$Type);
                }
                throw th;
            }
        }

        public b F(ProtoBuf$Type protoBuf$Type) {
            if ((this.f15296d & 512) != 512 || this.n == ProtoBuf$Type.getDefaultInstance()) {
                this.n = protoBuf$Type;
            } else {
                this.n = ProtoBuf$Type.newBuilder(this.n).f(protoBuf$Type).o();
            }
            this.f15296d |= 512;
            return this;
        }

        public b G(int i) {
            this.f15296d |= 4096;
            this.q = i;
            return this;
        }

        public b H(int i) {
            this.f15296d |= 32;
            this.j = i;
            return this;
        }

        public b I(int i) {
            this.f15296d |= 8192;
            this.r = i;
            return this;
        }

        public b J(int i) {
            this.f15296d |= 4;
            this.f15299g = i;
            return this;
        }

        public b K(int i) {
            this.f15296d |= 16;
            this.i = i;
            return this;
        }

        public b L(boolean z) {
            this.f15296d |= 2;
            this.f15298f = z;
            return this;
        }

        public b M(int i) {
            this.f15296d |= 1024;
            this.o = i;
            return this;
        }

        public b N(int i) {
            this.f15296d |= 256;
            this.m = i;
            return this;
        }

        public b O(int i) {
            this.f15296d |= 64;
            this.k = i;
            return this;
        }

        public b P(int i) {
            this.f15296d |= 128;
            this.l = i;
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

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
        public final boolean isInitialized() {
            for (int i = 0; i < u(); i++) {
                if (!t(i).isInitialized()) {
                    return false;
                }
            }
            if (y() && !v().isInitialized()) {
                return false;
            }
            if (!z() || w().isInitialized()) {
                return (!x() || s().isInitialized()) && k();
            }
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Type build() {
            ProtoBuf$Type protoBuf$TypeO = o();
            if (protoBuf$TypeO.isInitialized()) {
                return protoBuf$TypeO;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(protoBuf$TypeO);
        }

        public ProtoBuf$Type o() {
            ProtoBuf$Type protoBuf$Type = new ProtoBuf$Type(this);
            int i = this.f15296d;
            if ((i & 1) == 1) {
                this.f15297e = Collections.unmodifiableList(this.f15297e);
                this.f15296d &= -2;
            }
            protoBuf$Type.argument_ = this.f15297e;
            int i2 = (i & 2) != 2 ? 0 : 1;
            protoBuf$Type.nullable_ = this.f15298f;
            if ((i & 4) == 4) {
                i2 |= 2;
            }
            protoBuf$Type.flexibleTypeCapabilitiesId_ = this.f15299g;
            if ((i & 8) == 8) {
                i2 |= 4;
            }
            protoBuf$Type.flexibleUpperBound_ = this.f15300h;
            if ((i & 16) == 16) {
                i2 |= 8;
            }
            protoBuf$Type.flexibleUpperBoundId_ = this.i;
            if ((i & 32) == 32) {
                i2 |= 16;
            }
            protoBuf$Type.className_ = this.j;
            if ((i & 64) == 64) {
                i2 |= 32;
            }
            protoBuf$Type.typeParameter_ = this.k;
            if ((i & 128) == 128) {
                i2 |= 64;
            }
            protoBuf$Type.typeParameterName_ = this.l;
            if ((i & 256) == 256) {
                i2 |= 128;
            }
            protoBuf$Type.typeAliasName_ = this.m;
            if ((i & 512) == 512) {
                i2 |= 256;
            }
            protoBuf$Type.outerType_ = this.n;
            if ((i & 1024) == 1024) {
                i2 |= 512;
            }
            protoBuf$Type.outerTypeId_ = this.o;
            if ((i & 2048) == 2048) {
                i2 |= 1024;
            }
            protoBuf$Type.abbreviatedType_ = this.p;
            if ((i & 4096) == 4096) {
                i2 |= 2048;
            }
            protoBuf$Type.abbreviatedTypeId_ = this.q;
            if ((i & 8192) == 8192) {
                i2 |= 4096;
            }
            protoBuf$Type.flags_ = this.r;
            protoBuf$Type.bitField0_ = i2;
            return protoBuf$Type;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public b d() {
            b bVarQ = q();
            bVarQ.f(o());
            return bVarQ;
        }

        public ProtoBuf$Type s() {
            return this.p;
        }

        public Argument t(int i) {
            return this.f15297e.get(i);
        }

        public int u() {
            return this.f15297e.size();
        }

        public ProtoBuf$Type v() {
            return this.f15300h;
        }

        public ProtoBuf$Type w() {
            return this.n;
        }

        public boolean x() {
            return (this.f15296d & 2048) == 2048;
        }

        public boolean y() {
            return (this.f15296d & 8) == 8;
        }

        public boolean z() {
            return (this.f15296d & 512) == 512;
        }
    }

    static {
        ProtoBuf$Type protoBuf$Type = new ProtoBuf$Type(true);
        defaultInstance = protoBuf$Type;
        protoBuf$Type.initFields();
    }

    public static ProtoBuf$Type getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.argument_ = Collections.emptyList();
        this.nullable_ = false;
        this.flexibleTypeCapabilitiesId_ = 0;
        this.flexibleUpperBound_ = getDefaultInstance();
        this.flexibleUpperBoundId_ = 0;
        this.className_ = 0;
        this.typeParameter_ = 0;
        this.typeParameterName_ = 0;
        this.typeAliasName_ = 0;
        this.outerType_ = getDefaultInstance();
        this.outerTypeId_ = 0;
        this.abbreviatedType_ = getDefaultInstance();
        this.abbreviatedTypeId_ = 0;
        this.flags_ = 0;
    }

    public static b newBuilder() {
        return b.q();
    }

    public ProtoBuf$Type getAbbreviatedType() {
        return this.abbreviatedType_;
    }

    public int getAbbreviatedTypeId() {
        return this.abbreviatedTypeId_;
    }

    public Argument getArgument(int i) {
        return this.argument_.get(i);
    }

    public int getArgumentCount() {
        return this.argument_.size();
    }

    public List<Argument> getArgumentList() {
        return this.argument_;
    }

    public int getClassName() {
        return this.className_;
    }

    public int getFlags() {
        return this.flags_;
    }

    public int getFlexibleTypeCapabilitiesId() {
        return this.flexibleTypeCapabilitiesId_;
    }

    public ProtoBuf$Type getFlexibleUpperBound() {
        return this.flexibleUpperBound_;
    }

    public int getFlexibleUpperBoundId() {
        return this.flexibleUpperBoundId_;
    }

    public boolean getNullable() {
        return this.nullable_;
    }

    public ProtoBuf$Type getOuterType() {
        return this.outerType_;
    }

    public int getOuterTypeId() {
        return this.outerTypeId_;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public p<ProtoBuf$Type> getParserForType() {
        return PARSER;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iO = (this.bitField0_ & 4096) == 4096 ? CodedOutputStream.o(1, this.flags_) + 0 : 0;
        for (int i2 = 0; i2 < this.argument_.size(); i2++) {
            iO += CodedOutputStream.s(2, this.argument_.get(i2));
        }
        if ((this.bitField0_ & 1) == 1) {
            iO += CodedOutputStream.a(3, this.nullable_);
        }
        if ((this.bitField0_ & 2) == 2) {
            iO += CodedOutputStream.o(4, this.flexibleTypeCapabilitiesId_);
        }
        if ((this.bitField0_ & 4) == 4) {
            iO += CodedOutputStream.s(5, this.flexibleUpperBound_);
        }
        if ((this.bitField0_ & 16) == 16) {
            iO += CodedOutputStream.o(6, this.className_);
        }
        if ((this.bitField0_ & 32) == 32) {
            iO += CodedOutputStream.o(7, this.typeParameter_);
        }
        if ((this.bitField0_ & 8) == 8) {
            iO += CodedOutputStream.o(8, this.flexibleUpperBoundId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            iO += CodedOutputStream.o(9, this.typeParameterName_);
        }
        if ((this.bitField0_ & 256) == 256) {
            iO += CodedOutputStream.s(10, this.outerType_);
        }
        if ((this.bitField0_ & 512) == 512) {
            iO += CodedOutputStream.o(11, this.outerTypeId_);
        }
        if ((this.bitField0_ & 128) == 128) {
            iO += CodedOutputStream.o(12, this.typeAliasName_);
        }
        if ((this.bitField0_ & 1024) == 1024) {
            iO += CodedOutputStream.s(13, this.abbreviatedType_);
        }
        if ((this.bitField0_ & 2048) == 2048) {
            iO += CodedOutputStream.o(14, this.abbreviatedTypeId_);
        }
        int iExtensionsSerializedSize = iO + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = iExtensionsSerializedSize;
        return iExtensionsSerializedSize;
    }

    public int getTypeAliasName() {
        return this.typeAliasName_;
    }

    public int getTypeParameter() {
        return this.typeParameter_;
    }

    public int getTypeParameterName() {
        return this.typeParameterName_;
    }

    public boolean hasAbbreviatedType() {
        return (this.bitField0_ & 1024) == 1024;
    }

    public boolean hasAbbreviatedTypeId() {
        return (this.bitField0_ & 2048) == 2048;
    }

    public boolean hasClassName() {
        return (this.bitField0_ & 16) == 16;
    }

    public boolean hasFlags() {
        return (this.bitField0_ & 4096) == 4096;
    }

    public boolean hasFlexibleTypeCapabilitiesId() {
        return (this.bitField0_ & 2) == 2;
    }

    public boolean hasFlexibleUpperBound() {
        return (this.bitField0_ & 4) == 4;
    }

    public boolean hasFlexibleUpperBoundId() {
        return (this.bitField0_ & 8) == 8;
    }

    public boolean hasNullable() {
        return (this.bitField0_ & 1) == 1;
    }

    public boolean hasOuterType() {
        return (this.bitField0_ & 256) == 256;
    }

    public boolean hasOuterTypeId() {
        return (this.bitField0_ & 512) == 512;
    }

    public boolean hasTypeAliasName() {
        return (this.bitField0_ & 128) == 128;
    }

    public boolean hasTypeParameter() {
        return (this.bitField0_ & 32) == 32;
    }

    public boolean hasTypeParameterName() {
        return (this.bitField0_ & 64) == 64;
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
        for (int i = 0; i < getArgumentCount(); i++) {
            if (!getArgument(i).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if (hasFlexibleUpperBound() && !getFlexibleUpperBound().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if (hasOuterType() && !getOuterType().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if (hasAbbreviatedType() && !getAbbreviatedType().isInitialized()) {
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
        if ((this.bitField0_ & 4096) == 4096) {
            codedOutputStream.a0(1, this.flags_);
        }
        for (int i = 0; i < this.argument_.size(); i++) {
            codedOutputStream.d0(2, this.argument_.get(i));
        }
        if ((this.bitField0_ & 1) == 1) {
            codedOutputStream.L(3, this.nullable_);
        }
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.a0(4, this.flexibleTypeCapabilitiesId_);
        }
        if ((this.bitField0_ & 4) == 4) {
            codedOutputStream.d0(5, this.flexibleUpperBound_);
        }
        if ((this.bitField0_ & 16) == 16) {
            codedOutputStream.a0(6, this.className_);
        }
        if ((this.bitField0_ & 32) == 32) {
            codedOutputStream.a0(7, this.typeParameter_);
        }
        if ((this.bitField0_ & 8) == 8) {
            codedOutputStream.a0(8, this.flexibleUpperBoundId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            codedOutputStream.a0(9, this.typeParameterName_);
        }
        if ((this.bitField0_ & 256) == 256) {
            codedOutputStream.d0(10, this.outerType_);
        }
        if ((this.bitField0_ & 512) == 512) {
            codedOutputStream.a0(11, this.outerTypeId_);
        }
        if ((this.bitField0_ & 128) == 128) {
            codedOutputStream.a0(12, this.typeAliasName_);
        }
        if ((this.bitField0_ & 1024) == 1024) {
            codedOutputStream.d0(13, this.abbreviatedType_);
        }
        if ((this.bitField0_ & 2048) == 2048) {
            codedOutputStream.a0(14, this.abbreviatedTypeId_);
        }
        aVarNewExtensionWriter.a(200, codedOutputStream);
        codedOutputStream.i0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$Type protoBuf$Type) {
        b bVarNewBuilder = newBuilder();
        bVarNewBuilder.f(protoBuf$Type);
        return bVarNewBuilder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage, kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
    public ProtoBuf$Type getDefaultInstanceForType() {
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

    private ProtoBuf$Type(GeneratedMessageLite.c<ProtoBuf$Type, ?> cVar) {
        super(cVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = cVar.e();
    }

    private ProtoBuf$Type(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = d.f15412a;
    }

    private ProtoBuf$Type(e eVar, f fVar) throws InvalidProtocolBufferException {
        b builder;
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
                    switch (iK) {
                        case 0:
                            break;
                        case 8:
                            this.bitField0_ |= 4096;
                            this.flags_ = eVar.s();
                            continue;
                        case 18:
                            if (!(z2 & true)) {
                                this.argument_ = new ArrayList();
                                z2 |= true;
                            }
                            this.argument_.add((Argument) eVar.u(Argument.PARSER, fVar));
                            continue;
                        case 24:
                            this.bitField0_ |= 1;
                            this.nullable_ = eVar.k();
                            continue;
                        case 32:
                            this.bitField0_ |= 2;
                            this.flexibleTypeCapabilitiesId_ = eVar.s();
                            continue;
                        case 42:
                            builder = (this.bitField0_ & 4) == 4 ? this.flexibleUpperBound_.toBuilder() : null;
                            ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) eVar.u(PARSER, fVar);
                            this.flexibleUpperBound_ = protoBuf$Type;
                            if (builder != null) {
                                builder.f(protoBuf$Type);
                                this.flexibleUpperBound_ = builder.o();
                            }
                            this.bitField0_ |= 4;
                            continue;
                        case 48:
                            this.bitField0_ |= 16;
                            this.className_ = eVar.s();
                            continue;
                        case 56:
                            this.bitField0_ |= 32;
                            this.typeParameter_ = eVar.s();
                            continue;
                        case 64:
                            this.bitField0_ |= 8;
                            this.flexibleUpperBoundId_ = eVar.s();
                            continue;
                        case 72:
                            this.bitField0_ |= 64;
                            this.typeParameterName_ = eVar.s();
                            continue;
                        case 82:
                            builder = (this.bitField0_ & 256) == 256 ? this.outerType_.toBuilder() : null;
                            ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) eVar.u(PARSER, fVar);
                            this.outerType_ = protoBuf$Type2;
                            if (builder != null) {
                                builder.f(protoBuf$Type2);
                                this.outerType_ = builder.o();
                            }
                            this.bitField0_ |= 256;
                            continue;
                        case 88:
                            this.bitField0_ |= 512;
                            this.outerTypeId_ = eVar.s();
                            continue;
                        case 96:
                            this.bitField0_ |= 128;
                            this.typeAliasName_ = eVar.s();
                            continue;
                        case 106:
                            builder = (this.bitField0_ & 1024) == 1024 ? this.abbreviatedType_.toBuilder() : null;
                            ProtoBuf$Type protoBuf$Type3 = (ProtoBuf$Type) eVar.u(PARSER, fVar);
                            this.abbreviatedType_ = protoBuf$Type3;
                            if (builder != null) {
                                builder.f(protoBuf$Type3);
                                this.abbreviatedType_ = builder.o();
                            }
                            this.bitField0_ |= 1024;
                            continue;
                        case 112:
                            this.bitField0_ |= 2048;
                            this.abbreviatedTypeId_ = eVar.s();
                            continue;
                        default:
                            if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                                break;
                            }
                            break;
                    }
                    z = true;
                } catch (InvalidProtocolBufferException e2) {
                    throw e2.setUnfinishedMessage(this);
                } catch (IOException e3) {
                    throw new InvalidProtocolBufferException(e3.getMessage()).setUnfinishedMessage(this);
                }
            } catch (Throwable th) {
                if (z2 & true) {
                    this.argument_ = Collections.unmodifiableList(this.argument_);
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
            this.argument_ = Collections.unmodifiableList(this.argument_);
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
