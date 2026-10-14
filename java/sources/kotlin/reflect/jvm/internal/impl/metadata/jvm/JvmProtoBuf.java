package kotlin.reflect.jvm.internal.impl.metadata.jvm;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.WireFormat;
import kotlin.reflect.jvm.internal.impl.protobuf.d;
import kotlin.reflect.jvm.internal.impl.protobuf.e;
import kotlin.reflect.jvm.internal.impl.protobuf.f;
import kotlin.reflect.jvm.internal.impl.protobuf.h;
import kotlin.reflect.jvm.internal.impl.protobuf.n;
import kotlin.reflect.jvm.internal.impl.protobuf.o;
import kotlin.reflect.jvm.internal.impl.protobuf.p;

/* JADX INFO: loaded from: classes6.dex */
public final class JvmProtoBuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final GeneratedMessageLite.e<ProtoBuf$Constructor, JvmMethodSignature> f15352a;
    public static final GeneratedMessageLite.e<ProtoBuf$Function, JvmMethodSignature> b;
    public static final GeneratedMessageLite.e<ProtoBuf$Function, Integer> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final GeneratedMessageLite.e<ProtoBuf$Property, JvmPropertySignature> f15353d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final GeneratedMessageLite.e<ProtoBuf$Property, Integer> f15354e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final GeneratedMessageLite.e<ProtoBuf$Type, List<ProtoBuf$Annotation>> f15355f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final GeneratedMessageLite.e<ProtoBuf$Type, Boolean> f15356g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final GeneratedMessageLite.e<ProtoBuf$TypeParameter, List<ProtoBuf$Annotation>> f15357h;
    public static final GeneratedMessageLite.e<ProtoBuf$Class, Integer> i;
    public static final GeneratedMessageLite.e<ProtoBuf$Class, List<ProtoBuf$Property>> j;
    public static final GeneratedMessageLite.e<ProtoBuf$Class, Integer> k;
    public static final GeneratedMessageLite.e<ProtoBuf$Class, Integer> l;
    public static final GeneratedMessageLite.e<ProtoBuf$Package, Integer> m;
    public static final GeneratedMessageLite.e<ProtoBuf$Package, List<ProtoBuf$Property>> n;

    public static final class JvmFieldSignature extends GeneratedMessageLite implements o {
        public static p<JvmFieldSignature> PARSER = new a();
        private static final JvmFieldSignature defaultInstance;
        private int bitField0_;
        private int desc_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private int name_;
        private final d unknownFields;

        static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<JvmFieldSignature> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
            /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
            public JvmFieldSignature c(e eVar, f fVar) throws InvalidProtocolBufferException {
                return new JvmFieldSignature(eVar, fVar);
            }
        }

        public static final class b extends GeneratedMessageLite.b<JvmFieldSignature, b> implements Object {
            private int b;
            private int c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f15358d;

            private b() {
                m();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static b l() {
                return new b();
            }

            private void m() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a, kotlin.reflect.jvm.internal.impl.protobuf.n.a
            public /* bridge */ /* synthetic */ n.a a(e eVar, f fVar) throws Throwable {
                o(eVar, fVar);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a
            /* JADX INFO: renamed from: b */
            public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a a(e eVar, f fVar) throws Throwable {
                o(eVar, fVar);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
            public /* bridge */ /* synthetic */ GeneratedMessageLite.b f(GeneratedMessageLite generatedMessageLite) {
                n((JvmFieldSignature) generatedMessageLite);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public JvmFieldSignature build() {
                JvmFieldSignature jvmFieldSignatureJ = j();
                if (jvmFieldSignatureJ.isInitialized()) {
                    return jvmFieldSignatureJ;
                }
                throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(jvmFieldSignatureJ);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
            public final boolean isInitialized() {
                return true;
            }

            public JvmFieldSignature j() {
                JvmFieldSignature jvmFieldSignature = new JvmFieldSignature(this);
                int i = this.b;
                int i2 = (i & 1) != 1 ? 0 : 1;
                jvmFieldSignature.name_ = this.c;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                jvmFieldSignature.desc_ = this.f15358d;
                jvmFieldSignature.bitField0_ = i2;
                return jvmFieldSignature;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public b d() {
                b bVarL = l();
                bVarL.n(j());
                return bVarL;
            }

            public b n(JvmFieldSignature jvmFieldSignature) {
                if (jvmFieldSignature == JvmFieldSignature.getDefaultInstance()) {
                    return this;
                }
                if (jvmFieldSignature.hasName()) {
                    q(jvmFieldSignature.getName());
                }
                if (jvmFieldSignature.hasDesc()) {
                    p(jvmFieldSignature.getDesc());
                }
                g(e().b(jvmFieldSignature.unknownFields));
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:15:0x001d  */
            public b o(e eVar, f fVar) throws Throwable {
                JvmFieldSignature jvmFieldSignature = null;
                try {
                    try {
                        JvmFieldSignature jvmFieldSignatureC = JvmFieldSignature.PARSER.c(eVar, fVar);
                        if (jvmFieldSignatureC != null) {
                            n(jvmFieldSignatureC);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        JvmFieldSignature jvmFieldSignature2 = (JvmFieldSignature) e2.getUnfinishedMessage();
                        try {
                            throw e2;
                        } catch (Throwable th) {
                            th = th;
                            jvmFieldSignature = jvmFieldSignature2;
                            if (jvmFieldSignature != null) {
                                n(jvmFieldSignature);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (jvmFieldSignature != null) {
                        n(jvmFieldSignature);
                    }
                    throw th;
                }
            }

            public b p(int i) {
                this.b |= 2;
                this.f15358d = i;
                return this;
            }

            public b q(int i) {
                this.b |= 1;
                this.c = i;
                return this;
            }
        }

        static {
            JvmFieldSignature jvmFieldSignature = new JvmFieldSignature(true);
            defaultInstance = jvmFieldSignature;
            jvmFieldSignature.initFields();
        }

        public static JvmFieldSignature getDefaultInstance() {
            return defaultInstance;
        }

        private void initFields() {
            this.name_ = 0;
            this.desc_ = 0;
        }

        public static b newBuilder() {
            return b.l();
        }

        public int getDesc() {
            return this.desc_;
        }

        public int getName() {
            return this.name_;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
        public p<JvmFieldSignature> getParserForType() {
            return PARSER;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iO = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.o(1, this.name_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iO += CodedOutputStream.o(2, this.desc_);
            }
            int size = iO + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        public boolean hasDesc() {
            return (this.bitField0_ & 2) == 2;
        }

        public boolean hasName() {
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
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.a0(1, this.name_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.a0(2, this.desc_);
            }
            codedOutputStream.i0(this.unknownFields);
        }

        public static b newBuilder(JvmFieldSignature jvmFieldSignature) {
            b bVarNewBuilder = newBuilder();
            bVarNewBuilder.n(jvmFieldSignature);
            return bVarNewBuilder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
        public JvmFieldSignature getDefaultInstanceForType() {
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

        private JvmFieldSignature(GeneratedMessageLite.b bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = bVar.e();
        }

        private JvmFieldSignature(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = d.f15412a;
        }

        private JvmFieldSignature(e eVar, f fVar) throws InvalidProtocolBufferException {
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
                                this.name_ = eVar.s();
                            } else if (iK != 16) {
                                if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                                }
                            } else {
                                this.bitField0_ |= 2;
                                this.desc_ = eVar.s();
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

    public static final class JvmMethodSignature extends GeneratedMessageLite implements o {
        public static p<JvmMethodSignature> PARSER = new a();
        private static final JvmMethodSignature defaultInstance;
        private int bitField0_;
        private int desc_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private int name_;
        private final d unknownFields;

        static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<JvmMethodSignature> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
            /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
            public JvmMethodSignature c(e eVar, f fVar) throws InvalidProtocolBufferException {
                return new JvmMethodSignature(eVar, fVar);
            }
        }

        public static final class b extends GeneratedMessageLite.b<JvmMethodSignature, b> implements Object {
            private int b;
            private int c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f15359d;

            private b() {
                m();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static b l() {
                return new b();
            }

            private void m() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a, kotlin.reflect.jvm.internal.impl.protobuf.n.a
            public /* bridge */ /* synthetic */ n.a a(e eVar, f fVar) throws Throwable {
                o(eVar, fVar);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a
            /* JADX INFO: renamed from: b */
            public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a a(e eVar, f fVar) throws Throwable {
                o(eVar, fVar);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
            public /* bridge */ /* synthetic */ GeneratedMessageLite.b f(GeneratedMessageLite generatedMessageLite) {
                n((JvmMethodSignature) generatedMessageLite);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public JvmMethodSignature build() {
                JvmMethodSignature jvmMethodSignatureJ = j();
                if (jvmMethodSignatureJ.isInitialized()) {
                    return jvmMethodSignatureJ;
                }
                throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(jvmMethodSignatureJ);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
            public final boolean isInitialized() {
                return true;
            }

            public JvmMethodSignature j() {
                JvmMethodSignature jvmMethodSignature = new JvmMethodSignature(this);
                int i = this.b;
                int i2 = (i & 1) != 1 ? 0 : 1;
                jvmMethodSignature.name_ = this.c;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                jvmMethodSignature.desc_ = this.f15359d;
                jvmMethodSignature.bitField0_ = i2;
                return jvmMethodSignature;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public b d() {
                b bVarL = l();
                bVarL.n(j());
                return bVarL;
            }

            public b n(JvmMethodSignature jvmMethodSignature) {
                if (jvmMethodSignature == JvmMethodSignature.getDefaultInstance()) {
                    return this;
                }
                if (jvmMethodSignature.hasName()) {
                    q(jvmMethodSignature.getName());
                }
                if (jvmMethodSignature.hasDesc()) {
                    p(jvmMethodSignature.getDesc());
                }
                g(e().b(jvmMethodSignature.unknownFields));
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:15:0x001d  */
            public b o(e eVar, f fVar) throws Throwable {
                JvmMethodSignature jvmMethodSignature = null;
                try {
                    try {
                        JvmMethodSignature jvmMethodSignatureC = JvmMethodSignature.PARSER.c(eVar, fVar);
                        if (jvmMethodSignatureC != null) {
                            n(jvmMethodSignatureC);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        JvmMethodSignature jvmMethodSignature2 = (JvmMethodSignature) e2.getUnfinishedMessage();
                        try {
                            throw e2;
                        } catch (Throwable th) {
                            th = th;
                            jvmMethodSignature = jvmMethodSignature2;
                            if (jvmMethodSignature != null) {
                                n(jvmMethodSignature);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (jvmMethodSignature != null) {
                        n(jvmMethodSignature);
                    }
                    throw th;
                }
            }

            public b p(int i) {
                this.b |= 2;
                this.f15359d = i;
                return this;
            }

            public b q(int i) {
                this.b |= 1;
                this.c = i;
                return this;
            }
        }

        static {
            JvmMethodSignature jvmMethodSignature = new JvmMethodSignature(true);
            defaultInstance = jvmMethodSignature;
            jvmMethodSignature.initFields();
        }

        public static JvmMethodSignature getDefaultInstance() {
            return defaultInstance;
        }

        private void initFields() {
            this.name_ = 0;
            this.desc_ = 0;
        }

        public static b newBuilder() {
            return b.l();
        }

        public int getDesc() {
            return this.desc_;
        }

        public int getName() {
            return this.name_;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
        public p<JvmMethodSignature> getParserForType() {
            return PARSER;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iO = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.o(1, this.name_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iO += CodedOutputStream.o(2, this.desc_);
            }
            int size = iO + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        public boolean hasDesc() {
            return (this.bitField0_ & 2) == 2;
        }

        public boolean hasName() {
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
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.a0(1, this.name_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.a0(2, this.desc_);
            }
            codedOutputStream.i0(this.unknownFields);
        }

        public static b newBuilder(JvmMethodSignature jvmMethodSignature) {
            b bVarNewBuilder = newBuilder();
            bVarNewBuilder.n(jvmMethodSignature);
            return bVarNewBuilder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
        public JvmMethodSignature getDefaultInstanceForType() {
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

        private JvmMethodSignature(GeneratedMessageLite.b bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = bVar.e();
        }

        private JvmMethodSignature(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = d.f15412a;
        }

        private JvmMethodSignature(e eVar, f fVar) throws InvalidProtocolBufferException {
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
                                this.name_ = eVar.s();
                            } else if (iK != 16) {
                                if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                                }
                            } else {
                                this.bitField0_ |= 2;
                                this.desc_ = eVar.s();
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

    public static final class JvmPropertySignature extends GeneratedMessageLite implements o {
        public static p<JvmPropertySignature> PARSER = new a();
        private static final JvmPropertySignature defaultInstance;
        private int bitField0_;
        private JvmFieldSignature field_;
        private JvmMethodSignature getter_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private JvmMethodSignature setter_;
        private JvmMethodSignature syntheticMethod_;
        private final d unknownFields;

        static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<JvmPropertySignature> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
            /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
            public JvmPropertySignature c(e eVar, f fVar) throws InvalidProtocolBufferException {
                return new JvmPropertySignature(eVar, fVar);
            }
        }

        public static final class b extends GeneratedMessageLite.b<JvmPropertySignature, b> implements Object {
            private int b;
            private JvmFieldSignature c = JvmFieldSignature.getDefaultInstance();

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private JvmMethodSignature f15360d = JvmMethodSignature.getDefaultInstance();

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private JvmMethodSignature f15361e = JvmMethodSignature.getDefaultInstance();

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private JvmMethodSignature f15362f = JvmMethodSignature.getDefaultInstance();

            private b() {
                m();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static b l() {
                return new b();
            }

            private void m() {
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
                o((JvmPropertySignature) generatedMessageLite);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public JvmPropertySignature build() {
                JvmPropertySignature jvmPropertySignatureJ = j();
                if (jvmPropertySignatureJ.isInitialized()) {
                    return jvmPropertySignatureJ;
                }
                throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(jvmPropertySignatureJ);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
            public final boolean isInitialized() {
                return true;
            }

            public JvmPropertySignature j() {
                JvmPropertySignature jvmPropertySignature = new JvmPropertySignature(this);
                int i = this.b;
                int i2 = (i & 1) != 1 ? 0 : 1;
                jvmPropertySignature.field_ = this.c;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                jvmPropertySignature.syntheticMethod_ = this.f15360d;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                jvmPropertySignature.getter_ = this.f15361e;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                jvmPropertySignature.setter_ = this.f15362f;
                jvmPropertySignature.bitField0_ = i2;
                return jvmPropertySignature;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public b d() {
                b bVarL = l();
                bVarL.o(j());
                return bVarL;
            }

            public b n(JvmFieldSignature jvmFieldSignature) {
                if ((this.b & 1) != 1 || this.c == JvmFieldSignature.getDefaultInstance()) {
                    this.c = jvmFieldSignature;
                } else {
                    JvmFieldSignature.b bVarNewBuilder = JvmFieldSignature.newBuilder(this.c);
                    bVarNewBuilder.n(jvmFieldSignature);
                    this.c = bVarNewBuilder.j();
                }
                this.b |= 1;
                return this;
            }

            public b o(JvmPropertySignature jvmPropertySignature) {
                if (jvmPropertySignature == JvmPropertySignature.getDefaultInstance()) {
                    return this;
                }
                if (jvmPropertySignature.hasField()) {
                    n(jvmPropertySignature.getField());
                }
                if (jvmPropertySignature.hasSyntheticMethod()) {
                    s(jvmPropertySignature.getSyntheticMethod());
                }
                if (jvmPropertySignature.hasGetter()) {
                    q(jvmPropertySignature.getGetter());
                }
                if (jvmPropertySignature.hasSetter()) {
                    r(jvmPropertySignature.getSetter());
                }
                g(e().b(jvmPropertySignature.unknownFields));
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:15:0x001d  */
            public b p(e eVar, f fVar) throws Throwable {
                JvmPropertySignature jvmPropertySignature = null;
                try {
                    try {
                        JvmPropertySignature jvmPropertySignatureC = JvmPropertySignature.PARSER.c(eVar, fVar);
                        if (jvmPropertySignatureC != null) {
                            o(jvmPropertySignatureC);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        JvmPropertySignature jvmPropertySignature2 = (JvmPropertySignature) e2.getUnfinishedMessage();
                        try {
                            throw e2;
                        } catch (Throwable th) {
                            th = th;
                            jvmPropertySignature = jvmPropertySignature2;
                            if (jvmPropertySignature != null) {
                                o(jvmPropertySignature);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (jvmPropertySignature != null) {
                        o(jvmPropertySignature);
                    }
                    throw th;
                }
            }

            public b q(JvmMethodSignature jvmMethodSignature) {
                if ((this.b & 4) != 4 || this.f15361e == JvmMethodSignature.getDefaultInstance()) {
                    this.f15361e = jvmMethodSignature;
                } else {
                    JvmMethodSignature.b bVarNewBuilder = JvmMethodSignature.newBuilder(this.f15361e);
                    bVarNewBuilder.n(jvmMethodSignature);
                    this.f15361e = bVarNewBuilder.j();
                }
                this.b |= 4;
                return this;
            }

            public b r(JvmMethodSignature jvmMethodSignature) {
                if ((this.b & 8) != 8 || this.f15362f == JvmMethodSignature.getDefaultInstance()) {
                    this.f15362f = jvmMethodSignature;
                } else {
                    JvmMethodSignature.b bVarNewBuilder = JvmMethodSignature.newBuilder(this.f15362f);
                    bVarNewBuilder.n(jvmMethodSignature);
                    this.f15362f = bVarNewBuilder.j();
                }
                this.b |= 8;
                return this;
            }

            public b s(JvmMethodSignature jvmMethodSignature) {
                if ((this.b & 2) != 2 || this.f15360d == JvmMethodSignature.getDefaultInstance()) {
                    this.f15360d = jvmMethodSignature;
                } else {
                    JvmMethodSignature.b bVarNewBuilder = JvmMethodSignature.newBuilder(this.f15360d);
                    bVarNewBuilder.n(jvmMethodSignature);
                    this.f15360d = bVarNewBuilder.j();
                }
                this.b |= 2;
                return this;
            }
        }

        static {
            JvmPropertySignature jvmPropertySignature = new JvmPropertySignature(true);
            defaultInstance = jvmPropertySignature;
            jvmPropertySignature.initFields();
        }

        public static JvmPropertySignature getDefaultInstance() {
            return defaultInstance;
        }

        private void initFields() {
            this.field_ = JvmFieldSignature.getDefaultInstance();
            this.syntheticMethod_ = JvmMethodSignature.getDefaultInstance();
            this.getter_ = JvmMethodSignature.getDefaultInstance();
            this.setter_ = JvmMethodSignature.getDefaultInstance();
        }

        public static b newBuilder() {
            return b.l();
        }

        public JvmFieldSignature getField() {
            return this.field_;
        }

        public JvmMethodSignature getGetter() {
            return this.getter_;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
        public p<JvmPropertySignature> getParserForType() {
            return PARSER;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iS = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.s(1, this.field_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iS += CodedOutputStream.s(2, this.syntheticMethod_);
            }
            if ((this.bitField0_ & 4) == 4) {
                iS += CodedOutputStream.s(3, this.getter_);
            }
            if ((this.bitField0_ & 8) == 8) {
                iS += CodedOutputStream.s(4, this.setter_);
            }
            int size = iS + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        public JvmMethodSignature getSetter() {
            return this.setter_;
        }

        public JvmMethodSignature getSyntheticMethod() {
            return this.syntheticMethod_;
        }

        public boolean hasField() {
            return (this.bitField0_ & 1) == 1;
        }

        public boolean hasGetter() {
            return (this.bitField0_ & 4) == 4;
        }

        public boolean hasSetter() {
            return (this.bitField0_ & 8) == 8;
        }

        public boolean hasSyntheticMethod() {
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
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.d0(1, this.field_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.d0(2, this.syntheticMethod_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.d0(3, this.getter_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.d0(4, this.setter_);
            }
            codedOutputStream.i0(this.unknownFields);
        }

        public static b newBuilder(JvmPropertySignature jvmPropertySignature) {
            b bVarNewBuilder = newBuilder();
            bVarNewBuilder.o(jvmPropertySignature);
            return bVarNewBuilder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
        public JvmPropertySignature getDefaultInstanceForType() {
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

        private JvmPropertySignature(GeneratedMessageLite.b bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = bVar.e();
        }

        private JvmPropertySignature(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = d.f15412a;
        }

        private JvmPropertySignature(e eVar, f fVar) throws InvalidProtocolBufferException {
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
                            if (iK == 10) {
                                JvmFieldSignature.b builder = (this.bitField0_ & 1) == 1 ? this.field_.toBuilder() : null;
                                JvmFieldSignature jvmFieldSignature = (JvmFieldSignature) eVar.u(JvmFieldSignature.PARSER, fVar);
                                this.field_ = jvmFieldSignature;
                                if (builder != null) {
                                    builder.n(jvmFieldSignature);
                                    this.field_ = builder.j();
                                }
                                this.bitField0_ |= 1;
                            } else if (iK == 18) {
                                JvmMethodSignature.b builder2 = (this.bitField0_ & 2) == 2 ? this.syntheticMethod_.toBuilder() : null;
                                JvmMethodSignature jvmMethodSignature = (JvmMethodSignature) eVar.u(JvmMethodSignature.PARSER, fVar);
                                this.syntheticMethod_ = jvmMethodSignature;
                                if (builder2 != null) {
                                    builder2.n(jvmMethodSignature);
                                    this.syntheticMethod_ = builder2.j();
                                }
                                this.bitField0_ |= 2;
                            } else if (iK == 26) {
                                JvmMethodSignature.b builder3 = (this.bitField0_ & 4) == 4 ? this.getter_.toBuilder() : null;
                                JvmMethodSignature jvmMethodSignature2 = (JvmMethodSignature) eVar.u(JvmMethodSignature.PARSER, fVar);
                                this.getter_ = jvmMethodSignature2;
                                if (builder3 != null) {
                                    builder3.n(jvmMethodSignature2);
                                    this.getter_ = builder3.j();
                                }
                                this.bitField0_ |= 4;
                            } else if (iK != 34) {
                                if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                                }
                            } else {
                                JvmMethodSignature.b builder4 = (this.bitField0_ & 8) == 8 ? this.setter_.toBuilder() : null;
                                JvmMethodSignature jvmMethodSignature3 = (JvmMethodSignature) eVar.u(JvmMethodSignature.PARSER, fVar);
                                this.setter_ = jvmMethodSignature3;
                                if (builder4 != null) {
                                    builder4.n(jvmMethodSignature3);
                                    this.setter_ = builder4.j();
                                }
                                this.bitField0_ |= 8;
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

    public static final class StringTableTypes extends GeneratedMessageLite implements o {
        public static p<StringTableTypes> PARSER = new a();
        private static final StringTableTypes defaultInstance;
        private int localNameMemoizedSerializedSize;
        private List<Integer> localName_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private List<Record> record_;
        private final d unknownFields;

        public static final class Record extends GeneratedMessageLite implements o {
            public static p<Record> PARSER = new a();
            private static final Record defaultInstance;
            private int bitField0_;
            private byte memoizedIsInitialized;
            private int memoizedSerializedSize;
            private Operation operation_;
            private int predefinedIndex_;
            private int range_;
            private int replaceCharMemoizedSerializedSize;
            private List<Integer> replaceChar_;
            private Object string_;
            private int substringIndexMemoizedSerializedSize;
            private List<Integer> substringIndex_;
            private final d unknownFields;

            public enum Operation implements h.a {
                NONE(0, 0),
                INTERNAL_TO_CLASS_ID(1, 1),
                DESC_TO_CLASS_ID(2, 2);

                private static h.b<Operation> internalValueMap = new a();
                private final int value;

                static class a implements h.b<Operation> {
                    a() {
                    }

                    @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.b
                    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                    public Operation a(int i) {
                        return Operation.valueOf(i);
                    }
                }

                Operation(int i, int i2) {
                    this.value = i2;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
                public final int getNumber() {
                    return this.value;
                }

                public static Operation valueOf(int i) {
                    if (i == 0) {
                        return NONE;
                    }
                    if (i == 1) {
                        return INTERNAL_TO_CLASS_ID;
                    }
                    if (i != 2) {
                        return null;
                    }
                    return DESC_TO_CLASS_ID;
                }
            }

            static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<Record> {
                a() {
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
                /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
                public Record c(e eVar, f fVar) throws InvalidProtocolBufferException {
                    return new Record(eVar, fVar);
                }
            }

            public static final class b extends GeneratedMessageLite.b<Record, b> implements Object {
                private int b;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                private int f15363d;
                private int c = 1;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                private Object f15364e = "";

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                private Operation f15365f = Operation.NONE;

                /* JADX INFO: renamed from: g, reason: collision with root package name */
                private List<Integer> f15366g = Collections.emptyList();

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                private List<Integer> f15367h = Collections.emptyList();

                private b() {
                    o();
                }

                /* JADX INFO: Access modifiers changed from: private */
                public static b l() {
                    return new b();
                }

                private void m() {
                    if ((this.b & 32) != 32) {
                        this.f15367h = new ArrayList(this.f15367h);
                        this.b |= 32;
                    }
                }

                private void n() {
                    if ((this.b & 16) != 16) {
                        this.f15366g = new ArrayList(this.f15366g);
                        this.b |= 16;
                    }
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
                    p((Record) generatedMessageLite);
                    return this;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
                /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
                public Record build() {
                    Record recordJ = j();
                    if (recordJ.isInitialized()) {
                        return recordJ;
                    }
                    throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(recordJ);
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
                public final boolean isInitialized() {
                    return true;
                }

                public Record j() {
                    Record record = new Record(this);
                    int i = this.b;
                    int i2 = (i & 1) != 1 ? 0 : 1;
                    record.range_ = this.c;
                    if ((i & 2) == 2) {
                        i2 |= 2;
                    }
                    record.predefinedIndex_ = this.f15363d;
                    if ((i & 4) == 4) {
                        i2 |= 4;
                    }
                    record.string_ = this.f15364e;
                    if ((i & 8) == 8) {
                        i2 |= 8;
                    }
                    record.operation_ = this.f15365f;
                    if ((this.b & 16) == 16) {
                        this.f15366g = Collections.unmodifiableList(this.f15366g);
                        this.b &= -17;
                    }
                    record.substringIndex_ = this.f15366g;
                    if ((this.b & 32) == 32) {
                        this.f15367h = Collections.unmodifiableList(this.f15367h);
                        this.b &= -33;
                    }
                    record.replaceChar_ = this.f15367h;
                    record.bitField0_ = i2;
                    return record;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
                /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
                public b d() {
                    b bVarL = l();
                    bVarL.p(j());
                    return bVarL;
                }

                public b p(Record record) {
                    if (record == Record.getDefaultInstance()) {
                        return this;
                    }
                    if (record.hasRange()) {
                        t(record.getRange());
                    }
                    if (record.hasPredefinedIndex()) {
                        s(record.getPredefinedIndex());
                    }
                    if (record.hasString()) {
                        this.b |= 4;
                        this.f15364e = record.string_;
                    }
                    if (record.hasOperation()) {
                        r(record.getOperation());
                    }
                    if (!record.substringIndex_.isEmpty()) {
                        if (this.f15366g.isEmpty()) {
                            this.f15366g = record.substringIndex_;
                            this.b &= -17;
                        } else {
                            n();
                            this.f15366g.addAll(record.substringIndex_);
                        }
                    }
                    if (!record.replaceChar_.isEmpty()) {
                        if (this.f15367h.isEmpty()) {
                            this.f15367h = record.replaceChar_;
                            this.b &= -33;
                        } else {
                            m();
                            this.f15367h.addAll(record.replaceChar_);
                        }
                    }
                    g(e().b(record.unknownFields));
                    return this;
                }

                /* JADX WARN: Code duplicated, block: B:15:0x001d  */
                public b q(e eVar, f fVar) throws Throwable {
                    Record record = null;
                    try {
                        try {
                            Record recordC = Record.PARSER.c(eVar, fVar);
                            if (recordC != null) {
                                p(recordC);
                            }
                            return this;
                        } catch (InvalidProtocolBufferException e2) {
                            Record record2 = (Record) e2.getUnfinishedMessage();
                            try {
                                throw e2;
                            } catch (Throwable th) {
                                th = th;
                                record = record2;
                                if (record != null) {
                                    p(record);
                                }
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (record != null) {
                            p(record);
                        }
                        throw th;
                    }
                }

                public b r(Operation operation) {
                    Objects.requireNonNull(operation);
                    this.b |= 8;
                    this.f15365f = operation;
                    return this;
                }

                public b s(int i) {
                    this.b |= 2;
                    this.f15363d = i;
                    return this;
                }

                public b t(int i) {
                    this.b |= 1;
                    this.c = i;
                    return this;
                }
            }

            static {
                Record record = new Record(true);
                defaultInstance = record;
                record.initFields();
            }

            public static Record getDefaultInstance() {
                return defaultInstance;
            }

            private void initFields() {
                this.range_ = 1;
                this.predefinedIndex_ = 0;
                this.string_ = "";
                this.operation_ = Operation.NONE;
                this.substringIndex_ = Collections.emptyList();
                this.replaceChar_ = Collections.emptyList();
            }

            public static b newBuilder() {
                return b.l();
            }

            public Operation getOperation() {
                return this.operation_;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
            public p<Record> getParserForType() {
                return PARSER;
            }

            public int getPredefinedIndex() {
                return this.predefinedIndex_;
            }

            public int getRange() {
                return this.range_;
            }

            public int getReplaceCharCount() {
                return this.replaceChar_.size();
            }

            public List<Integer> getReplaceCharList() {
                return this.replaceChar_;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
            public int getSerializedSize() {
                int i = this.memoizedSerializedSize;
                if (i != -1) {
                    return i;
                }
                int iO = (this.bitField0_ & 1) == 1 ? CodedOutputStream.o(1, this.range_) + 0 : 0;
                if ((this.bitField0_ & 2) == 2) {
                    iO += CodedOutputStream.o(2, this.predefinedIndex_);
                }
                if ((this.bitField0_ & 8) == 8) {
                    iO += CodedOutputStream.h(3, this.operation_.getNumber());
                }
                int iP = 0;
                for (int i2 = 0; i2 < this.substringIndex_.size(); i2++) {
                    iP += CodedOutputStream.p(this.substringIndex_.get(i2).intValue());
                }
                int iP2 = iO + iP;
                if (!getSubstringIndexList().isEmpty()) {
                    iP2 = iP2 + 1 + CodedOutputStream.p(iP);
                }
                this.substringIndexMemoizedSerializedSize = iP;
                int iP3 = 0;
                for (int i3 = 0; i3 < this.replaceChar_.size(); i3++) {
                    iP3 += CodedOutputStream.p(this.replaceChar_.get(i3).intValue());
                }
                int iD = iP2 + iP3;
                if (!getReplaceCharList().isEmpty()) {
                    iD = iD + 1 + CodedOutputStream.p(iP3);
                }
                this.replaceCharMemoizedSerializedSize = iP3;
                if ((this.bitField0_ & 4) == 4) {
                    iD += CodedOutputStream.d(6, getStringBytes());
                }
                int size = iD + this.unknownFields.size();
                this.memoizedSerializedSize = size;
                return size;
            }

            public String getString() {
                Object obj = this.string_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                d dVar = (d) obj;
                String strZ = dVar.z();
                if (dVar.q()) {
                    this.string_ = strZ;
                }
                return strZ;
            }

            public d getStringBytes() {
                Object obj = this.string_;
                if (!(obj instanceof String)) {
                    return (d) obj;
                }
                d dVarL = d.l((String) obj);
                this.string_ = dVarL;
                return dVarL;
            }

            public int getSubstringIndexCount() {
                return this.substringIndex_.size();
            }

            public List<Integer> getSubstringIndexList() {
                return this.substringIndex_;
            }

            public boolean hasOperation() {
                return (this.bitField0_ & 8) == 8;
            }

            public boolean hasPredefinedIndex() {
                return (this.bitField0_ & 2) == 2;
            }

            public boolean hasRange() {
                return (this.bitField0_ & 1) == 1;
            }

            public boolean hasString() {
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
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                getSerializedSize();
                if ((this.bitField0_ & 1) == 1) {
                    codedOutputStream.a0(1, this.range_);
                }
                if ((this.bitField0_ & 2) == 2) {
                    codedOutputStream.a0(2, this.predefinedIndex_);
                }
                if ((this.bitField0_ & 8) == 8) {
                    codedOutputStream.S(3, this.operation_.getNumber());
                }
                if (getSubstringIndexList().size() > 0) {
                    codedOutputStream.o0(34);
                    codedOutputStream.o0(this.substringIndexMemoizedSerializedSize);
                }
                for (int i = 0; i < this.substringIndex_.size(); i++) {
                    codedOutputStream.b0(this.substringIndex_.get(i).intValue());
                }
                if (getReplaceCharList().size() > 0) {
                    codedOutputStream.o0(42);
                    codedOutputStream.o0(this.replaceCharMemoizedSerializedSize);
                }
                for (int i2 = 0; i2 < this.replaceChar_.size(); i2++) {
                    codedOutputStream.b0(this.replaceChar_.get(i2).intValue());
                }
                if ((this.bitField0_ & 4) == 4) {
                    codedOutputStream.O(6, getStringBytes());
                }
                codedOutputStream.i0(this.unknownFields);
            }

            public static b newBuilder(Record record) {
                b bVarNewBuilder = newBuilder();
                bVarNewBuilder.p(record);
                return bVarNewBuilder;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
            public Record getDefaultInstanceForType() {
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

            private Record(GeneratedMessageLite.b bVar) {
                super(bVar);
                this.substringIndexMemoizedSerializedSize = -1;
                this.replaceCharMemoizedSerializedSize = -1;
                this.memoizedIsInitialized = (byte) -1;
                this.memoizedSerializedSize = -1;
                this.unknownFields = bVar.e();
            }

            private Record(boolean z) {
                this.substringIndexMemoizedSerializedSize = -1;
                this.replaceCharMemoizedSerializedSize = -1;
                this.memoizedIsInitialized = (byte) -1;
                this.memoizedSerializedSize = -1;
                this.unknownFields = d.f15412a;
            }

            private Record(e eVar, f fVar) throws InvalidProtocolBufferException {
                this.substringIndexMemoizedSerializedSize = -1;
                this.replaceCharMemoizedSerializedSize = -1;
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
                                    this.range_ = eVar.s();
                                } else if (iK == 16) {
                                    this.bitField0_ |= 2;
                                    this.predefinedIndex_ = eVar.s();
                                } else if (iK == 24) {
                                    int iN = eVar.n();
                                    Operation operationValueOf = Operation.valueOf(iN);
                                    if (operationValueOf == null) {
                                        codedOutputStreamJ.o0(iK);
                                        codedOutputStreamJ.o0(iN);
                                    } else {
                                        this.bitField0_ |= 8;
                                        this.operation_ = operationValueOf;
                                    }
                                } else if (iK == 32) {
                                    if ((i & 16) != 16) {
                                        this.substringIndex_ = new ArrayList();
                                        i |= 16;
                                    }
                                    this.substringIndex_.add(Integer.valueOf(eVar.s()));
                                } else if (iK == 34) {
                                    int iJ = eVar.j(eVar.A());
                                    if ((i & 16) != 16 && eVar.e() > 0) {
                                        this.substringIndex_ = new ArrayList();
                                        i |= 16;
                                    }
                                    while (eVar.e() > 0) {
                                        this.substringIndex_.add(Integer.valueOf(eVar.s()));
                                    }
                                    eVar.i(iJ);
                                } else if (iK == 40) {
                                    if ((i & 32) != 32) {
                                        this.replaceChar_ = new ArrayList();
                                        i |= 32;
                                    }
                                    this.replaceChar_.add(Integer.valueOf(eVar.s()));
                                } else if (iK == 42) {
                                    int iJ2 = eVar.j(eVar.A());
                                    if ((i & 32) != 32 && eVar.e() > 0) {
                                        this.replaceChar_ = new ArrayList();
                                        i |= 32;
                                    }
                                    while (eVar.e() > 0) {
                                        this.replaceChar_.add(Integer.valueOf(eVar.s()));
                                    }
                                    eVar.i(iJ2);
                                } else if (iK != 50) {
                                    if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                                    }
                                } else {
                                    d dVarL = eVar.l();
                                    this.bitField0_ |= 4;
                                    this.string_ = dVarL;
                                }
                            }
                            z = true;
                        } catch (Throwable th) {
                            if ((i & 16) == 16) {
                                this.substringIndex_ = Collections.unmodifiableList(this.substringIndex_);
                            }
                            if ((i & 32) == 32) {
                                this.replaceChar_ = Collections.unmodifiableList(this.replaceChar_);
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
                if ((i & 16) == 16) {
                    this.substringIndex_ = Collections.unmodifiableList(this.substringIndex_);
                }
                if ((i & 32) == 32) {
                    this.replaceChar_ = Collections.unmodifiableList(this.replaceChar_);
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

        static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<StringTableTypes> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
            /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
            public StringTableTypes c(e eVar, f fVar) throws InvalidProtocolBufferException {
                return new StringTableTypes(eVar, fVar);
            }
        }

        public static final class b extends GeneratedMessageLite.b<StringTableTypes, b> implements Object {
            private int b;
            private List<Record> c = Collections.emptyList();

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private List<Integer> f15368d = Collections.emptyList();

            private b() {
                o();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static b l() {
                return new b();
            }

            private void m() {
                if ((this.b & 2) != 2) {
                    this.f15368d = new ArrayList(this.f15368d);
                    this.b |= 2;
                }
            }

            private void n() {
                if ((this.b & 1) != 1) {
                    this.c = new ArrayList(this.c);
                    this.b |= 1;
                }
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
                p((StringTableTypes) generatedMessageLite);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public StringTableTypes build() {
                StringTableTypes stringTableTypesJ = j();
                if (stringTableTypesJ.isInitialized()) {
                    return stringTableTypesJ;
                }
                throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0345a.c(stringTableTypesJ);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
            public final boolean isInitialized() {
                return true;
            }

            public StringTableTypes j() {
                StringTableTypes stringTableTypes = new StringTableTypes(this);
                if ((this.b & 1) == 1) {
                    this.c = Collections.unmodifiableList(this.c);
                    this.b &= -2;
                }
                stringTableTypes.record_ = this.c;
                if ((this.b & 2) == 2) {
                    this.f15368d = Collections.unmodifiableList(this.f15368d);
                    this.b &= -3;
                }
                stringTableTypes.localName_ = this.f15368d;
                return stringTableTypes;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public b d() {
                b bVarL = l();
                bVarL.p(j());
                return bVarL;
            }

            public b p(StringTableTypes stringTableTypes) {
                if (stringTableTypes == StringTableTypes.getDefaultInstance()) {
                    return this;
                }
                if (!stringTableTypes.record_.isEmpty()) {
                    if (this.c.isEmpty()) {
                        this.c = stringTableTypes.record_;
                        this.b &= -2;
                    } else {
                        n();
                        this.c.addAll(stringTableTypes.record_);
                    }
                }
                if (!stringTableTypes.localName_.isEmpty()) {
                    if (this.f15368d.isEmpty()) {
                        this.f15368d = stringTableTypes.localName_;
                        this.b &= -3;
                    } else {
                        m();
                        this.f15368d.addAll(stringTableTypes.localName_);
                    }
                }
                g(e().b(stringTableTypes.unknownFields));
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:15:0x001d  */
            public b q(e eVar, f fVar) throws Throwable {
                StringTableTypes stringTableTypes = null;
                try {
                    try {
                        StringTableTypes stringTableTypesC = StringTableTypes.PARSER.c(eVar, fVar);
                        if (stringTableTypesC != null) {
                            p(stringTableTypesC);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        StringTableTypes stringTableTypes2 = (StringTableTypes) e2.getUnfinishedMessage();
                        try {
                            throw e2;
                        } catch (Throwable th) {
                            th = th;
                            stringTableTypes = stringTableTypes2;
                            if (stringTableTypes != null) {
                                p(stringTableTypes);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (stringTableTypes != null) {
                        p(stringTableTypes);
                    }
                    throw th;
                }
            }
        }

        static {
            StringTableTypes stringTableTypes = new StringTableTypes(true);
            defaultInstance = stringTableTypes;
            stringTableTypes.initFields();
        }

        public static StringTableTypes getDefaultInstance() {
            return defaultInstance;
        }

        private void initFields() {
            this.record_ = Collections.emptyList();
            this.localName_ = Collections.emptyList();
        }

        public static b newBuilder() {
            return b.l();
        }

        public static StringTableTypes parseDelimitedFrom(InputStream inputStream, f fVar) throws IOException {
            return PARSER.d(inputStream, fVar);
        }

        public List<Integer> getLocalNameList() {
            return this.localName_;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
        public p<StringTableTypes> getParserForType() {
            return PARSER;
        }

        public List<Record> getRecordList() {
            return this.record_;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iS = 0;
            for (int i2 = 0; i2 < this.record_.size(); i2++) {
                iS += CodedOutputStream.s(1, this.record_.get(i2));
            }
            int iP = 0;
            for (int i3 = 0; i3 < this.localName_.size(); i3++) {
                iP += CodedOutputStream.p(this.localName_.get(i3).intValue());
            }
            int iP2 = iS + iP;
            if (!getLocalNameList().isEmpty()) {
                iP2 = iP2 + 1 + CodedOutputStream.p(iP);
            }
            this.localNameMemoizedSerializedSize = iP;
            int size = iP2 + this.unknownFields.size();
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
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.n
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            for (int i = 0; i < this.record_.size(); i++) {
                codedOutputStream.d0(1, this.record_.get(i));
            }
            if (getLocalNameList().size() > 0) {
                codedOutputStream.o0(42);
                codedOutputStream.o0(this.localNameMemoizedSerializedSize);
            }
            for (int i2 = 0; i2 < this.localName_.size(); i2++) {
                codedOutputStream.b0(this.localName_.get(i2).intValue());
            }
            codedOutputStream.i0(this.unknownFields);
        }

        public static b newBuilder(StringTableTypes stringTableTypes) {
            b bVarNewBuilder = newBuilder();
            bVarNewBuilder.p(stringTableTypes);
            return bVarNewBuilder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
        public StringTableTypes getDefaultInstanceForType() {
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

        private StringTableTypes(GeneratedMessageLite.b bVar) {
            super(bVar);
            this.localNameMemoizedSerializedSize = -1;
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = bVar.e();
        }

        private StringTableTypes(boolean z) {
            this.localNameMemoizedSerializedSize = -1;
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = d.f15412a;
        }

        private StringTableTypes(e eVar, f fVar) throws InvalidProtocolBufferException {
            this.localNameMemoizedSerializedSize = -1;
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
                            if (iK == 10) {
                                if ((i & 1) != 1) {
                                    this.record_ = new ArrayList();
                                    i |= 1;
                                }
                                this.record_.add((Record) eVar.u(Record.PARSER, fVar));
                            } else if (iK == 40) {
                                if ((i & 2) != 2) {
                                    this.localName_ = new ArrayList();
                                    i |= 2;
                                }
                                this.localName_.add(Integer.valueOf(eVar.s()));
                            } else if (iK != 42) {
                                if (!parseUnknownField(eVar, codedOutputStreamJ, fVar, iK)) {
                                }
                            } else {
                                int iJ = eVar.j(eVar.A());
                                if ((i & 2) != 2 && eVar.e() > 0) {
                                    this.localName_ = new ArrayList();
                                    i |= 2;
                                }
                                while (eVar.e() > 0) {
                                    this.localName_.add(Integer.valueOf(eVar.s()));
                                }
                                eVar.i(iJ);
                            }
                        }
                        z = true;
                    } catch (Throwable th) {
                        if ((i & 1) == 1) {
                            this.record_ = Collections.unmodifiableList(this.record_);
                        }
                        if ((i & 2) == 2) {
                            this.localName_ = Collections.unmodifiableList(this.localName_);
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
            if ((i & 1) == 1) {
                this.record_ = Collections.unmodifiableList(this.record_);
            }
            if ((i & 2) == 2) {
                this.localName_ = Collections.unmodifiableList(this.localName_);
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

    static {
        ProtoBuf$Constructor defaultInstance = ProtoBuf$Constructor.getDefaultInstance();
        JvmMethodSignature defaultInstance2 = JvmMethodSignature.getDefaultInstance();
        JvmMethodSignature defaultInstance3 = JvmMethodSignature.getDefaultInstance();
        WireFormat.FieldType fieldType = WireFormat.FieldType.MESSAGE;
        f15352a = GeneratedMessageLite.newSingularGeneratedExtension(defaultInstance, defaultInstance2, defaultInstance3, null, 100, fieldType, JvmMethodSignature.class);
        b = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Function.getDefaultInstance(), JvmMethodSignature.getDefaultInstance(), JvmMethodSignature.getDefaultInstance(), null, 100, fieldType, JvmMethodSignature.class);
        ProtoBuf$Function defaultInstance4 = ProtoBuf$Function.getDefaultInstance();
        WireFormat.FieldType fieldType2 = WireFormat.FieldType.INT32;
        c = GeneratedMessageLite.newSingularGeneratedExtension(defaultInstance4, 0, null, null, 101, fieldType2, Integer.class);
        f15353d = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Property.getDefaultInstance(), JvmPropertySignature.getDefaultInstance(), JvmPropertySignature.getDefaultInstance(), null, 100, fieldType, JvmPropertySignature.class);
        f15354e = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Property.getDefaultInstance(), 0, null, null, 101, fieldType2, Integer.class);
        f15355f = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Type.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 100, fieldType, false, ProtoBuf$Annotation.class);
        f15356g = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Type.getDefaultInstance(), Boolean.FALSE, null, null, 101, WireFormat.FieldType.BOOL, Boolean.class);
        f15357h = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$TypeParameter.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 100, fieldType, false, ProtoBuf$Annotation.class);
        i = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Class.getDefaultInstance(), 0, null, null, 101, fieldType2, Integer.class);
        j = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Class.getDefaultInstance(), ProtoBuf$Property.getDefaultInstance(), null, 102, fieldType, false, ProtoBuf$Property.class);
        k = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Class.getDefaultInstance(), 0, null, null, 103, fieldType2, Integer.class);
        l = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Class.getDefaultInstance(), 0, null, null, 104, fieldType2, Integer.class);
        m = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Package.getDefaultInstance(), 0, null, null, 101, fieldType2, Integer.class);
        n = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Package.getDefaultInstance(), ProtoBuf$Property.getDefaultInstance(), null, 102, fieldType, false, ProtoBuf$Property.class);
    }

    public static void a(f fVar) {
        fVar.a(f15352a);
        fVar.a(b);
        fVar.a(c);
        fVar.a(f15353d);
        fVar.a(f15354e);
        fVar.a(f15355f);
        fVar.a(f15356g);
        fVar.a(f15357h);
        fVar.a(i);
        fVar.a(j);
        fVar.a(k);
        fVar.a(l);
        fVar.a(m);
        fVar.a(n);
    }
}
