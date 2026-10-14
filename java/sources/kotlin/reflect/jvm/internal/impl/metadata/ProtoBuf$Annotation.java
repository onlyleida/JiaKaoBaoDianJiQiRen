package kotlin.reflect.jvm.internal.impl.metadata;

import com.amap.api.maps.model.BitmapDescriptorFactory;
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
public final class ProtoBuf$Annotation extends GeneratedMessageLite implements o {
    public static p<ProtoBuf$Annotation> PARSER = new a();
    private static final ProtoBuf$Annotation defaultInstance;
    private List<Argument> argument_;
    private int bitField0_;
    private int id_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private final d unknownFields;

    public static final class Argument extends GeneratedMessageLite implements o {
        public static p<Argument> PARSER = new a();
        private static final Argument defaultInstance;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private int nameId_;
        private final d unknownFields;
        private Value value_;

        public static final class Value extends GeneratedMessageLite implements o {
            public static p<Value> PARSER = new a();
            private static final Value defaultInstance;
            private ProtoBuf$Annotation annotation_;
            private int arrayDimensionCount_;
            private List<Value> arrayElement_;
            private int bitField0_;
            private int classId_;
            private double doubleValue_;
            private int enumValueId_;
            private int flags_;
            private float floatValue_;
            private long intValue_;
            private byte memoizedIsInitialized;
            private int memoizedSerializedSize;
            private int stringValue_;
            private Type type_;
            private final d unknownFields;

            public enum Type implements h.a {
                BYTE(0, 0),
                CHAR(1, 1),
                SHORT(2, 2),
                INT(3, 3),
                LONG(4, 4),
                FLOAT(5, 5),
                DOUBLE(6, 6),
                BOOLEAN(7, 7),
                STRING(8, 8),
                CLASS(9, 9),
                ENUM(10, 10),
                ANNOTATION(11, 11),
                ARRAY(12, 12);

                private static h.b<Type> internalValueMap = new a();
                private final int value;

                static class a implements h.b<Type> {
                    a() {
                    }

                    @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.b
                    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                    public Type a(int i) {
                        return Type.valueOf(i);
                    }
                }

                Type(int i, int i2) {
                    this.value = i2;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
                public final int getNumber() {
                    return this.value;
                }

                public static Type valueOf(int i) {
                    switch (i) {
                        case 0:
                            return BYTE;
                        case 1:
                            return CHAR;
                        case 2:
                            return SHORT;
                        case 3:
                            return INT;
                        case 4:
                            return LONG;
                        case 5:
                            return FLOAT;
                        case 6:
                            return DOUBLE;
                        case 7:
                            return BOOLEAN;
                        case 8:
                            return STRING;
                        case 9:
                            return CLASS;
                        case 10:
                            return ENUM;
                        case 11:
                            return ANNOTATION;
                        case 12:
                            return ARRAY;
                        default:
                            return null;
                    }
                }
            }

            static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<Value> {
                a() {
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
                /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
                public Value c(e eVar, f fVar) throws InvalidProtocolBufferException {
                    return new Value(eVar, fVar);
                }
            }

            public static final class b extends GeneratedMessageLite.b<Value, b> implements Object {
                private int b;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                private long f15246d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                private float f15247e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                private double f15248f;

                /* JADX INFO: renamed from: g, reason: collision with root package name */
                private int f15249g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                private int f15250h;
                private int i;
                private int l;
                private int m;
                private Type c = Type.BYTE;
                private ProtoBuf$Annotation j = ProtoBuf$Annotation.getDefaultInstance();
                private List<Value> k = Collections.emptyList();

                private b() {
                    r();
                }

                /* JADX INFO: Access modifiers changed from: private */
                public static b l() {
                    return new b();
                }

                private void m() {
                    if ((this.b & 256) != 256) {
                        this.k = new ArrayList(this.k);
                        this.b |= 256;
                    }
                }

                private void r() {
                }

                public b A(float f2) {
                    this.b |= 4;
                    this.f15247e = f2;
                    return this;
                }

                public b B(long j) {
                    this.b |= 2;
                    this.f15246d = j;
                    return this;
                }

                public b C(int i) {
                    this.b |= 16;
                    this.f15249g = i;
                    return this;
                }

                public b D(Type type) {
                    Objects.requireNonNull(type);
                    this.b |= 1;
                    this.c = type;
                    return this;
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
                    t((Value) generatedMessageLite);
                    return this;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
                /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
                public Value build() {
                    Value valueJ = j();
                    if (valueJ.isInitialized()) {
                        return valueJ;
                    }
                    throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(valueJ);
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
                public final boolean isInitialized() {
                    if (q() && !n().isInitialized()) {
                        return false;
                    }
                    for (int i = 0; i < p(); i++) {
                        if (!o(i).isInitialized()) {
                            return false;
                        }
                    }
                    return true;
                }

                public Value j() {
                    Value value = new Value(this);
                    int i = this.b;
                    int i2 = (i & 1) != 1 ? 0 : 1;
                    value.type_ = this.c;
                    if ((i & 2) == 2) {
                        i2 |= 2;
                    }
                    value.intValue_ = this.f15246d;
                    if ((i & 4) == 4) {
                        i2 |= 4;
                    }
                    value.floatValue_ = this.f15247e;
                    if ((i & 8) == 8) {
                        i2 |= 8;
                    }
                    value.doubleValue_ = this.f15248f;
                    if ((i & 16) == 16) {
                        i2 |= 16;
                    }
                    value.stringValue_ = this.f15249g;
                    if ((i & 32) == 32) {
                        i2 |= 32;
                    }
                    value.classId_ = this.f15250h;
                    if ((i & 64) == 64) {
                        i2 |= 64;
                    }
                    value.enumValueId_ = this.i;
                    if ((i & 128) == 128) {
                        i2 |= 128;
                    }
                    value.annotation_ = this.j;
                    if ((this.b & 256) == 256) {
                        this.k = Collections.unmodifiableList(this.k);
                        this.b &= -257;
                    }
                    value.arrayElement_ = this.k;
                    if ((i & 512) == 512) {
                        i2 |= 256;
                    }
                    value.arrayDimensionCount_ = this.l;
                    if ((i & 1024) == 1024) {
                        i2 |= 512;
                    }
                    value.flags_ = this.m;
                    value.bitField0_ = i2;
                    return value;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
                /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
                public b d() {
                    b bVarL = l();
                    bVarL.t(j());
                    return bVarL;
                }

                public ProtoBuf$Annotation n() {
                    return this.j;
                }

                public Value o(int i) {
                    return this.k.get(i);
                }

                public int p() {
                    return this.k.size();
                }

                public boolean q() {
                    return (this.b & 128) == 128;
                }

                public b s(ProtoBuf$Annotation protoBuf$Annotation) {
                    if ((this.b & 128) != 128 || this.j == ProtoBuf$Annotation.getDefaultInstance()) {
                        this.j = protoBuf$Annotation;
                    } else {
                        b bVarNewBuilder = ProtoBuf$Annotation.newBuilder(this.j);
                        bVarNewBuilder.r(protoBuf$Annotation);
                        this.j = bVarNewBuilder.j();
                    }
                    this.b |= 128;
                    return this;
                }

                public b t(Value value) {
                    if (value == Value.getDefaultInstance()) {
                        return this;
                    }
                    if (value.hasType()) {
                        D(value.getType());
                    }
                    if (value.hasIntValue()) {
                        B(value.getIntValue());
                    }
                    if (value.hasFloatValue()) {
                        A(value.getFloatValue());
                    }
                    if (value.hasDoubleValue()) {
                        x(value.getDoubleValue());
                    }
                    if (value.hasStringValue()) {
                        C(value.getStringValue());
                    }
                    if (value.hasClassId()) {
                        w(value.getClassId());
                    }
                    if (value.hasEnumValueId()) {
                        y(value.getEnumValueId());
                    }
                    if (value.hasAnnotation()) {
                        s(value.getAnnotation());
                    }
                    if (!value.arrayElement_.isEmpty()) {
                        if (this.k.isEmpty()) {
                            this.k = value.arrayElement_;
                            this.b &= -257;
                        } else {
                            m();
                            this.k.addAll(value.arrayElement_);
                        }
                    }
                    if (value.hasArrayDimensionCount()) {
                        v(value.getArrayDimensionCount());
                    }
                    if (value.hasFlags()) {
                        z(value.getFlags());
                    }
                    g(e().b(value.unknownFields));
                    return this;
                }

                /* JADX WARN: Code duplicated, block: B:15:0x001d  */
                public b u(e eVar, f fVar) throws Throwable {
                    Value value = null;
                    try {
                        try {
                            Value valueC = Value.PARSER.c(eVar, fVar);
                            if (valueC != null) {
                                t(valueC);
                            }
                            return this;
                        } catch (InvalidProtocolBufferException e2) {
                            Value value2 = (Value) e2.getUnfinishedMessage();
                            try {
                                throw e2;
                            } catch (Throwable th) {
                                th = th;
                                value = value2;
                                if (value != null) {
                                    t(value);
                                }
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (value != null) {
                            t(value);
                        }
                        throw th;
                    }
                }

                public b v(int i) {
                    this.b |= 512;
                    this.l = i;
                    return this;
                }

                public b w(int i) {
                    this.b |= 32;
                    this.f15250h = i;
                    return this;
                }

                public b x(double d2) {
                    this.b |= 8;
                    this.f15248f = d2;
                    return this;
                }

                public b y(int i) {
                    this.b |= 64;
                    this.i = i;
                    return this;
                }

                public b z(int i) {
                    this.b |= 1024;
                    this.m = i;
                    return this;
                }
            }

            static {
                Value value = new Value(true);
                defaultInstance = value;
                value.initFields();
            }

            public static Value getDefaultInstance() {
                return defaultInstance;
            }

            private void initFields() {
                this.type_ = Type.BYTE;
                this.intValue_ = 0L;
                this.floatValue_ = BitmapDescriptorFactory.HUE_RED;
                this.doubleValue_ = 0.0d;
                this.stringValue_ = 0;
                this.classId_ = 0;
                this.enumValueId_ = 0;
                this.annotation_ = ProtoBuf$Annotation.getDefaultInstance();
                this.arrayElement_ = Collections.emptyList();
                this.arrayDimensionCount_ = 0;
                this.flags_ = 0;
            }

            public static b newBuilder() {
                return b.l();
            }

            public ProtoBuf$Annotation getAnnotation() {
                return this.annotation_;
            }

            public int getArrayDimensionCount() {
                return this.arrayDimensionCount_;
            }

            public Value getArrayElement(int i) {
                return this.arrayElement_.get(i);
            }

            public int getArrayElementCount() {
                return this.arrayElement_.size();
            }

            public List<Value> getArrayElementList() {
                return this.arrayElement_;
            }

            public int getClassId() {
                return this.classId_;
            }

            public double getDoubleValue() {
                return this.doubleValue_;
            }

            public int getEnumValueId() {
                return this.enumValueId_;
            }

            public int getFlags() {
                return this.flags_;
            }

            public float getFloatValue() {
                return this.floatValue_;
            }

            public long getIntValue() {
                return this.intValue_;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
            public p<Value> getParserForType() {
                return PARSER;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
            public int getSerializedSize() {
                int i = this.memoizedSerializedSize;
                if (i != -1) {
                    return i;
                }
                int iH = (this.bitField0_ & 1) == 1 ? CodedOutputStream.h(1, this.type_.getNumber()) + 0 : 0;
                if ((this.bitField0_ & 2) == 2) {
                    iH += CodedOutputStream.A(2, this.intValue_);
                }
                if ((this.bitField0_ & 4) == 4) {
                    iH += CodedOutputStream.l(3, this.floatValue_);
                }
                if ((this.bitField0_ & 8) == 8) {
                    iH += CodedOutputStream.f(4, this.doubleValue_);
                }
                if ((this.bitField0_ & 16) == 16) {
                    iH += CodedOutputStream.o(5, this.stringValue_);
                }
                if ((this.bitField0_ & 32) == 32) {
                    iH += CodedOutputStream.o(6, this.classId_);
                }
                if ((this.bitField0_ & 64) == 64) {
                    iH += CodedOutputStream.o(7, this.enumValueId_);
                }
                if ((this.bitField0_ & 128) == 128) {
                    iH += CodedOutputStream.s(8, this.annotation_);
                }
                for (int i2 = 0; i2 < this.arrayElement_.size(); i2++) {
                    iH += CodedOutputStream.s(9, this.arrayElement_.get(i2));
                }
                if ((this.bitField0_ & 512) == 512) {
                    iH += CodedOutputStream.o(10, this.flags_);
                }
                if ((this.bitField0_ & 256) == 256) {
                    iH += CodedOutputStream.o(11, this.arrayDimensionCount_);
                }
                int size = iH + this.unknownFields.size();
                this.memoizedSerializedSize = size;
                return size;
            }

            public int getStringValue() {
                return this.stringValue_;
            }

            public Type getType() {
                return this.type_;
            }

            public boolean hasAnnotation() {
                return (this.bitField0_ & 128) == 128;
            }

            public boolean hasArrayDimensionCount() {
                return (this.bitField0_ & 256) == 256;
            }

            public boolean hasClassId() {
                return (this.bitField0_ & 32) == 32;
            }

            public boolean hasDoubleValue() {
                return (this.bitField0_ & 8) == 8;
            }

            public boolean hasEnumValueId() {
                return (this.bitField0_ & 64) == 64;
            }

            public boolean hasFlags() {
                return (this.bitField0_ & 512) == 512;
            }

            public boolean hasFloatValue() {
                return (this.bitField0_ & 4) == 4;
            }

            public boolean hasIntValue() {
                return (this.bitField0_ & 2) == 2;
            }

            public boolean hasStringValue() {
                return (this.bitField0_ & 16) == 16;
            }

            public boolean hasType() {
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
                if (hasAnnotation() && !getAnnotation().isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
                for (int i = 0; i < getArrayElementCount(); i++) {
                    if (!getArrayElement(i).isInitialized()) {
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
                if ((this.bitField0_ & 1) == 1) {
                    codedOutputStream.S(1, this.type_.getNumber());
                }
                if ((this.bitField0_ & 2) == 2) {
                    codedOutputStream.t0(2, this.intValue_);
                }
                if ((this.bitField0_ & 4) == 4) {
                    codedOutputStream.W(3, this.floatValue_);
                }
                if ((this.bitField0_ & 8) == 8) {
                    codedOutputStream.Q(4, this.doubleValue_);
                }
                if ((this.bitField0_ & 16) == 16) {
                    codedOutputStream.a0(5, this.stringValue_);
                }
                if ((this.bitField0_ & 32) == 32) {
                    codedOutputStream.a0(6, this.classId_);
                }
                if ((this.bitField0_ & 64) == 64) {
                    codedOutputStream.a0(7, this.enumValueId_);
                }
                if ((this.bitField0_ & 128) == 128) {
                    codedOutputStream.d0(8, this.annotation_);
                }
                for (int i = 0; i < this.arrayElement_.size(); i++) {
                    codedOutputStream.d0(9, this.arrayElement_.get(i));
                }
                if ((this.bitField0_ & 512) == 512) {
                    codedOutputStream.a0(10, this.flags_);
                }
                if ((this.bitField0_ & 256) == 256) {
                    codedOutputStream.a0(11, this.arrayDimensionCount_);
                }
                codedOutputStream.i0(this.unknownFields);
            }

            public static b newBuilder(Value value) {
                b bVarNewBuilder = newBuilder();
                bVarNewBuilder.t(value);
                return bVarNewBuilder;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
            public Value getDefaultInstanceForType() {
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

            private Value(GeneratedMessageLite.b bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
                this.memoizedSerializedSize = -1;
                this.unknownFields = bVar.e();
            }

            private Value(boolean z) {
                this.memoizedIsInitialized = (byte) -1;
                this.memoizedSerializedSize = -1;
                this.unknownFields = d.f15412a;
            }

            private Value(e eVar, f fVar) throws InvalidProtocolBufferException {
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
                            switch (iK) {
                                case 0:
                                    break;
                                case 8:
                                    int iN = eVar.n();
                                    Type typeValueOf = Type.valueOf(iN);
                                    if (typeValueOf == null) {
                                        codedOutputStreamJ.o0(iK);
                                        codedOutputStreamJ.o0(iN);
                                    } else {
                                        this.bitField0_ |= 1;
                                        this.type_ = typeValueOf;
                                        continue;
                                    }
                                    break;
                                case 16:
                                    this.bitField0_ |= 2;
                                    this.intValue_ = eVar.H();
                                    continue;
                                case 29:
                                    this.bitField0_ |= 4;
                                    this.floatValue_ = eVar.q();
                                    continue;
                                case 33:
                                    this.bitField0_ |= 8;
                                    this.doubleValue_ = eVar.m();
                                    continue;
                                case 40:
                                    this.bitField0_ |= 16;
                                    this.stringValue_ = eVar.s();
                                    continue;
                                case 48:
                                    this.bitField0_ |= 32;
                                    this.classId_ = eVar.s();
                                    continue;
                                case 56:
                                    this.bitField0_ |= 64;
                                    this.enumValueId_ = eVar.s();
                                    continue;
                                case 66:
                                    b builder = (this.bitField0_ & 128) == 128 ? this.annotation_.toBuilder() : null;
                                    ProtoBuf$Annotation protoBuf$Annotation = (ProtoBuf$Annotation) eVar.u(ProtoBuf$Annotation.PARSER, fVar);
                                    this.annotation_ = protoBuf$Annotation;
                                    if (builder != null) {
                                        builder.r(protoBuf$Annotation);
                                        this.annotation_ = builder.j();
                                    }
                                    this.bitField0_ |= 128;
                                    continue;
                                case 74:
                                    if ((i & 256) != 256) {
                                        this.arrayElement_ = new ArrayList();
                                        i |= 256;
                                    }
                                    this.arrayElement_.add((Value) eVar.u(PARSER, fVar));
                                    continue;
                                case 80:
                                    this.bitField0_ |= 512;
                                    this.flags_ = eVar.s();
                                    continue;
                                case 88:
                                    this.bitField0_ |= 256;
                                    this.arrayDimensionCount_ = eVar.s();
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
                        if ((i & 256) == 256) {
                            this.arrayElement_ = Collections.unmodifiableList(this.arrayElement_);
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
                if ((i & 256) == 256) {
                    this.arrayElement_ = Collections.unmodifiableList(this.arrayElement_);
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
            private int c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private Value f15251d = Value.getDefaultInstance();

            private b() {
                p();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static b l() {
                return new b();
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
                q((Argument) generatedMessageLite);
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
                return n() && o() && m().isInitialized();
            }

            public Argument j() {
                Argument argument = new Argument(this);
                int i = this.b;
                int i2 = (i & 1) != 1 ? 0 : 1;
                argument.nameId_ = this.c;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                argument.value_ = this.f15251d;
                argument.bitField0_ = i2;
                return argument;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public b d() {
                b bVarL = l();
                bVarL.q(j());
                return bVarL;
            }

            public Value m() {
                return this.f15251d;
            }

            public boolean n() {
                return (this.b & 1) == 1;
            }

            public boolean o() {
                return (this.b & 2) == 2;
            }

            public b q(Argument argument) {
                if (argument == Argument.getDefaultInstance()) {
                    return this;
                }
                if (argument.hasNameId()) {
                    t(argument.getNameId());
                }
                if (argument.hasValue()) {
                    s(argument.getValue());
                }
                g(e().b(argument.unknownFields));
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:15:0x001d  */
            public b r(e eVar, f fVar) throws Throwable {
                Argument argument = null;
                try {
                    try {
                        Argument argumentC = Argument.PARSER.c(eVar, fVar);
                        if (argumentC != null) {
                            q(argumentC);
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
                                q(argument);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (argument != null) {
                        q(argument);
                    }
                    throw th;
                }
            }

            public b s(Value value) {
                if ((this.b & 2) != 2 || this.f15251d == Value.getDefaultInstance()) {
                    this.f15251d = value;
                } else {
                    Value.b bVarNewBuilder = Value.newBuilder(this.f15251d);
                    bVarNewBuilder.t(value);
                    this.f15251d = bVarNewBuilder.j();
                }
                this.b |= 2;
                return this;
            }

            public b t(int i) {
                this.b |= 1;
                this.c = i;
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
            this.nameId_ = 0;
            this.value_ = Value.getDefaultInstance();
        }

        public static b newBuilder() {
            return b.l();
        }

        public int getNameId() {
            return this.nameId_;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
        public p<Argument> getParserForType() {
            return PARSER;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iO = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.o(1, this.nameId_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iO += CodedOutputStream.s(2, this.value_);
            }
            int size = iO + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        public Value getValue() {
            return this.value_;
        }

        public boolean hasNameId() {
            return (this.bitField0_ & 1) == 1;
        }

        public boolean hasValue() {
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
            if (!hasNameId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (!hasValue()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (getValue().isInitialized()) {
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
                codedOutputStream.a0(1, this.nameId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.d0(2, this.value_);
            }
            codedOutputStream.i0(this.unknownFields);
        }

        public static b newBuilder(Argument argument) {
            b bVarNewBuilder = newBuilder();
            bVarNewBuilder.q(argument);
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
                                    this.bitField0_ |= 1;
                                    this.nameId_ = eVar.s();
                                } else if (iK != 18) {
                                    if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                                    }
                                } else {
                                    Value.b builder = (this.bitField0_ & 2) == 2 ? this.value_.toBuilder() : null;
                                    Value value = (Value) eVar.u(Value.PARSER, fVar);
                                    this.value_ = value;
                                    if (builder != null) {
                                        builder.t(value);
                                        this.value_ = builder.j();
                                    }
                                    this.bitField0_ |= 2;
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

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$Annotation> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Annotation c(e eVar, f fVar) throws InvalidProtocolBufferException {
            return new ProtoBuf$Annotation(eVar, fVar);
        }
    }

    public static final class b extends GeneratedMessageLite.b<ProtoBuf$Annotation, b> implements Object {
        private int b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private List<Argument> f15252d = Collections.emptyList();

        private b() {
            q();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b l() {
            return new b();
        }

        private void m() {
            if ((this.b & 2) != 2) {
                this.f15252d = new ArrayList(this.f15252d);
                this.b |= 2;
            }
        }

        private void q() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a, kotlin.reflect.jvm.internal.impl.protobuf.n.a
        public /* bridge */ /* synthetic */ n.a a(e eVar, f fVar) throws Throwable {
            s(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a
        /* JADX INFO: renamed from: b */
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a a(e eVar, f fVar) throws Throwable {
            s(eVar, fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        public /* bridge */ /* synthetic */ GeneratedMessageLite.b f(GeneratedMessageLite generatedMessageLite) {
            r((ProtoBuf$Annotation) generatedMessageLite);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Annotation build() {
            ProtoBuf$Annotation protoBuf$AnnotationJ = j();
            if (protoBuf$AnnotationJ.isInitialized()) {
                return protoBuf$AnnotationJ;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(protoBuf$AnnotationJ);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
        public final boolean isInitialized() {
            if (!p()) {
                return false;
            }
            for (int i = 0; i < o(); i++) {
                if (!n(i).isInitialized()) {
                    return false;
                }
            }
            return true;
        }

        public ProtoBuf$Annotation j() {
            ProtoBuf$Annotation protoBuf$Annotation = new ProtoBuf$Annotation(this);
            int i = (this.b & 1) != 1 ? 0 : 1;
            protoBuf$Annotation.id_ = this.c;
            if ((this.b & 2) == 2) {
                this.f15252d = Collections.unmodifiableList(this.f15252d);
                this.b &= -3;
            }
            protoBuf$Annotation.argument_ = this.f15252d;
            protoBuf$Annotation.bitField0_ = i;
            return protoBuf$Annotation;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public b d() {
            b bVarL = l();
            bVarL.r(j());
            return bVarL;
        }

        public Argument n(int i) {
            return this.f15252d.get(i);
        }

        public int o() {
            return this.f15252d.size();
        }

        public boolean p() {
            return (this.b & 1) == 1;
        }

        public b r(ProtoBuf$Annotation protoBuf$Annotation) {
            if (protoBuf$Annotation == ProtoBuf$Annotation.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$Annotation.hasId()) {
                t(protoBuf$Annotation.getId());
            }
            if (!protoBuf$Annotation.argument_.isEmpty()) {
                if (this.f15252d.isEmpty()) {
                    this.f15252d = protoBuf$Annotation.argument_;
                    this.b &= -3;
                } else {
                    m();
                    this.f15252d.addAll(protoBuf$Annotation.argument_);
                }
            }
            g(e().b(protoBuf$Annotation.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        public b s(e eVar, f fVar) throws Throwable {
            ProtoBuf$Annotation protoBuf$Annotation = null;
            try {
                try {
                    ProtoBuf$Annotation protoBuf$AnnotationC = ProtoBuf$Annotation.PARSER.c(eVar, fVar);
                    if (protoBuf$AnnotationC != null) {
                        r(protoBuf$AnnotationC);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$Annotation protoBuf$Annotation2 = (ProtoBuf$Annotation) e2.getUnfinishedMessage();
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Annotation = protoBuf$Annotation2;
                        if (protoBuf$Annotation != null) {
                            r(protoBuf$Annotation);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Annotation != null) {
                    r(protoBuf$Annotation);
                }
                throw th;
            }
        }

        public b t(int i) {
            this.b |= 1;
            this.c = i;
            return this;
        }
    }

    static {
        ProtoBuf$Annotation protoBuf$Annotation = new ProtoBuf$Annotation(true);
        defaultInstance = protoBuf$Annotation;
        protoBuf$Annotation.initFields();
    }

    public static ProtoBuf$Annotation getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.id_ = 0;
        this.argument_ = Collections.emptyList();
    }

    public static b newBuilder() {
        return b.l();
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

    public int getId() {
        return this.id_;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public p<ProtoBuf$Annotation> getParserForType() {
        return PARSER;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iO = (this.bitField0_ & 1) == 1 ? CodedOutputStream.o(1, this.id_) + 0 : 0;
        for (int i2 = 0; i2 < this.argument_.size(); i2++) {
            iO += CodedOutputStream.s(2, this.argument_.get(i2));
        }
        int size = iO + this.unknownFields.size();
        this.memoizedSerializedSize = size;
        return size;
    }

    public boolean hasId() {
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
        if (!hasId()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i = 0; i < getArgumentCount(); i++) {
            if (!getArgument(i).isInitialized()) {
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
        if ((this.bitField0_ & 1) == 1) {
            codedOutputStream.a0(1, this.id_);
        }
        for (int i = 0; i < this.argument_.size(); i++) {
            codedOutputStream.d0(2, this.argument_.get(i));
        }
        codedOutputStream.i0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$Annotation protoBuf$Annotation) {
        b bVarNewBuilder = newBuilder();
        bVarNewBuilder.r(protoBuf$Annotation);
        return bVarNewBuilder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
    public ProtoBuf$Annotation getDefaultInstanceForType() {
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

    private ProtoBuf$Annotation(GeneratedMessageLite.b bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = bVar.e();
    }

    private ProtoBuf$Annotation(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = d.f15412a;
    }

    private ProtoBuf$Annotation(e eVar, f fVar) throws InvalidProtocolBufferException {
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
                            this.bitField0_ |= 1;
                            this.id_ = eVar.s();
                        } else if (iK != 18) {
                            if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                            }
                        } else {
                            if ((i & 2) != 2) {
                                this.argument_ = new ArrayList();
                                i |= 2;
                            }
                            this.argument_.add((Argument) eVar.u(Argument.PARSER, fVar));
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if ((i & 2) == 2) {
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
            } catch (InvalidProtocolBufferException e2) {
                throw e2.setUnfinishedMessage(this);
            } catch (IOException e3) {
                throw new InvalidProtocolBufferException(e3.getMessage()).setUnfinishedMessage(this);
            }
        }
        if ((i & 2) == 2) {
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
