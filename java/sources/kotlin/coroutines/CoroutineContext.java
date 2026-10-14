package kotlin.coroutines;

import androidx.exifinterface.media.ExifInterface;
import com.iflytek.cloud.SpeechConstant;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\bg\u0018\u00002\u00020\u0001:\u0002\u0011\u0012J5\u0010\u0002\u001a\u0002H\u0003\"\u0004\b\u0000\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u00032\u0018\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u0002H\u00030\u0006H&¢\u0006\u0002\u0010\bJ(\u0010\t\u001a\u0004\u0018\u0001H\n\"\b\b\u0000\u0010\n*\u00020\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\n0\fH¦\u0002¢\u0006\u0002\u0010\rJ\u0014\u0010\u000e\u001a\u00020\u00002\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\fH&J\u0011\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0000H\u0096\u0002¨\u0006\u0013"}, d2 = {"Lkotlin/coroutines/CoroutineContext;", "", "fold", "R", "initial", "operation", "Lkotlin/Function2;", "Lkotlin/coroutines/CoroutineContext$Element;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "get", ExifInterface.LONGITUDE_EAST, "key", "Lkotlin/coroutines/CoroutineContext$Key;", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "minusKey", SpeechConstant.MODE_PLUS, "context", "Element", "Key", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
public interface CoroutineContext {

    @Metadata(k = 3, mv = {1, 5, 1})
    public static final class DefaultImpls {
        public static CoroutineContext a(CoroutineContext coroutineContext, CoroutineContext context) {
            r.e(context, "context");
            return context == EmptyCoroutineContext.INSTANCE ? coroutineContext : (CoroutineContext) context.fold(coroutineContext, new Function2<CoroutineContext, a, CoroutineContext>() { // from class: kotlin.coroutines.CoroutineContext.plus.1
                @Override // kotlin.jvm.functions.Function2
                public final CoroutineContext invoke(CoroutineContext acc, a element) {
                    CombinedContext combinedContext;
                    r.e(acc, "acc");
                    r.e(element, "element");
                    CoroutineContext coroutineContextMinusKey = acc.minusKey(element.getKey());
                    EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
                    if (coroutineContextMinusKey == emptyCoroutineContext) {
                        return element;
                    }
                    ContinuationInterceptor.b bVar = ContinuationInterceptor.L;
                    ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) coroutineContextMinusKey.get(bVar);
                    if (continuationInterceptor == null) {
                        combinedContext = new CombinedContext(coroutineContextMinusKey, element);
                    } else {
                        CoroutineContext coroutineContextMinusKey2 = coroutineContextMinusKey.minusKey(bVar);
                        if (coroutineContextMinusKey2 == emptyCoroutineContext) {
                            return new CombinedContext(element, continuationInterceptor);
                        }
                        combinedContext = new CombinedContext(new CombinedContext(coroutineContextMinusKey2, element), continuationInterceptor);
                    }
                    return combinedContext;
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001J5\u0010\u0006\u001a\u0002H\u0007\"\u0004\b\u0000\u0010\u00072\u0006\u0010\b\u001a\u0002H\u00072\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u0002H\u00070\nH\u0016¢\u0006\u0002\u0010\u000bJ(\u0010\f\u001a\u0004\u0018\u0001H\r\"\b\b\u0000\u0010\r*\u00020\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u0002H\r0\u0003H\u0096\u0002¢\u0006\u0002\u0010\u000eJ\u0014\u0010\u000f\u001a\u00020\u00012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0016R\u0016\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0010"}, d2 = {"Lkotlin/coroutines/CoroutineContext$Element;", "Lkotlin/coroutines/CoroutineContext;", "key", "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "fold", "R", "initial", "operation", "Lkotlin/Function2;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "get", ExifInterface.LONGITUDE_EAST, "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "minusKey", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    public interface a extends CoroutineContext {

        /* JADX INFO: renamed from: kotlin.coroutines.CoroutineContext$a$a, reason: collision with other inner class name */
        @Metadata(k = 3, mv = {1, 5, 1})
        public static final class C0316a {
            public static <R> R a(a aVar, R r, Function2<? super R, ? super a, ? extends R> operation) {
                r.e(operation, "operation");
                return operation.invoke(r, aVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static <E extends a> E b(a aVar, b<E> key) {
                r.e(key, "key");
                if (!r.a(aVar.getKey(), key)) {
                    return null;
                }
                Objects.requireNonNull(aVar, "null cannot be cast to non-null type E");
                return aVar;
            }

            public static CoroutineContext c(a aVar, b<?> key) {
                r.e(key, "key");
                return r.a(aVar.getKey(), key) ? EmptyCoroutineContext.INSTANCE : aVar;
            }

            public static CoroutineContext d(a aVar, CoroutineContext context) {
                r.e(context, "context");
                return DefaultImpls.a(aVar, context);
            }
        }

        @Override // kotlin.coroutines.CoroutineContext
        <E extends a> E get(b<E> bVar);

        b<?> getKey();
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/coroutines/CoroutineContext$Key;", ExifInterface.LONGITUDE_EAST, "Lkotlin/coroutines/CoroutineContext$Element;", "", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    public interface b<E extends a> {
    }

    <R> R fold(R r, Function2<? super R, ? super a, ? extends R> function2);

    <E extends a> E get(b<E> bVar);

    CoroutineContext minusKey(b<?> bVar);

    CoroutineContext plus(CoroutineContext context);
}
