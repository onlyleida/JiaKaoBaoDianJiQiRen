package cn.mucang.android.jiakaoyi.framework.utils;

import androidx.exifinterface.media.ExifInterface;
import com.alibaba.fastjson.TypeReference;
import java.util.Comparator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.framework.utils.TrafficHelper$init$1", f = "TrafficHelper.kt", l = {72}, m = "invokeSuspend")
final class TrafficHelper$init$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    int I$0;
    long J$0;
    long J$1;
    long J$2;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 5, 1})
    public static final class a<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return kotlin.x.b.c((String) ((Map.Entry) t).getKey(), (String) ((Map.Entry) t2).getKey());
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0001¨\u0006\u0005"}, d2 = {"cn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1$parsed$1", "Lcom/alibaba/fastjson/TypeReference;", "", "", "", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends TypeReference<Map<String, ? extends Long>> {
        b() {
        }
    }

    TrafficHelper$init$1(Continuation<? super TrafficHelper$init$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        TrafficHelper$init$1 trafficHelper$init$1 = new TrafficHelper$init$1(continuation);
        trafficHelper$init$1.L$0 = obj;
        return trafficHelper$init$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((TrafficHelper$init$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:52:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:55:0x0211 A[LOOP:0: B:50:0x01eb->B:55:0x0211, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:92:0x021b A[EDGE_INSN: B:92:0x021b->B:57:0x021b BREAK  A[LOOP:0: B:50:0x01eb->B:55:0x0211], SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x01bf -> B:47:0x01c2). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r39) {
        /*
            Method dump skipped, instruction units count: 969
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.framework.utils.TrafficHelper$init$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
