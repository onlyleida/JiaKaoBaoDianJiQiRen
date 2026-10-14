package cn.mucang.jiakaoyi.uilib.ui.widget;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.utils.JNet;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.jiakaoyi.uilib.socket.model.GpsStationInfoModel;
import com.mucang.android.jiakaoyi.uilib.databinding.MainTopBinding;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.ui.widget.CommonMainTitleBar$onAttachedToWindow$1", f = "CommonMainTitleBar.kt", l = {95, 109}, m = "invokeSuspend")
final class CommonMainTitleBar$onAttachedToWindow$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    int label;
    final /* synthetic */ CommonMainTitleBar this$0;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.widget.CommonMainTitleBar$onAttachedToWindow$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.ui.widget.CommonMainTitleBar$onAttachedToWindow$1$1", f = "CommonMainTitleBar.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        int label;
        final /* synthetic */ CommonMainTitleBar this$0;

        AnonymousClass1(CommonMainTitleBar commonMainTitleBar, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k.b(obj);
            if (this.this$0.c != null) {
                Gps gpsG = cn.mucang.android.jiakaoyi.signal.c.d.g();
                Gps gps = new Gps(gpsG.latitude, gpsG.longitude);
                GpsStationInfoModel gpsStationInfoModel = this.this$0.c;
                r.c(gpsStationInfoModel);
                double d2 = gpsStationInfoModel.lat;
                GpsStationInfoModel gpsStationInfoModel2 = this.this$0.c;
                r.c(gpsStationInfoModel2);
                double dDistanceTo = gps.distanceTo(new Gps(d2, gpsStationInfoModel2.lon));
                MainTopBinding mainTopBinding = this.this$0.f10308a;
                if (mainTopBinding == null) {
                    r.u("viewBinding");
                    throw null;
                }
                mainTopBinding.stationDistance.setText(dDistanceTo < 5000.0d ? "小于5公里" : r.m(n0.a(1, dDistanceTo * 0.001d), "公里"));
            }
            MainTopBinding mainTopBinding2 = this.this$0.f10308a;
            if (mainTopBinding2 == null) {
                r.u("viewBinding");
                throw null;
            }
            mainTopBinding2.netDelay.setText(JNet.b() + "ms");
            return v.f15822a;
        }
    }

    CommonMainTitleBar$onAttachedToWindow$1(CommonMainTitleBar commonMainTitleBar, Continuation<? super CommonMainTitleBar$onAttachedToWindow$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new CommonMainTitleBar$onAttachedToWindow$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((CommonMainTitleBar$onAttachedToWindow$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0028  */
    /* JADX WARN: Code duplicated, block: B:15:0x003c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:18:0x0047 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0045 -> B:11:0x0020). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:13:0x0028
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.d()
            int r1 = r7.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1c
            if (r1 == r3) goto L17
            if (r1 != r2) goto Lf
            goto L1c
        Lf:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L17:
            kotlin.k.b(r8)
            r8 = r7
            goto L3d
        L1c:
            kotlin.k.b(r8)
            r8 = r7
        L20:
            cn.mucang.jiakaoyi.uilib.ui.widget.c r1 = r8.this$0
            boolean r1 = cn.mucang.jiakaoyi.uilib.ui.widget.CommonMainTitleBar.b(r1)
            if (r1 == 0) goto L48
            kotlinx.coroutines.d2 r1 = kotlinx.coroutines.w0.c()
            cn.mucang.jiakaoyi.uilib.ui.widget.CommonMainTitleBar$onAttachedToWindow$1$1 r4 = new cn.mucang.jiakaoyi.uilib.ui.widget.CommonMainTitleBar$onAttachedToWindow$1$1
            cn.mucang.jiakaoyi.uilib.ui.widget.c r5 = r8.this$0
            r6 = 0
            r4.<init>(r5, r6)
            r8.label = r3
            java.lang.Object r1 = kotlinx.coroutines.f.c(r1, r4, r8)
            if (r1 != r0) goto L3d
            return r0
        L3d:
            r4 = 1000(0x3e8, double:4.94E-321)
            r8.label = r2
            java.lang.Object r1 = kotlinx.coroutines.s0.a(r4, r8)
            if (r1 != r0) goto L20
            return r0
        L48:
            kotlin.v r8 = kotlin.v.f15822a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.mucang.jiakaoyi.uilib.ui.widget.CommonMainTitleBar$onAttachedToWindow$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
