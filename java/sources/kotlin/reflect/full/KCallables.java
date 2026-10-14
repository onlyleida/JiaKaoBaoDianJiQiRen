package kotlin.reflect.full;

import com.mobile.auth.gatewayauth.Constant;
import java.util.Arrays;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.jvm.internal.x;
import kotlin.k;
import kotlin.reflect.KCallable;
import kotlin.reflect.KFunction;
import kotlin.reflect.KParameter;
import kotlin.reflect.jvm.internal.KCallableImpl;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;
import kotlin.reflect.jvm.internal.q;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\u001a9\u0010\u000f\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u0010*\b\u0012\u0004\u0012\u0002H\u00100\u00022\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00130\u0012\"\u0004\u0018\u00010\u0013H\u0087@ø\u0001\u0000¢\u0006\u0002\u0010\u0014\u001a7\u0010\u0015\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u0010*\b\u0012\u0004\u0012\u0002H\u00100\u00022\u0014\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0016H\u0087@ø\u0001\u0000¢\u0006\u0002\u0010\u0017\u001a\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u0001*\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0019\u001a\u00020\u001aH\u0007\"$\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u0006\u0012\u0002\b\u00030\u00028FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"$\u0010\u0007\u001a\u0004\u0018\u00010\u0001*\u0006\u0012\u0002\b\u00030\u00028FX\u0087\u0004¢\u0006\f\u0012\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006\"(\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\u000b*\u0006\u0012\u0002\b\u00030\u00028FX\u0087\u0004¢\u0006\f\u0012\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"extensionReceiverParameter", "Lkotlin/reflect/KParameter;", "Lkotlin/reflect/KCallable;", "getExtensionReceiverParameter$annotations", "(Lkotlin/reflect/KCallable;)V", "getExtensionReceiverParameter", "(Lkotlin/reflect/KCallable;)Lkotlin/reflect/KParameter;", "instanceParameter", "getInstanceParameter$annotations", "getInstanceParameter", "valueParameters", "", "getValueParameters$annotations", "getValueParameters", "(Lkotlin/reflect/KCallable;)Ljava/util/List;", "callSuspend", "R", "args", "", "", "(Lkotlin/reflect/KCallable;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "callSuspendBy", "", "(Lkotlin/reflect/KCallable;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "findParameterByName", Constant.PROTOCOL_WEBVIEW_NAME, "", "kotlin-reflection"}, k = 2, mv = {1, 5, 1})
public final class KCallables {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <R> Object a(KCallable<? extends R> kCallable, Object[] objArr, Continuation<? super R> continuation) throws Throwable {
        KCallables$callSuspend$1 kCallables$callSuspend$1;
        if (continuation instanceof KCallables$callSuspend$1) {
            kCallables$callSuspend$1 = (KCallables$callSuspend$1) continuation;
            int i = kCallables$callSuspend$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                kCallables$callSuspend$1.label = i - Integer.MIN_VALUE;
            } else {
                kCallables$callSuspend$1 = new KCallables$callSuspend$1(continuation);
            }
        } else {
            kCallables$callSuspend$1 = new KCallables$callSuspend$1(continuation);
        }
        Object objCall = kCallables$callSuspend$1.result;
        Object objD = b.d();
        int i2 = kCallables$callSuspend$1.label;
        if (i2 == 0) {
            k.b(objCall);
            if (!kCallable.isSuspend()) {
                return kCallable.call(Arrays.copyOf(objArr, objArr.length));
            }
            if (!(kCallable instanceof KFunction)) {
                throw new IllegalArgumentException("Cannot callSuspend on a property " + kCallable + ": suspend properties are not supported yet");
            }
            kCallables$callSuspend$1.L$0 = kCallable;
            kCallables$callSuspend$1.L$1 = objArr;
            kCallables$callSuspend$1.label = 1;
            x xVar = new x(2);
            xVar.b(objArr);
            xVar.a(kCallables$callSuspend$1);
            objCall = kCallable.call(xVar.d(new Object[xVar.c()]));
            if (objCall == b.d()) {
                f.c(kCallables$callSuspend$1);
            }
            if (objCall == objD) {
                return objD;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kCallable = (KCallable) kCallables$callSuspend$1.L$0;
            k.b(objCall);
        }
        return (!r.a(kCallable.getReturnType().c(), v.b(kotlin.v.class)) || kCallable.getReturnType().j()) ? objCall : kotlin.v.f15822a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, kotlin.reflect.jvm.internal.KCallableImpl] */
    public static final <R> Object b(KCallable<? extends R> kCallable, Map<KParameter, ? extends Object> map, Continuation<? super R> continuation) throws Throwable {
        KCallables$callSuspendBy$1 kCallables$callSuspendBy$1;
        if (continuation instanceof KCallables$callSuspendBy$1) {
            kCallables$callSuspendBy$1 = (KCallables$callSuspendBy$1) continuation;
            int i = kCallables$callSuspendBy$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                kCallables$callSuspendBy$1.label = i - Integer.MIN_VALUE;
            } else {
                kCallables$callSuspendBy$1 = new KCallables$callSuspendBy$1(continuation);
            }
        } else {
            kCallables$callSuspendBy$1 = new KCallables$callSuspendBy$1(continuation);
        }
        Object objM = kCallables$callSuspendBy$1.result;
        Object objD = b.d();
        int i2 = kCallables$callSuspendBy$1.label;
        if (i2 == 0) {
            k.b(objM);
            if (!kCallable.isSuspend()) {
                return kCallable.callBy(map);
            }
            if (!(kCallable instanceof KFunction)) {
                throw new IllegalArgumentException("Cannot callSuspendBy on a property " + kCallable + ": suspend properties are not supported yet");
            }
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ?? B = q.b(kCallable);
            if (B == 0) {
                throw new KotlinReflectionInternalError("This callable does not support a default call: " + kCallable);
            }
            ref$ObjectRef.element = B;
            kCallables$callSuspendBy$1.L$0 = kCallable;
            kCallables$callSuspendBy$1.L$1 = map;
            kCallables$callSuspendBy$1.L$2 = ref$ObjectRef;
            kCallables$callSuspendBy$1.label = 1;
            objM = ((KCallableImpl) B).m(map, kCallables$callSuspendBy$1);
            if (objM == b.d()) {
                f.c(kCallables$callSuspendBy$1);
            }
            if (objM == objD) {
                return objD;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kCallable = (KCallable) kCallables$callSuspendBy$1.L$0;
            k.b(objM);
        }
        return (!r.a(kCallable.getReturnType().c(), v.b(kotlin.v.class)) || kCallable.getReturnType().j()) ? objM : kotlin.v.f15822a;
    }
}
