package kotlin.reflect.jvm.internal;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import com.tencent.open.SocialOperation;
import java.lang.reflect.Field;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.KProperty1;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0006\b\u0001\u0010\u0002 \u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00020\u0004:\u0001\u001fB)\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fB\u0017\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJ\u0015\u0010\u001a\u001a\u00028\u00012\u0006\u0010\u001b\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u001cJ\u0017\u0010\u001d\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001b\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u001cJ\u0016\u0010\u001e\u001a\u00028\u00012\u0006\u0010\u001b\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\u001cR4\u0010\u0010\u001a(\u0012$\u0012\"\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001 \u0013*\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00120\u00120\u0011X\u0088\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019¨\u0006 "}, d2 = {"Lkotlin/reflect/jvm/internal/KProperty1Impl;", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/reflect/KProperty1;", "Lkotlin/reflect/jvm/internal/KPropertyImpl;", TtmlNode.RUBY_CONTAINER, "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", Constant.PROTOCOL_WEBVIEW_NAME, "", SocialOperation.GAME_SIGNATURE, "boundReceiver", "", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;)V", "_getter", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;", "kotlin.jvm.PlatformType", "delegateField", "Lkotlin/Lazy;", "Ljava/lang/reflect/Field;", "getter", "getGetter", "()Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;", "get", SocialConstants.PARAM_RECEIVER, "(Ljava/lang/Object;)Ljava/lang/Object;", "getDelegate", "invoke", "Getter", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
public class KProperty1Impl<T, V> extends KPropertyImpl<V> implements KProperty1<T, V> {
    private final k.b<a<T, V>> l;
    private final Lazy<Field> m;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0006\b\u0003\u0010\u0002 \u00012\b\u0012\u0004\u0012\u0002H\u00020\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004B\u0019\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006¢\u0006\u0002\u0010\u0007J\u0016\u0010\n\u001a\u00028\u00032\u0006\u0010\u000b\u001a\u00028\u0002H\u0096\u0002¢\u0006\u0002\u0010\fR \u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;", "Lkotlin/reflect/KProperty1$Getter;", "property", "Lkotlin/reflect/jvm/internal/KProperty1Impl;", "(Lkotlin/reflect/jvm/internal/KProperty1Impl;)V", "getProperty", "()Lkotlin/reflect/jvm/internal/KProperty1Impl;", "invoke", SocialConstants.PARAM_RECEIVER, "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
    public static final class a<T, V> extends KPropertyImpl.Getter<V> implements KProperty1.a<T, V> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final KProperty1Impl<T, V> f14716h;

        /* JADX WARN: Multi-variable type inference failed */
        public a(KProperty1Impl<T, ? extends V> property) {
            kotlin.jvm.internal.r.e(property, "property");
            this.f14716h = property;
        }

        @Override // kotlin.jvm.functions.Function1
        public V invoke(T receiver) {
            return x().D(receiver);
        }

        @Override // kotlin.reflect.jvm.internal.KPropertyImpl.a
        /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
        public KProperty1Impl<T, V> x() {
            return this.f14716h;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KProperty1Impl(KDeclarationContainerImpl container, String name, String signature, Object obj) {
        super(container, name, signature, obj);
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(signature, "signature");
        k.b<a<T, V>> bVarB = k.b(new Function0<a<T, ? extends V>>() { // from class: kotlin.reflect.jvm.internal.KProperty1Impl$_getter$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final KProperty1Impl.a<T, V> invoke() {
                return new KProperty1Impl.a<>(this.this$0);
            }
        });
        kotlin.jvm.internal.r.d(bVarB, "ReflectProperties.lazy { Getter(this) }");
        this.l = bVarB;
        this.m = kotlin.i.a(LazyThreadSafetyMode.PUBLICATION, new Function0<Field>() { // from class: kotlin.reflect.jvm.internal.KProperty1Impl$delegateField$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Field invoke() {
                return this.this$0.w();
            }
        });
    }

    public V D(T t) {
        return A().call(t);
    }

    @Override // kotlin.reflect.KProperty1
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public a<T, V> getGetter() {
        a<T, V> aVarInvoke = this.l.invoke();
        kotlin.jvm.internal.r.d(aVarInvoke, "_getter()");
        return aVarInvoke;
    }

    @Override // kotlin.reflect.KProperty1
    public Object getDelegate(T receiver) {
        return y(this.m.getValue(), receiver);
    }

    @Override // kotlin.jvm.functions.Function1
    public V invoke(T receiver) {
        return D(receiver);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KProperty1Impl(KDeclarationContainerImpl container, j0 descriptor) {
        super(container, descriptor);
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(descriptor, "descriptor");
        k.b<a<T, V>> bVarB = k.b(new Function0<a<T, ? extends V>>() { // from class: kotlin.reflect.jvm.internal.KProperty1Impl$_getter$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final KProperty1Impl.a<T, V> invoke() {
                return new KProperty1Impl.a<>(this.this$0);
            }
        });
        kotlin.jvm.internal.r.d(bVarB, "ReflectProperties.lazy { Getter(this) }");
        this.l = bVarB;
        this.m = kotlin.i.a(LazyThreadSafetyMode.PUBLICATION, new Function0<Field>() { // from class: kotlin.reflect.jvm.internal.KProperty1Impl$delegateField$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Field invoke() {
                return this.this$0.w();
            }
        });
    }
}
