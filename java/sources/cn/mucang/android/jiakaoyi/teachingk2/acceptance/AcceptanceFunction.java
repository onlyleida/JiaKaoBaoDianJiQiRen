package cn.mucang.android.jiakaoyi.teachingk2.acceptance;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.a0;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.mobile.auth.gatewayauth.Constant;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.acceptance.w, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0005H\u0016J\b\u0010\u001a\u001a\u00020\u0016H\u0017J5\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u001f\u001a\u00028\u00002\u0006\u0010\u0019\u001a\u00020\u0005¢\u0006\u0002\u0010 J?\u0010!\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u001f\u001a\u00028\u00002\u0006\u0010\"\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0005H\u0002¢\u0006\u0002\u0010#J\u0018\u0010$\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0005H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0005X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceFunction;", ExifInterface.GPS_DIRECTION_TRUE, "", "()V", "endTime", "", "getEndTime", "()J", "setEndTime", "(J)V", "manager", "Lcn/mucang/android/jiakaoyi/teachingk2/creator/K2TeachingEngineManager;", "getManager", "()Lcn/mucang/android/jiakaoyi/teachingk2/creator/K2TeachingEngineManager;", "setManager", "(Lcn/mucang/android/jiakaoyi/teachingk2/creator/K2TeachingEngineManager;)V", Constant.START_TIME, "getStartTime", "setStartTime", "traceId", "", "clickSubmit", "", "activity", "Landroidx/appcompat/app/AppCompatActivity;", "workOrderId", "destroy", "doSubmit", "module", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;", "subType", "model", "(Landroidx/appcompat/app/AppCompatActivity;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/Object;J)V", "doUpload", "trackId", "(Landroidx/appcompat/app/AppCompatActivity;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;J)V", "initAndStart", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class AcceptanceFunction<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.teachingk2.t0.b f6073a;
    private long b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6074d;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.acceptance.w$a */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceFunction$doSubmit$observer$1", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/engine/trace/upload/UploadCurrentMsg;", "onChanged", "", "t", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements a0<cn.mucang.android.jiakaoyi.engine.trace.upload.e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Runnable f6075a;
        final /* synthetic */ ProgressDialog b;
        final /* synthetic */ AcceptanceFunction<T> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ androidx.appcompat.app.d f6076d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ AcceptanceModule f6077e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f6078f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ T f6079g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ long f6080h;

        a(Runnable runnable, ProgressDialog progressDialog, AcceptanceFunction<T> acceptanceFunction, androidx.appcompat.app.d dVar, AcceptanceModule acceptanceModule, String str, T t, long j) {
            this.f6075a = runnable;
            this.b = progressDialog;
            this.c = acceptanceFunction;
            this.f6076d = dVar;
            this.f6077e = acceptanceModule;
            this.f6078f = str;
            this.f6079g = t;
            this.f6080h = j;
        }

        @Override // androidx.lifecycle.a0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onChanged(cn.mucang.android.jiakaoyi.engine.trace.upload.e t) {
            kotlin.jvm.internal.r.e(t, "t");
            cn.mucang.android.core.utils.u.e(this.f6075a);
            this.b.dismiss();
            LiveBus.d(cn.mucang.android.jiakaoyi.engine.trace.upload.e.class).m(this);
            AcceptanceFunction<T> acceptanceFunction = this.c;
            androidx.appcompat.app.d dVar = this.f6076d;
            AcceptanceModule acceptanceModule = this.f6077e;
            String str = this.f6078f;
            T t2 = this.f6079g;
            String str2 = t.f3195a;
            kotlin.jvm.internal.r.d(str2, "t.id");
            acceptanceFunction.h(dVar, acceptanceModule, str, t2, str2, this.f6080h);
            ((AcceptanceFunction) this.c).f6074d = t.f3195a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(ProgressDialog progressDialog, AcceptanceModule module, String str, Object obj) {
        kotlin.jvm.internal.r.e(module, "$module");
        progressDialog.dismiss();
        TtsManager.r("轨迹上传失败", TtsGrade.GlobalTip);
        cn.mucang.android.jiakaoyi.framework.log.f.o("轨迹上传超时，验收失败:" + module + ',' + ((Object) str) + ',' + ((Object) JSON.toJSONString(obj, SerializerFeature.DisableCircularReferenceDetect)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(a observer, DialogInterface dialogInterface) {
        kotlin.jvm.internal.r.e(observer, "$observer");
        LiveBus.d(cn.mucang.android.jiakaoyi.engine.trace.upload.e.class).m(observer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(final androidx.appcompat.app.d dVar, final AcceptanceModule acceptanceModule, final String str, T t, final String str2, final long j) {
        final String jSONString = JSON.toJSONString(t, SerializerFeature.DisableCircularReferenceDetect);
        cn.mucang.android.jiakaoyi.framework.log.f.o("提交验收:" + acceptanceModule + ',' + ((Object) str) + ',' + ((Object) jSONString) + ',' + str2 + ',' + j);
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(dVar).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.g
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws ApiException, InternalException, HttpException {
                AcceptanceFunction.i(acceptanceModule, str, jSONString, this, str2, j, dVar);
            }
        }, "正在提交", "提交失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(AcceptanceModule module, String str, String content, AcceptanceFunction this$0, String trackId, long j, final androidx.appcompat.app.d activity) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(module, "$module");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(trackId, "$trackId");
        kotlin.jvm.internal.r.e(activity, "$activity");
        AcceptanceApi acceptanceApi = new AcceptanceApi();
        kotlin.jvm.internal.r.d(content, "content");
        final String strP = acceptanceApi.p(module, str, content, this$0.getB(), this$0.getC(), trackId, j);
        if (n0.g(strP)) {
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.i
                @Override // java.lang.Runnable
                public final void run() {
                    AcceptanceFunction.j(strP, activity);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(String reportUrl, androidx.appcompat.app.d activity) {
        kotlin.jvm.internal.r.e(reportUrl, "$reportUrl");
        kotlin.jvm.internal.r.e(activity, "$activity");
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("验收结果:", reportUrl));
        activity.setResult(-1, new Intent().putExtra("reportUrl", reportUrl));
        activity.finish();
    }

    public void c(androidx.appcompat.app.d activity, long j) {
        kotlin.jvm.internal.r.e(activity, "activity");
        s(System.currentTimeMillis());
    }

    public void d() {
        cn.mucang.android.jiakaoyi.teachingk2.t0.b f6073a = getF6073a();
        if (f6073a != null) {
            f6073a.stop();
        }
        cn.mucang.android.jiakaoyi.teachingk2.t0.b f6073a2 = getF6073a();
        if (f6073a2 == null) {
            return;
        }
        f6073a2.destroy();
    }

    public final void e(androidx.appcompat.app.d activity, final AcceptanceModule module, final String str, final T t, long j) {
        kotlin.jvm.internal.r.e(activity, "activity");
        kotlin.jvm.internal.r.e(module, "module");
        if (!cn.mucang.android.jiakaoyi.engine.trace.w.p() && n0.g(this.f6074d)) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("验收轨迹已上传，重新提交结果");
            String str2 = this.f6074d;
            kotlin.jvm.internal.r.c(str2);
            h(activity, module, str, t, str2, j);
            return;
        }
        final ProgressDialog progressDialogShow = ProgressDialog.show(activity, null, "正在上传轨迹...");
        Runnable runnable = new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.h
            @Override // java.lang.Runnable
            public final void run() {
                AcceptanceFunction.f(progressDialogShow, module, str, t);
            }
        };
        final a aVar = new a(runnable, progressDialogShow, this, activity, module, str, t, j);
        progressDialogShow.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.j
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AcceptanceFunction.g(aVar, dialogInterface);
            }
        });
        LiveBus.d(cn.mucang.android.jiakaoyi.engine.trace.upload.e.class).h(activity, aVar);
        cn.mucang.android.core.utils.u.d(runnable, DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
        d();
    }

    /* JADX INFO: renamed from: k, reason: from getter */
    public long getC() {
        return this.c;
    }

    /* JADX INFO: renamed from: l, reason: from getter */
    public cn.mucang.android.jiakaoyi.teachingk2.t0.b getF6073a() {
        return this.f6073a;
    }

    /* JADX INFO: renamed from: m, reason: from getter */
    public long getB() {
        return this.b;
    }

    public void n(androidx.appcompat.app.d activity, long j) {
        kotlin.jvm.internal.r.e(activity, "activity");
        u(System.currentTimeMillis());
    }

    public void s(long j) {
        this.c = j;
    }

    public void t(cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar) {
        this.f6073a = bVar;
    }

    public void u(long j) {
        this.b = j;
    }
}
