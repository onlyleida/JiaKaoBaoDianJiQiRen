package kotlin.reflect.jvm.internal;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialOperation;
import java.lang.reflect.Field;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.CallableReference;
import kotlin.reflect.KProperty2;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0006\b\u0002\u0010\u0003 \u00012\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00042\b\u0012\u0004\u0012\u0002H\u00030\u0005:\u0001 B\u001f\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0002\u0010\u000bB\u0017\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u001d\u0010\u0019\u001a\u00028\u00022\u0006\u0010\u001a\u001a\u00028\u00002\u0006\u0010\u001b\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u001cJ\u001f\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001a\u001a\u00028\u00002\u0006\u0010\u001b\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u001cJ\u001e\u0010\u001f\u001a\u00028\u00022\u0006\u0010\u001a\u001a\u00028\u00002\u0006\u0010\u001b\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0002\u0010\u001cR@\u0010\u000f\u001a4\u00120\u0012.\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002 \u0012*\u0016\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0018\u00010\u00110\u00110\u0010X\u0088\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006!"}, d2 = {"Lkotlin/reflect/jvm/internal/KProperty2Impl;", "D", ExifInterface.LONGITUDE_EAST, ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/reflect/KProperty2;", "Lkotlin/reflect/jvm/internal/KPropertyImpl;", TtmlNode.RUBY_CONTAINER, "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", Constant.PROTOCOL_WEBVIEW_NAME, "", SocialOperation.GAME_SIGNATURE, "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;)V", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;)V", "_getter", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "Lkotlin/reflect/jvm/internal/KProperty2Impl$Getter;", "kotlin.jvm.PlatformType", "delegateField", "Lkotlin/Lazy;", "Ljava/lang/reflect/Field;", "getter", "getGetter", "()Lkotlin/reflect/jvm/internal/KProperty2Impl$Getter;", "get", "receiver1", "receiver2", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "getDelegate", "", "invoke", "Getter", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
public class KProperty2Impl<D, E, V> extends KPropertyImpl<V> implements KProperty2<D, E, V> {
    private final k.b<a<D, E, V>> l;
    private final Lazy<Field> m;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000*\u0004\b\u0003\u0010\u0001*\u0004\b\u0004\u0010\u0002*\u0006\b\u0005\u0010\u0003 \u00012\b\u0012\u0004\u0012\u0002H\u00030\u00042\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0005B\u001f\u0012\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00050\u0007¢\u0006\u0002\u0010\bJ\u001e\u0010\u000b\u001a\u00028\u00052\u0006\u0010\f\u001a\u00028\u00032\u0006\u0010\r\u001a\u00028\u0004H\u0096\u0002¢\u0006\u0002\u0010\u000eR&\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00050\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lkotlin/reflect/jvm/internal/KProperty2Impl$Getter;", "D", ExifInterface.LONGITUDE_EAST, ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;", "Lkotlin/reflect/KProperty2$Getter;", "property", "Lkotlin/reflect/jvm/internal/KProperty2Impl;", "(Lkotlin/reflect/jvm/internal/KProperty2Impl;)V", "getProperty", "()Lkotlin/reflect/jvm/internal/KProperty2Impl;", "invoke", "receiver1", "receiver2", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
    public static final class a<D, E, V> extends KPropertyImpl.Getter<V> implements KProperty2.a<D, E, V> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final KProperty2Impl<D, E, V> f14717h;

        /* JADX WARN: Multi-variable type inference failed */
        public a(KProperty2Impl<D, E, ? extends V> property) {
            kotlin.jvm.internal.r.e(property, "property");
            this.f14717h = property;
        }

        @Override // kotlin.jvm.functions.Function2
        public V invoke(D receiver1, E receiver2) {
            return x().D(receiver1, receiver2);
        }

        @Override // kotlin.reflect.jvm.internal.KPropertyImpl.a
        /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
        public KProperty2Impl<D, E, V> x() {
            return this.f14717h;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KProperty2Impl(KDeclarationContainerImpl container, String name, String signature) {
        super(container, name, signature, CallableReference.NO_RECEIVER);
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(signature, "signature");
        k.b<a<D, E, V>> bVarB = k.b(new Function0<a<D, E, ? extends V>>() { // from class: kotlin.reflect.jvm.internal.KProperty2Impl$_getter$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final KProperty2Impl.a<D, E, V> invoke() {
                return new KProperty2Impl.a<>(this.this$0);
            }
        });
        kotlin.jvm.internal.r.d(bVarB, "ReflectProperties.lazy { Getter(this) }");
        this.l = bVarB;
        this.m = kotlin.i.a(LazyThreadSafetyMode.PUBLICATION, new Function0<Field>() { // from class: kotlin.reflect.jvm.internal.KProperty2Impl$delegateField$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Field invoke() {
                return this.this$0.w();
            }
        });
    }

    public V D(D d2, E e2) {
        return getGetter().call(d2, e2);
    }

    @Override // kotlin.reflect.KProperty2
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public a<D, E, V> getGetter() {
        a<D, E, V> aVarInvoke = this.l.invoke();
        kotlin.jvm.internal.r.d(aVarInvoke, "_getter()");
        return aVarInvoke;
    }

    @Override // kotlin.reflect.KProperty2
    public Object getDelegate(D receiver1, E receiver2) {
        return y(this.m.getValue(), receiver1);
    }

    @Override // kotlin.jvm.functions.Function2
    public V invoke(D receiver1, E receiver2) {
        return D(receiver1, receiver2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KProperty2Impl(KDeclarationContainerImpl container, j0 descriptor) {
        super(container, descriptor);
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(descriptor, "descriptor");
        k.b<a<D, E, V>> bVarB = k.b(new Function0<a<D, E, ? extends V>>() { // from class: kotlin.reflect.jvm.internal.KProperty2Impl$_getter$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final KProperty2Impl.a<D, E, V> invoke() {
                return new KProperty2Impl.a<>(this.this$0);
            }
        });
        kotlin.jvm.internal.r.d(bVarB, "ReflectProperties.lazy { Getter(this) }");
        this.l = bVarB;
        this.m = kotlin.i.a(LazyThreadSafetyMode.PUBLICATION, new Function0<Field>() { // from class: kotlin.reflect.jvm.internal.KProperty2Impl$delegateField$1
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
