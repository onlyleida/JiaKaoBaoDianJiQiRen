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
public final class ProtoBuf$Effect extends GeneratedMessageLite implements o {
    public static p<ProtoBuf$Effect> PARSER = new a();
    private static final ProtoBuf$Effect defaultInstance;
    private int bitField0_;
    private ProtoBuf$Expression conclusionOfConditionalEffect_;
    private List<ProtoBuf$Expression> effectConstructorArgument_;
    private EffectType effectType_;
    private InvocationKind kind_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private final d unknownFields;

    public enum EffectType implements h.a {
        RETURNS_CONSTANT(0, 0),
        CALLS(1, 1),
        RETURNS_NOT_NULL(2, 2);

        private static h.b<EffectType> internalValueMap = new a();
        private final int value;

        static class a implements h.b<EffectType> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.b
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public EffectType a(int i) {
                return EffectType.valueOf(i);
            }
        }

        EffectType(int i, int i2) {
            this.value = i2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
        public final int getNumber() {
            return this.value;
        }

        public static EffectType valueOf(int i) {
            if (i == 0) {
                return RETURNS_CONSTANT;
            }
            if (i == 1) {
                return CALLS;
            }
            if (i != 2) {
                return null;
            }
            return RETURNS_NOT_NULL;
        }
    }

    public enum InvocationKind implements h.a {
        AT_MOST_ONCE(0, 0),
        EXACTLY_ONCE(1, 1),
        AT_LEAST_ONCE(2, 2);

        private static h.b<InvocationKind> internalValueMap = new a();
        private final int value;

        static class a implements h.b<InvocationKind> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.b
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public InvocationKind a(int i) {
                return InvocationKind.valueOf(i);
            }
        }

        InvocationKind(int i, int i2) {
            this.value = i2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
        public final int getNumber() {
            return this.value;
        }

        public static InvocationKind valueOf(int i) {
            if (i == 0) {
                return AT_MOST_ONCE;
            }
            if (i == 1) {
                return EXACTLY_ONCE;
            }
            if (i != 2) {
                return null;
            }
            return AT_LEAST_ONCE;
        }
    }

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$Effect> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Effect c(e eVar, f fVar) throws InvalidProtocolBufferException {
            return new ProtoBuf$Effect(eVar, fVar);
        }
    }

    public static final class b extends GeneratedMessageLite.b<ProtoBuf$Effect, b> implements Object {
        private int b;
        private EffectType c = EffectType.RETURNS_CONSTANT;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private List<ProtoBuf$Expression> f15262d = Collections.emptyList();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ProtoBuf$Expression f15263e = ProtoBuf$Expression.getDefaultInstance();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private InvocationKind f15264f = InvocationKind.AT_MOST_ONCE;

        private b() {
            r();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b l() {
            return new b();
        }

        private void m() {
            if ((this.b & 2) != 2) {
                this.f15262d = new ArrayList(this.f15262d);
                this.b |= 2;
            }
        }

        private void r() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a, kotlin.reflect.jvm.internal.impl.protobuf.n.a
        public /* bridge */ /* synthetic */ n.a a(e eVar, f fVar) throws Throwable {
            u(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a
        /* JADX INFO: renamed from: b */
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a a(e eVar, f fVar) throws Throwable {
            u(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        public /* bridge */ /* synthetic */ GeneratedMessageLite.b f(GeneratedMessageLite generatedMessageLite) {
            t((ProtoBuf$Effect) generatedMessageLite);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Effect build() {
            ProtoBuf$Effect protoBuf$EffectJ = j();
            if (protoBuf$EffectJ.isInitialized()) {
                return protoBuf$EffectJ;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(protoBuf$EffectJ);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
        public final boolean isInitialized() {
            for (int i = 0; i < p(); i++) {
                if (!o(i).isInitialized()) {
                    return false;
                }
            }
            return !q() || n().isInitialized();
        }

        public ProtoBuf$Effect j() {
            ProtoBuf$Effect protoBuf$Effect = new ProtoBuf$Effect(this);
            int i = this.b;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$Effect.effectType_ = this.c;
            if ((this.b & 2) == 2) {
                this.f15262d = Collections.unmodifiableList(this.f15262d);
                this.b &= -3;
            }
            protoBuf$Effect.effectConstructorArgument_ = this.f15262d;
            if ((i & 4) == 4) {
                i2 |= 2;
            }
            protoBuf$Effect.conclusionOfConditionalEffect_ = this.f15263e;
            if ((i & 8) == 8) {
                i2 |= 4;
            }
            protoBuf$Effect.kind_ = this.f15264f;
            protoBuf$Effect.bitField0_ = i2;
            return protoBuf$Effect;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public b d() {
            b bVarL = l();
            bVarL.t(j());
            return bVarL;
        }

        public ProtoBuf$Expression n() {
            return this.f15263e;
        }

        public ProtoBuf$Expression o(int i) {
            return this.f15262d.get(i);
        }

        public int p() {
            return this.f15262d.size();
        }

        public boolean q() {
            return (this.b & 4) == 4;
        }

        public b s(ProtoBuf$Expression protoBuf$Expression) {
            if ((this.b & 4) != 4 || this.f15263e == ProtoBuf$Expression.getDefaultInstance()) {
                this.f15263e = protoBuf$Expression;
            } else {
                ProtoBuf$Expression.b bVarNewBuilder = ProtoBuf$Expression.newBuilder(this.f15263e);
                bVarNewBuilder.v(protoBuf$Expression);
                this.f15263e = bVarNewBuilder.j();
            }
            this.b |= 4;
            return this;
        }

        public b t(ProtoBuf$Effect protoBuf$Effect) {
            if (protoBuf$Effect == ProtoBuf$Effect.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$Effect.hasEffectType()) {
                v(protoBuf$Effect.getEffectType());
            }
            if (!protoBuf$Effect.effectConstructorArgument_.isEmpty()) {
                if (this.f15262d.isEmpty()) {
                    this.f15262d = protoBuf$Effect.effectConstructorArgument_;
                    this.b &= -3;
                } else {
                    m();
                    this.f15262d.addAll(protoBuf$Effect.effectConstructorArgument_);
                }
            }
            if (protoBuf$Effect.hasConclusionOfConditionalEffect()) {
                s(protoBuf$Effect.getConclusionOfConditionalEffect());
            }
            if (protoBuf$Effect.hasKind()) {
                w(protoBuf$Effect.getKind());
            }
            g(e().b(protoBuf$Effect.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        public b u(e eVar, f fVar) throws Throwable {
            ProtoBuf$Effect protoBuf$Effect = null;
            try {
                try {
                    ProtoBuf$Effect protoBuf$EffectC = ProtoBuf$Effect.PARSER.c(eVar, fVar);
                    if (protoBuf$EffectC != null) {
                        t(protoBuf$EffectC);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$Effect protoBuf$Effect2 = (ProtoBuf$Effect) e2.getUnfinishedMessage();
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Effect = protoBuf$Effect2;
                        if (protoBuf$Effect != null) {
                            t(protoBuf$Effect);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Effect != null) {
                    t(protoBuf$Effect);
                }
                throw th;
            }
        }

        public b v(EffectType effectType) {
            Objects.requireNonNull(effectType);
            this.b |= 1;
            this.c = effectType;
            return this;
        }

        public b w(InvocationKind invocationKind) {
            Objects.requireNonNull(invocationKind);
            this.b |= 8;
            this.f15264f = invocationKind;
            return this;
        }
    }

    static {
        ProtoBuf$Effect protoBuf$Effect = new ProtoBuf$Effect(true);
        defaultInstance = protoBuf$Effect;
        protoBuf$Effect.initFields();
    }

    public static ProtoBuf$Effect getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.effectType_ = EffectType.RETURNS_CONSTANT;
        this.effectConstructorArgument_ = Collections.emptyList();
        this.conclusionOfConditionalEffect_ = ProtoBuf$Expression.getDefaultInstance();
        this.kind_ = InvocationKind.AT_MOST_ONCE;
    }

    public static b newBuilder() {
        return b.l();
    }

    public ProtoBuf$Expression getConclusionOfConditionalEffect() {
        return this.conclusionOfConditionalEffect_;
    }

    public ProtoBuf$Expression getEffectConstructorArgument(int i) {
        return this.effectConstructorArgument_.get(i);
    }

    public int getEffectConstructorArgumentCount() {
        return this.effectConstructorArgument_.size();
    }

    public EffectType getEffectType() {
        return this.effectType_;
    }

    public InvocationKind getKind() {
        return this.kind_;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public p<ProtoBuf$Effect> getParserForType() {
        return PARSER;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iH = (this.bitField0_ & 1) == 1 ? CodedOutputStream.h(1, this.effectType_.getNumber()) + 0 : 0;
        for (int i2 = 0; i2 < this.effectConstructorArgument_.size(); i2++) {
            iH += CodedOutputStream.s(2, this.effectConstructorArgument_.get(i2));
        }
        if ((this.bitField0_ & 2) == 2) {
            iH += CodedOutputStream.s(3, this.conclusionOfConditionalEffect_);
        }
        if ((this.bitField0_ & 4) == 4) {
            iH += CodedOutputStream.h(4, this.kind_.getNumber());
        }
        int size = iH + this.unknownFields.size();
        this.memoizedSerializedSize = size;
        return size;
    }

    public boolean hasConclusionOfConditionalEffect() {
        return (this.bitField0_ & 2) == 2;
    }

    public boolean hasEffectType() {
        return (this.bitField0_ & 1) == 1;
    }

    public boolean hasKind() {
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
        for (int i = 0; i < getEffectConstructorArgumentCount(); i++) {
            if (!getEffectConstructorArgument(i).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if (!hasConclusionOfConditionalEffect() || getConclusionOfConditionalEffect().isInitialized()) {
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
            codedOutputStream.S(1, this.effectType_.getNumber());
        }
        for (int i = 0; i < this.effectConstructorArgument_.size(); i++) {
            codedOutputStream.d0(2, this.effectConstructorArgument_.get(i));
        }
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.d0(3, this.conclusionOfConditionalEffect_);
        }
        if ((this.bitField0_ & 4) == 4) {
            codedOutputStream.S(4, this.kind_.getNumber());
        }
        codedOutputStream.i0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$Effect protoBuf$Effect) {
        b bVarNewBuilder = newBuilder();
        bVarNewBuilder.t(protoBuf$Effect);
        return bVarNewBuilder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
    public ProtoBuf$Effect getDefaultInstanceForType() {
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

    private ProtoBuf$Effect(GeneratedMessageLite.b bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = bVar.e();
    }

    private ProtoBuf$Effect(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = d.f15412a;
    }

    private ProtoBuf$Effect(e eVar, f fVar) throws InvalidProtocolBufferException {
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
                    int iK = eVar.K();
                    if (iK != 0) {
                        if (iK == 8) {
                            int iN = eVar.n();
                            EffectType effectTypeValueOf = EffectType.valueOf(iN);
                            if (effectTypeValueOf == null) {
                                codedOutputStreamJ.o0(iK);
                                codedOutputStreamJ.o0(iN);
                            } else {
                                this.bitField0_ |= 1;
                                this.effectType_ = effectTypeValueOf;
                            }
                        } else if (iK == 18) {
                            if ((i & 2) != 2) {
                                this.effectConstructorArgument_ = new ArrayList();
                                i |= 2;
                            }
                            this.effectConstructorArgument_.add((ProtoBuf$Expression) eVar.u(ProtoBuf$Expression.PARSER, fVar));
                        } else if (iK == 26) {
                            ProtoBuf$Expression.b builder = (this.bitField0_ & 2) == 2 ? this.conclusionOfConditionalEffect_.toBuilder() : null;
                            ProtoBuf$Expression protoBuf$Expression = (ProtoBuf$Expression) eVar.u(ProtoBuf$Expression.PARSER, fVar);
                            this.conclusionOfConditionalEffect_ = protoBuf$Expression;
                            if (builder != null) {
                                builder.v(protoBuf$Expression);
                                this.conclusionOfConditionalEffect_ = builder.j();
                            }
                            this.bitField0_ |= 2;
                        } else if (iK != 32) {
                            if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                            }
                        } else {
                            int iN2 = eVar.n();
                            InvocationKind invocationKindValueOf = InvocationKind.valueOf(iN2);
                            if (invocationKindValueOf == null) {
                                codedOutputStreamJ.o0(iK);
                                codedOutputStreamJ.o0(iN2);
                            } else {
                                this.bitField0_ |= 4;
                                this.kind_ = invocationKindValueOf;
                            }
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if ((i & 2) == 2) {
                        this.effectConstructorArgument_ = Collections.unmodifiableList(this.effectConstructorArgument_);
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
        if ((i & 2) == 2) {
            this.effectConstructorArgument_ = Collections.unmodifiableList(this.effectConstructorArgument_);
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
