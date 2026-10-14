package cn.mucang.android.jiakaoyi.framework.utils;

import android.app.Application;
import android.content.pm.ApplicationInfo;
import android.net.TrafficStats;
import android.text.format.Formatter;
import androidx.exifinterface.media.ExifInterface;
import cn.mucang.android.core.config.MucangConfig;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.alibaba.fastjson.parser.Feature;
import java.text.SimpleDateFormat;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@kotlin.coroutines.jvm.internal.d(c = "cn.mucang.android.jiakaoyi.framework.utils.TrafficHelper$init$1", f = "TrafficHelper.kt", l = {72}, m = "invokeSuspend")
final class TrafficHelper$init$1 extends SuspendLambda implements kotlin.jvm.b.p<kotlinx.coroutines.i0, kotlin.coroutines.c<? super kotlin.v>, Object> {
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
        public a() {
        }

        @Override // java.util.Comparator
        public final int compare(T r1, T r2) {
            return kotlin.x.a.c((String) ((Map.Entry) r1).getKey(), (String) ((Map.Entry) r2).getKey());
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0001¨\u0006\u0005"}, d2 = {"cn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1$parsed$1", "Lcom/alibaba/fastjson/TypeReference;", "", "", "", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends TypeReference<Map<String, ? extends Long>> {
        b() {
        }
    }

    TrafficHelper$init$1(kotlin.coroutines.c<? super TrafficHelper$init$1> r2) {
        super(2, r2);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<kotlin.v> create(Object r2, kotlin.coroutines.c<?> r3) {
        TrafficHelper$init$1 r0 = new TrafficHelper$init$1(r3);
        r0.L$0 = r2;
        return r0;
    }

    @Override // kotlin.jvm.b.p
    public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.i0 r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return invoke2(r1, r2);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(kotlinx.coroutines.i0 r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return ((TrafficHelper$init$1) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x01bf -> B:47:0x01c2). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r39) {
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r0 = this.label;
        String r3 = "recent_traffic";
        String r4 = "mc-traffic";
        if (r0 == 0) goto L8;
        if (r0 != 1) goto L7;
        long r7 = this.J$2;
        long r9 = this.J$1;
        long r11 = this.J$0;
        int r1 = this.I$0;
        AtomicLong r13 = (AtomicLong) this.L$3;
        Application r14 = (Application) this.L$2;
        String r15 = (String) this.L$1;
        kotlinx.coroutines.i0 r6 = (kotlinx.coroutines.i0) this.L$0;
        kotlin.k.b(r39);
        TrafficHelper$init$1 r5 = this;
        String r17 = "recent_traffic";
        String r18 = "mc-traffic";
    L47:
        long r8 = TrafficStats.getUidRxBytes(r1);
        Object r310 = r2;
        long r10 = TrafficStats.getUidTxBytes(r1);
        TrafficHelper$init$1 r19 = r5;
        kotlinx.coroutines.i0 r20 = r6;
        long r12 = r8 - r11;
        long r21 = r11;
        long r16 = r10 - r9;
        int r23 = r1;
        if (r13 != null) goto L64;
        Set r110 = TrafficHelper.b().entrySet();
        kotlin.jvm.internal.r.d(r110, "otherTraffic.entries");
        Iterator r111 = r110.iterator();
    L51:
        if (r111.hasNext() == false) goto L56;
        Object r24 = r111.next();
        long r26 = r9;
        Iterator r25 = r111;
        if (kotlin.text.l.E(((TrafficHelper.a) ((Map.Entry) r24).getValue()).a(), "ai", true) == true) goto L57;
        r111 = r25;
        r9 = r26;
    L57:
        Map.Entry r27 = (Map.Entry) r24;
        if (r27 != null) goto L60;
    L59:
        AtomicLong r22 = null;
    L65:
        long r28 = r8 + r10;
        if (r22 != null) goto L68;
        long r30 = 0;
    L69:
        long r29 = r28 - r30;
        HashMap r112 = TrafficHelper.c();
        kotlin.jvm.internal.r.d(r15, "today");
        HashMap r113 = TrafficHelper.c();
        Object r31 = r113.get(r15);
        if (r31 != null) goto L73;
        Long r32 = kotlin.coroutines.jvm.internal.a.e(0);
        r113.put(r15, r32);
        r31 = r32;
    L73:
        r112.put(r15, kotlin.coroutines.jvm.internal.a.e((((Number) r31).longValue() + r29) - r7));
        if ((System.currentTimeMillis() - TrafficHelper.a()) < 900000) goto L86;
        TrafficHelper r33 = TrafficHelper.f3594a;
        TrafficHelper.e(System.currentTimeMillis());
        StringBuilder r34 = new StringBuilder();
        r34.append("[TrafficHelper] 统计运行时间：" + (((System.currentTimeMillis() - TrafficHelper.d()) / ((long) 1000)) / ((long) 60)) + "分钟");
        r34.append("\n本次开机  接收：" + Formatter.formatFileSize(r14, r8) + "   发送：" + Formatter.formatFileSize(r14, r10));
        r34.append("\n本次应用  接收：" + Formatter.formatFileSize(r14, r12) + "   发送：" + Formatter.formatFileSize(r14, r16));
        Set r35 = TrafficHelper.b().entrySet();
        kotlin.jvm.internal.r.d(r35, "otherTraffic.entries");
        Iterator r36 = r35.iterator();
    L77:
        if (r36.hasNext() == false) goto L81;
        Map.Entry r37 = (Map.Entry) r36.next();
        if (((TrafficHelper.a) r37.getValue()).b().get() <= 0) goto L77;
        r34.append("\n本次【" + ((TrafficHelper.a) r37.getValue()).a() + "】总：" + Formatter.formatFileSize(r14, ((TrafficHelper.a) r37.getValue()).b().get()));
        goto L77
    L81:
        Object r38 = TrafficHelper.c().get(r15);
        if (r38 != null) goto L85;
        r38 = kotlin.coroutines.jvm.internal.a.e(0);
    L85:
        r34.append(kotlin.jvm.internal.r.m("\n当日(除去ai视频)总：", Formatter.formatFileSize(r14, ((Number) r38).longValue())));
        cn.mucang.android.jiakaoyi.framework.log.f.o(r34.toString());
    L86:
        String r40 = r17;
        cn.mucang.android.core.utils.j0.b(r18).edit().putString(r40, JSON.toJSONString(TrafficHelper.c())).apply();
        r3 = r40;
        r4 = r18;
        r5 = r19;
        r6 = r20;
        r11 = r21;
        r1 = r23;
        r7 = r29;
        r9 = r26;
        r13 = r22;
        r2 = r310;
    L43:
        if (kotlinx.coroutines.j0.g(r6) == false) goto L88;
        r17 = r3;
        r18 = r4;
        r5.L$0 = r6;
        r5.L$1 = r15;
        r5.L$2 = r14;
        r5.L$3 = r13;
        r5.I$0 = r1;
        r5.J$0 = r11;
        r5.J$1 = r9;
        r5.J$2 = r7;
        r5.label = 1;
        if (kotlinx.coroutines.s0.a(30000, r5) != r2) goto L47;
        return r2;
    L88:
        return kotlin.v.f15822a;
    L68:
        r30 = r22.get();
        goto L69
    L60:
        TrafficHelper.a r41 = (TrafficHelper.a) r27.getValue();
        if (r41 == null) goto L59;
        r22 = r41.b();
        goto L65
    L56:
        r26 = r9;
        r24 = null;
        goto L57
    L64:
        r26 = r9;
        r22 = r13;
        goto L65
    L7:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L8:
        kotlin.k.b(r39);
        r6 = (kotlinx.coroutines.i0) this.L$0;
        String r42 = "";
        String r43 = cn.mucang.android.core.utils.j0.b("mc-traffic").getString("recent_traffic", "");
        if (r43 == null) goto L12;
        r42 = r43;
    L12:
        int r44 = 0;
        if (r42.length() <= 0) goto L15;
        boolean r45 = true;
    L16:
        if (r45 == false) goto L36;
        TrafficHelper.c().putAll((Map) JSON.parseObject(r42, new b(), new Feature[0]));
        if (TrafficHelper.c().size() <= 30) goto L20;
        Set r46 = TrafficHelper.c().entrySet();
        kotlin.jvm.internal.r.d(r46, "recentMap.entries");
        TrafficHelper.c().entrySet().removeAll(kotlin.collections.s.G0(kotlin.collections.s.M0(r46), new a()).subList(0, TrafficHelper.c().size() - 30));
    L20:
        Set r47 = TrafficHelper.c().entrySet();
        kotlin.jvm.internal.r.d(r47, "recentMap.entries");
        Iterator r48 = r47.iterator();
        if (r48.hasNext() == true) goto L23;
        Object r49 = null;
    L32:
        Map.Entry r50 = (Map.Entry) r49;
        if (r50 == null) goto L36;
        StringBuilder r51 = new StringBuilder();
        r51.append("[TrafficHelper] 最近30天峰值：");
        Application r114 = MucangConfig.getContext();
        Object r115 = r50.getValue();
        kotlin.jvm.internal.r.d(r115, "it.value");
        r51.append(Formatter.formatFileSize(r114, ((Number) r115).longValue()));
        r51.append(65288);
        r51.append((String) r50.getKey());
        r51.append(65289);
        cn.mucang.android.jiakaoyi.framework.log.f.o(r51.toString());
        goto L36
    L23:
        r49 = r48.next();
        if (r48.hasNext() == false) goto L32;
        Object r116 = ((Map.Entry) r49).getValue();
        kotlin.jvm.internal.r.d(r116, "it.value");
        long r117 = ((Number) r116).longValue();
    L27:
        Object r118 = r48.next();
        Object r119 = ((Map.Entry) r118).getValue();
        kotlin.jvm.internal.r.d(r119, "it.value");
        long r120 = ((Number) r119).longValue();
        if (r117 >= r120) goto L31;
        r49 = r118;
        r117 = r120;
    L31:
        if (r48.hasNext() == true) goto L27;
    L36:
        String r52 = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
        TrafficHelper r53 = TrafficHelper.f3594a;
        TrafficHelper.f(System.currentTimeMillis());
        Application r54 = MucangConfig.getContext();
        ApplicationInfo r55 = r54.getPackageManager().getApplicationInfo(r54.getPackageName(), 0);     // Catch: Exception -> L39
        kotlin.jvm.internal.r.d(r55, "mPm.getApplicationInfo(c.packageName, 0)");     // Catch: Exception -> L39
        r44 = r55.uid;     // Catch: Exception -> L39
    L41:
        long r121 = TrafficStats.getUidRxBytes(r44);
        long r122 = TrafficStats.getUidTxBytes(r44);
        TrafficHelper r56 = TrafficHelper.f3594a;
        TrafficHelper.e(System.currentTimeMillis());
        r5 = this;
        r1 = r44;
        r15 = r52;
        r14 = r54;
        r7 = r121 + r122;
        r13 = null;
        r11 = r121;
        r9 = r122;
    L39:
        e = move-exception;
        e.printStackTrace();
        goto L41
    L15:
        r45 = false;
        goto L16
    }
}
