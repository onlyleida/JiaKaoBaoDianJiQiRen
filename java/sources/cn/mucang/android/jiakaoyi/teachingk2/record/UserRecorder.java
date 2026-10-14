package cn.mucang.android.jiakaoyi.teachingk2.record;

import android.util.SparseBooleanArray;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.p002e.XyToken;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityRecordModel;
import cn.mucang.jiakaoyi.uilib.socket.u;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iflytek.cloud.SpeechUtility;
import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u001a\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0007J\u0010\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u001e\u0010\u0018\u001a\u00020\u00122\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u001aH\u0007J\u001c\u0010\u001c\u001a\u00020\u00122\b\u0010\u001d\u001a\u0004\u0018\u00010\u001b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001bH\u0007J\b\u0010\u001f\u001a\u00020\u0012H\u0007J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0010H\u0002J(\u0010#\u001a\u00020\u00122\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00060%2\u0010\b\u0002\u0010&\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010'H\u0002J\u001e\u0010(\u001a\u00020\u00122\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00060)2\u0006\u0010*\u001a\u00020\u0006H\u0002J\u001e\u0010+\u001a\u00020\u00122\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00060)2\u0006\u0010*\u001a\u00020\u0006H\u0002J\u001e\u0010,\u001a\u00020\u00122\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00060)2\u0006\u0010*\u001a\u00020\u0006H\u0002J\u001e\u0010-\u001a\u00020\u00122\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00060)2\u0006\u0010*\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \f*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecorder;", "", "()V", "aiStatus", "Landroid/util/SparseBooleanArray;", "cacheTeach", "Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;", "cacheTrace", "cacheTrain", "cacheVideo", "es", "Ljava/util/concurrent/ExecutorService;", "kotlin.jvm.PlatformType", "isStart", "", Constant.START_TIME, "", "addRecord", "", "code", "", "extra", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;", "clearAi", "recordAI", SpeechUtility.TAG_RESOURCE_RESULT, "Lkotlin/Pair;", "", TtmlNode.START, "examSiteId", "userId", "stop", "t", "", "time", "uploadRecord", "list", "", "onSuccess", "Lkotlin/Function0;", "uploadTeach", "", "model", "uploadTrace", "uploadTrain", "uploadVideo", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UserRecorder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final UserRecorder f7548a = new UserRecorder();
    private static final ExecutorService b = Executors.newSingleThreadExecutor();
    private static final SparseBooleanArray c = new SparseBooleanArray();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f7549d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static long f7550e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static UserRecordModel f7551f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static UserRecordModel f7552g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static UserRecordModel f7553h;
    private static UserRecordModel i;

    private UserRecorder() {
    }

    public static final void g(int i2) {
        h(i2, null);
    }

    public static final void h(final int i2, final UnityRecordModel unityRecordModel) {
        if (n0.e(XyToken.c().e())) {
            return;
        }
        if (f7549d) {
            b.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.record.c
                @Override // java.lang.Runnable
                public final void run() {
                    UserRecorder.i(i2, unityRecordModel);
                }
            });
        }
        u.w(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(int i2, UnityRecordModel unityRecordModel) {
        ArrayList arrayList = new ArrayList();
        UserRecordModel.Companion companion = UserRecordModel.INSTANCE;
        Integer numE = w.t.e();
        UserRecorder userRecorder = f7548a;
        UserRecordModel userRecordModelA = companion.a(i2, numE, userRecorder.o(System.currentTimeMillis()), unityRecordModel);
        userRecordModelA.setExtra(unityRecordModel);
        f.o("用户行为：" + i2 + ',' + ((Object) JSON.toJSONString(unityRecordModel)));
        if (i2 == RecordEvent.VideoStart.getCode()) {
            f7551f = userRecordModelA;
            return;
        }
        if (i2 == RecordEvent.TrainStart.getCode()) {
            f7552g = userRecordModelA;
            return;
        }
        if (i2 == RecordEvent.VideoEnd.getCode()) {
            userRecorder.u(arrayList, userRecordModelA);
            return;
        }
        if (i2 == RecordEvent.TrainEnd.getCode()) {
            userRecorder.t(arrayList, userRecordModelA);
            return;
        }
        if (i2 == RecordEvent.TraceStart.getCode()) {
            f7553h = userRecordModelA;
            return;
        }
        if (i2 == RecordEvent.TraceEnd.getCode()) {
            userRecorder.s(arrayList, userRecordModelA);
            return;
        }
        if (i2 == RecordEvent.AutoTeachStart.getCode()) {
            i = userRecordModelA;
        } else if (i2 == RecordEvent.AutoTeachEnd.getCode()) {
            userRecorder.r(arrayList, userRecordModelA);
        } else {
            arrayList.add(userRecordModelA);
            q(userRecorder, arrayList, null, 2, null);
        }
    }

    public static final void j(int i2) {
        if (i2 <= 0) {
            return;
        }
        c.put(i2, false);
    }

    public static final void l(Pair<String, Integer> pair) {
        if (pair != null && pair.getSecond().intValue() > 0) {
            SparseBooleanArray sparseBooleanArray = c;
            if (!sparseBooleanArray.get(pair.getSecond().intValue()) && pair.getSecond().intValue() > 0) {
                g(pair.getSecond().intValue());
            }
            sparseBooleanArray.put(pair.getSecond().intValue(), true);
        }
    }

    public static final void m(String str, String str2) {
        if (n0.e(str) || r.a(str, "0") || n0.e(str2)) {
            return;
        }
        f7549d = true;
        f7550e = System.currentTimeMillis();
    }

    public static final void n() {
        f7549d = false;
    }

    private final float o(long j) {
        return ((int) (((j - f7550e) * 0.001f) * 10)) / 10.0f;
    }

    private final void p(List<UserRecordModel> list, Function0<v> function0) {
        int i2 = 3;
        do {
            i2--;
            try {
                try {
                    if (new UserRecordApi().u(list)) {
                        if (function0 == null) {
                            return;
                        }
                        function0.invoke();
                        return;
                    }
                } catch (Throwable th) {
                    Result.Companion companion = Result.INSTANCE;
                    Result.m139constructorimpl(k.a(th));
                }
            } catch (Exception unused) {
                Result.Companion companion2 = Result.INSTANCE;
                Thread.sleep(100L);
                Result.m139constructorimpl(v.f15822a);
            }
        } while (1 <= i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void q(UserRecorder userRecorder, List list, Function0 function0, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            function0 = null;
        }
        userRecorder.p(list, function0);
    }

    private final void r(List<UserRecordModel> list, UserRecordModel userRecordModel) {
        UserRecordModel userRecordModel2 = i;
        if (userRecordModel2 != null) {
            r.c(userRecordModel2);
            list.add(userRecordModel2);
        }
        list.add(userRecordModel);
        p(list, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.record.UserRecorder$uploadTeach$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                UserRecorder userRecorder = UserRecorder.f7548a;
                UserRecorder.i = null;
            }
        });
    }

    private final void s(List<UserRecordModel> list, UserRecordModel userRecordModel) {
        UserRecordModel userRecordModel2 = f7553h;
        if (userRecordModel2 != null) {
            r.c(userRecordModel2);
            list.add(userRecordModel2);
        }
        list.add(userRecordModel);
        p(list, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.record.UserRecorder$uploadTrace$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                UserRecorder userRecorder = UserRecorder.f7548a;
                UserRecorder.f7553h = null;
            }
        });
    }

    private final void t(List<UserRecordModel> list, UserRecordModel userRecordModel) {
        UserRecordModel userRecordModel2 = f7552g;
        if (userRecordModel2 != null) {
            r.c(userRecordModel2);
            list.add(userRecordModel2);
        }
        list.add(userRecordModel);
        p(list, new UserRecorder$uploadTrain$1(userRecordModel));
    }

    private final void u(List<UserRecordModel> list, UserRecordModel userRecordModel) {
        UserRecordModel userRecordModel2 = f7551f;
        if (userRecordModel2 != null) {
            r.c(userRecordModel2);
            list.add(userRecordModel2);
        }
        list.add(userRecordModel);
        p(list, new UserRecorder$uploadVideo$1(userRecordModel));
    }
}
