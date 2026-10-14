package cn.mucang.jiakaoyi.uilib.ui.widget;

import android.widget.TextView;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.utils.JNet;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.jiakaoyi.uilib.socket.model.GpsStationInfoModel;
import com.mucang.android.jiakaoyi.uilib.databinding.MainTopBinding;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.b.p;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.f;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@kotlin.coroutines.jvm.internal.d(c = "cn.mucang.jiakaoyi.uilib.ui.widget.CommonMainTitleBar$onAttachedToWindow$1", f = "CommonMainTitleBar.kt", l = {95, 109}, m = "invokeSuspend")
final class CommonMainTitleBar$onAttachedToWindow$1 extends SuspendLambda implements p<i0, kotlin.coroutines.c<? super v>, Object> {
    int label;
    final /* synthetic */ c this$0;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.widget.CommonMainTitleBar$onAttachedToWindow$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @kotlin.coroutines.jvm.internal.d(c = "cn.mucang.jiakaoyi.uilib.ui.widget.CommonMainTitleBar$onAttachedToWindow$1$1", f = "CommonMainTitleBar.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements p<i0, kotlin.coroutines.c<? super v>, Object> {
        int label;
        final /* synthetic */ c this$0;

        AnonymousClass1(c r1, kotlin.coroutines.c<? super AnonymousClass1> r2) {
            super(2, r2);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.c<v> create(Object r2, kotlin.coroutines.c<?> r3) {
            return new AnonymousClass1(this.this$0, r3);
        }

        @Override // kotlin.jvm.b.p
        public /* bridge */ /* synthetic */ Object invoke(i0 r1, kotlin.coroutines.c<? super v> r2) {
            return invoke2(r1, r2);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(i0 r1, kotlin.coroutines.c<? super v> r2) {
            return ((AnonymousClass1) create(r1, r2)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object r8) {
            kotlin.coroutines.intrinsics.a.d();
            if (this.label != 0) goto L22;
            k.b(r8);
            if (c.a(this.this$0) == null) goto L15;
            Gps r9 = cn.mucang.android.jiakaoyi.signal.c.d.g();
            Gps r2 = new Gps(r9.latitude, r9.longitude);
            GpsStationInfoModel r3 = c.a(this.this$0);
            r.c(r3);
            double r4 = r3.lat;
            GpsStationInfoModel r5 = c.a(this.this$0);
            r.c(r5);
            double r6 = r2.distanceTo(new Gps(r4, r5.lon));
            MainTopBinding r10 = c.c(this.this$0);
            if (r10 == null) goto L13;
            TextView r11 = r10.stationDistance;
            if (r6 >= 5000.0d) goto L11;
            String r7 = "小于5公里";
        L12:
            r11.setText(r7);
            goto L15
        L11:
            r7 = r.m(n0.a(1, r6 * 0.001d), "公里");
            goto L12
        L13:
            r.u("viewBinding");
            throw null;
        L15:
            MainTopBinding r12 = c.c(this.this$0);
            if (r12 == null) goto L19;
            r12.netDelay.setText(JNet.b() + "ms");
            return v.f15822a;
        L19:
            r.u("viewBinding");
            throw null;
        L22:
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    CommonMainTitleBar$onAttachedToWindow$1(c r1, kotlin.coroutines.c<? super CommonMainTitleBar$onAttachedToWindow$1> r2) {
        super(2, r2);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<v> create(Object r2, kotlin.coroutines.c<?> r3) {
        return new CommonMainTitleBar$onAttachedToWindow$1(this.this$0, r3);
    }

    @Override // kotlin.jvm.b.p
    public /* bridge */ /* synthetic */ Object invoke(i0 r1, kotlin.coroutines.c<? super v> r2) {
        return invoke2(r1, r2);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(i0 r1, kotlin.coroutines.c<? super v> r2) {
        return ((CommonMainTitleBar$onAttachedToWindow$1) create(r1, r2)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0045 -> B:11:0x0020). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r8) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r1 = this.label;
        if (r1 == 0) goto L10;
        if (r1 == 1) goto L9;
        if (r1 == 2) goto L10;
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L9:
        k.b(r8);
        CommonMainTitleBar$onAttachedToWindow$1 r9 = this;
    L16:
        r9.label = 2;
        if (s0.a(1000, r9) != r0) goto L12;
        return r0;
    L12:
        if (c.b(r9.this$0) == false) goto L20;
        d2 r2 = w0.c();
        AnonymousClass1 r4 = new AnonymousClass1(r9.this$0, null);
        r9.label = 1;
        if (f.c(r2, r4, r9) != r0) goto L16;
        return r0;
    L20:
        return v.f15822a;
    L10:
        k.b(r8);
        r9 = this;
        goto L12
    }
}
