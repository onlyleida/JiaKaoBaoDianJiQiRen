package kotlin.reflect.jvm.internal;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import com.tencent.open.SocialOperation;
import java.lang.reflect.Field;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.CallableReference;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.v;
import kotlin.reflect.KFunction;
import kotlin.reflect.KProperty;
import kotlin.reflect.full.IllegalPropertyDelegateAccessException;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.k0;
import kotlin.reflect.jvm.internal.impl.descriptors.l0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0006\b \u0018\u0000 >*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0004=>?@B)\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bB\u0017\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eB3\b\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u0011J\n\u00104\u001a\u0004\u0018\u00010\u0017H\u0004J\u0013\u00105\u001a\u00020)2\b\u00106\u001a\u0004\u0018\u00010\nH\u0096\u0002J\u001e\u00107\u001a\u0004\u0018\u00010\n2\b\u00108\u001a\u0004\u0018\u00010\u00172\b\u00109\u001a\u0004\u0018\u00010\nH\u0004J\b\u0010:\u001a\u00020;H\u0016J\b\u0010<\u001a\u00020\u0007H\u0016R\u001c\u0010\u0012\u001a\u0010\u0012\f\u0012\n \u0014*\u0004\u0018\u00010\r0\r0\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\t\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u001b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\u001dR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u0018\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000%X¦\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'R\u0014\u0010(\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010*R\u0014\u0010+\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b+\u0010*R\u0014\u0010,\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b,\u0010*R\u0014\u0010-\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b-\u0010*R\u0013\u0010.\u001a\u0004\u0018\u00010\u00178F¢\u0006\u0006\u001a\u0004\b/\u00100R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b3\u00102¨\u0006A"}, d2 = {"Lkotlin/reflect/jvm/internal/KPropertyImpl;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/reflect/jvm/internal/KCallableImpl;", "Lkotlin/reflect/KProperty;", TtmlNode.RUBY_CONTAINER, "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", Constant.PROTOCOL_WEBVIEW_NAME, "", SocialOperation.GAME_SIGNATURE, "boundReceiver", "", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;)V", "descriptorInitialValue", "rawBoundReceiver", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;Ljava/lang/Object;)V", "_descriptor", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "kotlin.jvm.PlatformType", "_javaField", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "Ljava/lang/reflect/Field;", "getBoundReceiver", "()Ljava/lang/Object;", "caller", "Lkotlin/reflect/jvm/internal/calls/Caller;", "getCaller", "()Lkotlin/reflect/jvm/internal/calls/Caller;", "getContainer", "()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "defaultCaller", "getDefaultCaller", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;", "getter", "Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;", "getGetter", "()Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;", "isBound", "", "()Z", "isConst", "isLateinit", "isSuspend", "javaField", "getJavaField", "()Ljava/lang/reflect/Field;", "getName", "()Ljava/lang/String;", "getSignature", "computeDelegateField", "equals", "other", "getDelegate", "field", SocialConstants.PARAM_RECEIVER, "hashCode", "", "toString", "Accessor", "Companion", "Getter", "Setter", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
public abstract class KPropertyImpl<V> extends KCallableImpl<V> implements KProperty<V> {
    private static final Object k = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final k.b<Field> f14718e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final k.a<j0> f14719f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final KDeclarationContainerImpl f14720g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f14721h;
    private final String i;
    private final Object j;

    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b&\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0012H\u0016R\u001f\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00068VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u001b\u0010\u000b\u001a\u00020\f8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u001c"}, d2 = {"Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/reflect/jvm/internal/KPropertyImpl$Accessor;", "Lkotlin/reflect/KProperty$Getter;", "()V", "caller", "Lkotlin/reflect/jvm/internal/calls/Caller;", "getCaller", "()Lkotlin/reflect/jvm/internal/calls/Caller;", "caller$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyGetterDescriptor;", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/PropertyGetterDescriptor;", "descriptor$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", Constant.PROTOCOL_WEBVIEW_NAME, "", "getName", "()Ljava/lang/String;", "equals", "", "other", "", "hashCode", "", "toString", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
    public static abstract class Getter<V> extends a<V, V> implements KProperty.a<V> {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        static final /* synthetic */ KProperty[] f14722g = {v.i(new PropertyReference1Impl(v.b(Getter.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertyGetterDescriptor;")), v.i(new PropertyReference1Impl(v.b(Getter.class), "caller", "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"))};

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final k.a f14723e = k.d(new Function0<k0>() { // from class: kotlin.reflect.jvm.internal.KPropertyImpl$Getter$descriptor$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final k0 invoke() {
                k0 getter = this.this$0.x().w().getGetter();
                return getter != null ? getter : kotlin.reflect.jvm.internal.impl.resolve.b.b(this.this$0.x().w(), kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b());
            }
        });

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final k.b f14724f = k.b(new Function0<Caller<?>>() { // from class: kotlin.reflect.jvm.internal.KPropertyImpl$Getter$caller$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Caller<?> invoke() {
                return KPropertyImplKt.c(this.this$0, true);
            }
        });

        @Override // java.lang.Object
        public boolean equals(Object other) {
            return (other instanceof Getter) && kotlin.jvm.internal.r.a(x(), ((Getter) other).x());
        }

        @Override // kotlin.reflect.KCallable
        /* JADX INFO: renamed from: getName */
        public String getF14721h() {
            return "<get-" + x().getF14721h() + '>';
        }

        @Override // java.lang.Object
        public int hashCode() {
            return x().hashCode();
        }

        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        public Caller<?> q() {
            return (Caller) this.f14724f.b(this, f14722g[1]);
        }

        @Override // java.lang.Object
        public String toString() {
            return "getter of " + x();
        }

        @Override // kotlin.reflect.jvm.internal.KPropertyImpl.a
        /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public k0 w() {
            return (k0) this.f14723e.b(this, f14722g[0]);
        }
    }

    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b&\u0018\u0000*\u0004\b\u0001\u0010\u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0004B\u0005¢\u0006\u0002\u0010\u0005J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0096\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u0013H\u0016R\u001f\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00078VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u001b\u0010\f\u001a\u00020\r8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001d"}, d2 = {"Lkotlin/reflect/jvm/internal/KPropertyImpl$Setter;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/reflect/jvm/internal/KPropertyImpl$Accessor;", "", "Lkotlin/reflect/KMutableProperty$Setter;", "()V", "caller", "Lkotlin/reflect/jvm/internal/calls/Caller;", "getCaller", "()Lkotlin/reflect/jvm/internal/calls/Caller;", "caller$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/PropertySetterDescriptor;", "descriptor$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", Constant.PROTOCOL_WEBVIEW_NAME, "", "getName", "()Ljava/lang/String;", "equals", "", "other", "", "hashCode", "", "toString", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
    public static abstract class Setter<V> extends a<V, kotlin.v> implements kotlin.reflect.h<V> {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        static final /* synthetic */ KProperty[] f14725g = {v.i(new PropertyReference1Impl(v.b(Setter.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertySetterDescriptor;")), v.i(new PropertyReference1Impl(v.b(Setter.class), "caller", "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"))};

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final k.a f14726e = k.d(new Function0<l0>() { // from class: kotlin.reflect.jvm.internal.KPropertyImpl$Setter$descriptor$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final l0 invoke() {
                l0 setter = this.this$0.x().w().getSetter();
                if (setter != null) {
                    return setter;
                }
                j0 j0VarW = this.this$0.x().w();
                kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O;
                return kotlin.reflect.jvm.internal.impl.resolve.b.c(j0VarW, aVar.b(), aVar.b());
            }
        });

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final k.b f14727f = k.b(new Function0<Caller<?>>() { // from class: kotlin.reflect.jvm.internal.KPropertyImpl$Setter$caller$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Caller<?> invoke() {
                return KPropertyImplKt.c(this.this$0, false);
            }
        });

        @Override // java.lang.Object
        public boolean equals(Object other) {
            return (other instanceof Setter) && kotlin.jvm.internal.r.a(x(), ((Setter) other).x());
        }

        @Override // kotlin.reflect.KCallable
        /* JADX INFO: renamed from: getName */
        public String getF14721h() {
            return "<set-" + x().getF14721h() + '>';
        }

        @Override // java.lang.Object
        public int hashCode() {
            return x().hashCode();
        }

        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        public Caller<?> q() {
            return (Caller) this.f14727f.b(this, f14725g[1]);
        }

        @Override // java.lang.Object
        public String toString() {
            return "setter of " + x();
        }

        @Override // kotlin.reflect.jvm.internal.KPropertyImpl.a
        /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
        public l0 w() {
            return (l0) this.f14726e.b(this, f14725g[0]);
        }
    }

    /* JADX WARN: Unexpected interfaces in signature: [java.lang.Object<PropertyType>] */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u0001*\u0006\b\u0002\u0010\u0002 \u00012\b\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u00042\b\u0012\u0004\u0012\u0002H\u00020\u0005B\u0005¢\u0006\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\b\u0012\u0002\b\u0003\u0018\u00010\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0012\u0010\u000f\u001a\u00020\u0010X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0015R\u0014\u0010\u0019\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0015R\u0018\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00010\u001cX¦\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lkotlin/reflect/jvm/internal/KPropertyImpl$Accessor;", "PropertyType", "ReturnType", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "Lkotlin/reflect/KProperty$Accessor;", "Lkotlin/reflect/KFunction;", "()V", TtmlNode.RUBY_CONTAINER, "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "getContainer", "()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "defaultCaller", "Lkotlin/reflect/jvm/internal/calls/Caller;", "getDefaultCaller", "()Lkotlin/reflect/jvm/internal/calls/Caller;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyAccessorDescriptor;", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/PropertyAccessorDescriptor;", "isBound", "", "()Z", "isExternal", "isInfix", "isInline", "isOperator", "isSuspend", "property", "Lkotlin/reflect/jvm/internal/KPropertyImpl;", "getProperty", "()Lkotlin/reflect/jvm/internal/KPropertyImpl;", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
    public static abstract class a<PropertyType, ReturnType> extends KCallableImpl<ReturnType> implements KFunction<ReturnType> {
        @Override // kotlin.reflect.KFunction
        public boolean isExternal() {
            return w().isExternal();
        }

        @Override // kotlin.reflect.KFunction
        public boolean isInfix() {
            return w().isInfix();
        }

        @Override // kotlin.reflect.KFunction
        public boolean isInline() {
            return w().isInline();
        }

        @Override // kotlin.reflect.KFunction
        public boolean isOperator() {
            return w().isOperator();
        }

        @Override // kotlin.reflect.KCallable
        public boolean isSuspend() {
            return w().isSuspend();
        }

        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        /* JADX INFO: renamed from: r */
        public KDeclarationContainerImpl getF14720g() {
            return x().getF14720g();
        }

        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        public Caller<?> s() {
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        public boolean v() {
            return x().v();
        }

        public abstract i0 w();

        public abstract KPropertyImpl<PropertyType> x();
    }

    private KPropertyImpl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, j0 j0Var, Object obj) {
        this.f14720g = kDeclarationContainerImpl;
        this.f14721h = str;
        this.i = str2;
        this.j = obj;
        k.b<Field> bVarB = k.b(new Function0<Field>() { // from class: kotlin.reflect.jvm.internal.KPropertyImpl$_javaField$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Field invoke() {
                Class<?> enclosingClass;
                JvmPropertySignature jvmPropertySignatureF = RuntimeTypeMapper.b.f(this.this$0.w());
                if (!(jvmPropertySignatureF instanceof JvmPropertySignature.c)) {
                    if (jvmPropertySignatureF instanceof JvmPropertySignature.a) {
                        return ((JvmPropertySignature.a) jvmPropertySignatureF).getF14762a();
                    }
                    if ((jvmPropertySignatureF instanceof JvmPropertySignature.b) || (jvmPropertySignatureF instanceof JvmPropertySignature.d)) {
                        return null;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                JvmPropertySignature.c cVar = (JvmPropertySignature.c) jvmPropertySignatureF;
                j0 b = cVar.getB();
                kotlin.reflect.jvm.internal.impl.metadata.jvm.a.d.a aVarD = kotlin.reflect.jvm.internal.impl.metadata.jvm.a.g.d(kotlin.reflect.jvm.internal.impl.metadata.jvm.a.g.f15380a, cVar.getC(), cVar.getF14766e(), cVar.getF14767f(), false, 8, null);
                if (aVarD == null) {
                    return null;
                }
                if (kotlin.reflect.jvm.internal.impl.load.java.f.e(b) || kotlin.reflect.jvm.internal.impl.metadata.jvm.a.g.f(cVar.getC())) {
                    enclosingClass = this.this$0.getF14720g().d().getEnclosingClass();
                } else {
                    kotlin.reflect.jvm.internal.impl.descriptors.k kVarB = b.b();
                    enclosingClass = kVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? q.p((kotlin.reflect.jvm.internal.impl.descriptors.d) kVarB) : this.this$0.getF14720g().d();
                }
                if (enclosingClass == null) {
                    return null;
                }
                try {
                    return enclosingClass.getDeclaredField(aVarD.c());
                } catch (NoSuchFieldException unused) {
                    return null;
                }
            }
        });
        kotlin.jvm.internal.r.d(bVarB, "ReflectProperties.lazy {…y -> null\n        }\n    }");
        this.f14718e = bVarB;
        k.a<j0> aVarC = k.c(j0Var, new Function0<j0>() { // from class: kotlin.reflect.jvm.internal.KPropertyImpl$_descriptor$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final j0 invoke() {
                return this.this$0.getF14720g().r(this.this$0.getF14721h(), this.this$0.getI());
            }
        });
        kotlin.jvm.internal.r.d(aVarC, "ReflectProperties.lazySo…or(name, signature)\n    }");
        this.f14719f = aVarC;
    }

    public abstract Getter<V> A();

    public final Field B() {
        return this.f14718e.invoke();
    }

    /* JADX INFO: renamed from: C, reason: from getter */
    public final String getI() {
        return this.i;
    }

    public boolean equals(Object other) {
        KPropertyImpl<?> kPropertyImplD = q.d(other);
        return kPropertyImplD != null && kotlin.jvm.internal.r.a(getF14720g(), kPropertyImplD.getF14720g()) && kotlin.jvm.internal.r.a(getF14721h(), kPropertyImplD.getF14721h()) && kotlin.jvm.internal.r.a(this.i, kPropertyImplD.i) && kotlin.jvm.internal.r.a(this.j, kPropertyImplD.j);
    }

    @Override // kotlin.reflect.KCallable
    /* JADX INFO: renamed from: getName, reason: from getter */
    public String getF14721h() {
        return this.f14721h;
    }

    public int hashCode() {
        return (((getF14720g().hashCode() * 31) + getF14721h().hashCode()) * 31) + this.i.hashCode();
    }

    @Override // kotlin.reflect.KProperty
    public boolean isConst() {
        return w().isConst();
    }

    @Override // kotlin.reflect.KProperty
    public boolean isLateinit() {
        return w().v0();
    }

    @Override // kotlin.reflect.KCallable
    public boolean isSuspend() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public Caller<?> q() {
        return A().q();
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    /* JADX INFO: renamed from: r, reason: from getter */
    public KDeclarationContainerImpl getF14720g() {
        return this.f14720g;
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public Caller<?> s() {
        return A().s();
    }

    public String toString() {
        return ReflectionObjectRenderer.b.g(w());
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public boolean v() {
        return !kotlin.jvm.internal.r.a(this.j, CallableReference.NO_RECEIVER);
    }

    protected final Field w() {
        if (w().A()) {
            return B();
        }
        return null;
    }

    public final Object x() {
        return kotlin.reflect.jvm.internal.calls.f.a(this.j, w());
    }

    protected final Object y(Field field, Object obj) throws IllegalPropertyDelegateAccessException {
        try {
            if (obj == k && w().O() == null) {
                throw new RuntimeException('\'' + this + "' is not an extension property and thus getExtensionDelegate() is not going to work, use getDelegate() instead");
            }
            if (field != null) {
                return field.get(obj);
            }
            return null;
        } catch (IllegalAccessException e2) {
            throw new IllegalPropertyDelegateAccessException(e2);
        }
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public j0 w() {
        j0 j0VarInvoke = this.f14719f.invoke();
        kotlin.jvm.internal.r.d(j0VarInvoke, "_descriptor()");
        return j0VarInvoke;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public KPropertyImpl(KDeclarationContainerImpl container, String name, String signature, Object obj) {
        this(container, name, signature, null, obj);
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(signature, "signature");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public KPropertyImpl(KDeclarationContainerImpl container, j0 descriptor) {
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(descriptor, "descriptor");
        String strB = descriptor.getName().b();
        kotlin.jvm.internal.r.d(strB, "descriptor.name.asString()");
        this(container, strB, RuntimeTypeMapper.b.f(descriptor).getF14764a(), descriptor, CallableReference.NO_RECEIVER);
    }
}
