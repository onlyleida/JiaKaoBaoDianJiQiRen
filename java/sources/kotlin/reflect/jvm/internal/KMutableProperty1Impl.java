package kotlin.reflect.jvm.internal;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import com.tencent.open.SocialOperation;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.full.IllegalCallableAccessException;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004:\u0001\u001cB)\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fB\u0017\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJ\u001d\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u001bR4\u0010\u0010\u001a(\u0012$\u0012\"\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001 \u0013*\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00120\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001d"}, d2 = {"Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/reflect/jvm/internal/KProperty1Impl;", "Lkotlin/reflect/KMutableProperty1;", TtmlNode.RUBY_CONTAINER, "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", Constant.PROTOCOL_WEBVIEW_NAME, "", SocialOperation.GAME_SIGNATURE, "boundReceiver", "", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;)V", "_setter", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;", "kotlin.jvm.PlatformType", "setter", "getSetter", "()Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;", "set", "", SocialConstants.PARAM_RECEIVER, "value", "(Ljava/lang/Object;Ljava/lang/Object;)V", "Setter", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
public final class KMutableProperty1Impl<T, V> extends KProperty1Impl<T, V> implements KMutableProperty1<T, V> {
    private final k.b<a<T, V>> n;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\b\u0012\u0004\u0012\u0002H\u00020\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004B\u0019\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006¢\u0006\u0002\u0010\u0007J\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00028\u00022\u0006\u0010\r\u001a\u00028\u0003H\u0096\u0002¢\u0006\u0002\u0010\u000eR \u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u000f"}, d2 = {"Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/reflect/jvm/internal/KPropertyImpl$Setter;", "Lkotlin/reflect/KMutableProperty1$Setter;", "property", "Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;", "(Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;)V", "getProperty", "()Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;", "invoke", "", SocialConstants.PARAM_RECEIVER, "value", "(Ljava/lang/Object;Ljava/lang/Object;)V", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
    public static final class a<T, V> extends KPropertyImpl.Setter<V> implements KMutableProperty1.a<T, V> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final KMutableProperty1Impl<T, V> f14703h;

        public a(KMutableProperty1Impl<T, V> property) {
            kotlin.jvm.internal.r.e(property, "property");
            this.f14703h = property;
        }

        public void A(T t, V v) throws IllegalCallableAccessException {
            x().G(t, v);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ v invoke(Object obj, Object obj2) throws IllegalCallableAccessException {
            A(obj, obj2);
            return v.f15822a;
        }

        @Override // kotlin.reflect.jvm.internal.KPropertyImpl.a
        /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
        public KMutableProperty1Impl<T, V> x() {
            return this.f14703h;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KMutableProperty1Impl(KDeclarationContainerImpl container, String name, String signature, Object obj) {
        super(container, name, signature, obj);
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(signature, "signature");
        k.b<a<T, V>> bVarB = k.b(new Function0<a<T, V>>() { // from class: kotlin.reflect.jvm.internal.KMutableProperty1Impl$_setter$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final KMutableProperty1Impl.a<T, V> invoke() {
                return new KMutableProperty1Impl.a<>(this.this$0);
            }
        });
        kotlin.jvm.internal.r.d(bVarB, "ReflectProperties.lazy { Setter(this) }");
        this.n = bVarB;
    }

    @Override // kotlin.reflect.KMutableProperty1
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public a<T, V> getSetter() {
        a<T, V> aVarInvoke = this.n.invoke();
        kotlin.jvm.internal.r.d(aVarInvoke, "_setter()");
        return aVarInvoke;
    }

    public void G(T t, V v) throws IllegalCallableAccessException {
        getSetter().call(t, v);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KMutableProperty1Impl(KDeclarationContainerImpl container, j0 descriptor) {
        super(container, descriptor);
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(descriptor, "descriptor");
        k.b<a<T, V>> bVarB = k.b(new Function0<a<T, V>>() { // from class: kotlin.reflect.jvm.internal.KMutableProperty1Impl$_setter$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final KMutableProperty1Impl.a<T, V> invoke() {
                return new KMutableProperty1Impl.a<>(this.this$0);
            }
        });
        kotlin.jvm.internal.r.d(bVarB, "ReflectProperties.lazy { Setter(this) }");
        this.n = bVarB;
    }
}
