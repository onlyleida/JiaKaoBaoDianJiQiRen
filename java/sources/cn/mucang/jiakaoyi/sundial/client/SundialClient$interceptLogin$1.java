package cn.mucang.jiakaoyi.sundial.client;

import android.app.Activity;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.sundial.library.Sundial;
import cn.mucang.sundial.library.SundialCallBack;
import cn.mucang.sundial.library.entity.ServerStudentInfo;
import java.io.File;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.sundial.client.SundialClient$interceptLogin$1", f = "SundialClient.kt", l = {280, 290, 347, 353}, m = "invokeSuspend")
final class SundialClient$interceptLogin$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ Activity $activity;
    final /* synthetic */ Function0<v> $back;
    final /* synthetic */ boolean $isK2;
    final /* synthetic */ Function0<v> $next;
    final /* synthetic */ String $xyToken;
    int I$0;
    long J$0;
    Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.sundial.client.SundialClient$interceptLogin$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.sundial.client.SundialClient$interceptLogin$1$1", f = "SundialClient.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super Boolean>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Boolean boolA;
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            Object DbLock = cn.mucang.android.jiakaoyi.framework.consts.a.f3429a;
            r.d(DbLock, "DbLock");
            synchronized (DbLock) {
                boolA = kotlin.coroutines.jvm.internal.a.a(Sundial.needStudentLogout());
            }
            return boolA;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.sundial.client.SundialClient$interceptLogin$1$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.sundial.client.SundialClient$interceptLogin$1$3", f = "SundialClient.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function2<i0, Continuation<? super Boolean>, Object> {
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass3) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Boolean boolA;
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            Object DbLock = cn.mucang.android.jiakaoyi.framework.consts.a.f3429a;
            r.d(DbLock, "DbLock");
            synchronized (DbLock) {
                boolA = kotlin.coroutines.jvm.internal.a.a(Sundial.needStudentLogin());
            }
            return boolA;
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$2", "Lcn/mucang/sundial/library/SundialCallBack;", "onResult", "", "success", "", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements SundialCallBack {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f9118a;
        final /* synthetic */ Function0<v> b;
        final /* synthetic */ Function0<v> c;

        a(boolean z, Function0<v> function0, Function0<v> function1) {
            this.f9118a = z;
            this.b = function0;
            this.c = function1;
        }

        @Override // cn.mucang.sundial.library.SundialCallBack
        public void onResult(boolean success) {
            if (success) {
                SundialClient.f9111a.A().setValue(Boolean.valueOf(this.f9118a));
                this.b.invoke();
            } else {
                cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：学员签退失败");
                this.c.invoke();
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$4", "Lcn/mucang/sundial/library/SundialCallBack;", "onResult", "", "success", "", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements SundialCallBack {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function0<v> f9119a;
        final /* synthetic */ Activity b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f9120d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Ref$ObjectRef<ServerStudentInfo> f9121e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ boolean f9122f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ Function0<v> f9123g;

        b(Function0<v> function0, Activity activity, String str, boolean z, Ref$ObjectRef<ServerStudentInfo> ref$ObjectRef, boolean z2, Function0<v> function1) {
            this.f9119a = function0;
            this.b = activity;
            this.c = str;
            this.f9120d = z;
            this.f9121e = ref$ObjectRef;
            this.f9122f = z2;
            this.f9123g = function1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(Activity activity, String xyToken, boolean z, Ref$ObjectRef studentInfo, boolean z2, Function0 next, Function0 back) {
            r.e(activity, "$activity");
            r.e(xyToken, "$xyToken");
            r.e(studentInfo, "$studentInfo");
            r.e(next, "$next");
            r.e(back, "$back");
            SundialClient$interceptLogin$1.invokeSuspend$loginStudent(activity, xyToken, z, studentInfo, z2, next, back);
        }

        @Override // cn.mucang.sundial.library.SundialCallBack
        public void onResult(boolean success) {
            if (!success) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：学员签退失败");
                this.f9119a.invoke();
                return;
            }
            final Activity activity = this.b;
            final String str = this.c;
            final boolean z = this.f9120d;
            final Ref$ObjectRef<ServerStudentInfo> ref$ObjectRef = this.f9121e;
            final boolean z2 = this.f9122f;
            final Function0<v> function0 = this.f9123g;
            final Function0<v> function1 = this.f9119a;
            u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.sundial.client.i
                @Override // java.lang.Runnable
                public final void run() {
                    SundialClient$interceptLogin$1.b.b(activity, str, z, ref$ObjectRef, z2, function0, function1);
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$loginStudent$1", "Lcn/mucang/sundial/library/SundialCallBack;", "onResult", "", "success", "", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c implements SundialCallBack {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Ref$ObjectRef<ServerStudentInfo> f9124a;
        final /* synthetic */ boolean b;
        final /* synthetic */ boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Function0<v> f9125d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Function0<v> f9126e;

        c(Ref$ObjectRef<ServerStudentInfo> ref$ObjectRef, boolean z, boolean z2, Function0<v> function0, Function0<v> function1) {
            this.f9124a = ref$ObjectRef;
            this.b = z;
            this.c = z2;
            this.f9125d = function0;
            this.f9126e = function1;
        }

        @Override // cn.mucang.sundial.library.SundialCallBack
        public void onResult(boolean success) {
            Integer subject3SurplusTime;
            Integer subject2SurplusTime;
            if (!success) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：学员签到失败");
                this.f9126e.invoke();
                return;
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：学员签到成功");
            ServerStudentInfo serverStudentInfo = this.f9124a.element;
            if (serverStudentInfo != null) {
                Integer todayVehicleSurplusTime = serverStudentInfo.getTodayVehicleSurplusTime();
                if (todayVehicleSurplusTime != null && todayVehicleSurplusTime.intValue() == 0) {
                    u.h("今日已达到单日学习时长上限，继续计时学时无效哦！");
                    TtsManager.r("今日已达到单日学习时长上限，继续计时学时无效哦！", TtsGrade.SpecialVoice);
                } else if (this.b && (subject2SurplusTime = this.f9124a.element.getSubject2SurplusTime()) != null && subject2SurplusTime.intValue() == 0) {
                    u.h("您已完成科目二阶段学时要求！");
                    TtsManager.r("您已完成科目二阶段学时要求！", TtsGrade.SpecialVoice);
                } else if (!this.b && (subject3SurplusTime = this.f9124a.element.getSubject3SurplusTime()) != null && subject3SurplusTime.intValue() == 0) {
                    u.h("您已完成科目三阶段学时要求！");
                    TtsManager.r("您已完成科目三阶段学时要求！", TtsGrade.SpecialVoice);
                }
            }
            SundialClient.f9111a.A().setValue(Boolean.valueOf(this.c));
            this.f9125d.invoke();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SundialClient$interceptLogin$1(String str, Activity activity, Function0<v> function0, Function0<v> function1, boolean z, Continuation<? super SundialClient$interceptLogin$1> continuation) {
        super(2, continuation);
        this.$xyToken = str;
        this.$activity = activity;
        this.$next = function0;
        this.$back = function1;
        this.$isK2 = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeSuspend$loginStudent(Activity activity, String str, boolean z, Ref$ObjectRef<ServerStudentInfo> ref$ObjectRef, boolean z2, Function0<v> function0, Function0<v> function1) {
        String absolutePath;
        File file = SundialClient.f9115g;
        String str2 = (file == null || (absolutePath = file.getAbsolutePath()) == null) ? "" : absolutePath;
        SundialClient sundialClient = SundialClient.f9111a;
        SundialClient.f9115g = null;
        Sundial.startStudentLogin(activity, "", "", str, str2, z, new c(ref$ObjectRef, z, z2, function0, function1));
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new SundialClient$interceptLogin$1(this.$xyToken, this.$activity, this.$next, this.$back, this.$isK2, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((SundialClient$interceptLogin$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:31:0x00d2 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:32:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:35:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:37:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:39:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:41:0x0100  */
    /* JADX WARN: Code duplicated, block: B:45:0x0110  */
    /* JADX WARN: Code duplicated, block: B:47:0x012c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:50:0x0135  */
    /* JADX WARN: Code duplicated, block: B:52:0x0142  */
    /* JADX WARN: Code duplicated, block: B:53:0x0144  */
    /* JADX WARN: Code duplicated, block: B:55:0x0152  */
    /* JADX WARN: Code duplicated, block: B:57:0x016f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:58:0x0170  */
    /* JADX WARN: Code duplicated, block: B:61:0x0194  */
    /* JADX WARN: Code duplicated, block: B:63:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:64:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:66:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:68:0x01c4  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Ref$ObjectRef ref$ObjectRef;
        long jCurrentTimeMillis;
        Ref$ObjectRef ref$ObjectRef2;
        int i;
        Object objC;
        Object objC2;
        int i2;
        T t;
        long jCurrentTimeMillis2;
        Object objC3;
        Ref$ObjectRef ref$ObjectRef3;
        int i3;
        long j;
        boolean z;
        Boolean bool;
        boolean z2;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i4 = this.label;
        if (i4 == 0) {
            kotlin.k.b(obj);
            ref$ObjectRef = new Ref$ObjectRef();
            if (this.$xyToken.length() == 0) {
                ref$ObjectRef2 = ref$ObjectRef;
            } else {
                jCurrentTimeMillis = System.currentTimeMillis();
                CoroutineDispatcher coroutineDispatcherB = w0.b();
                SundialClient$interceptLogin$1$isStudent$1 sundialClient$interceptLogin$1$isStudent$1 = new SundialClient$interceptLogin$1$isStudent$1(this.$xyToken, null);
                this.L$0 = ref$ObjectRef;
                this.L$1 = ref$ObjectRef;
                this.J$0 = jCurrentTimeMillis;
                this.label = 1;
                Object objC4 = kotlinx.coroutines.f.c(coroutineDispatcherB, sundialClient$interceptLogin$1$isStudent$1, this);
                if (objC4 == objD) {
                    return objD;
                }
                ref$ObjectRef2 = ref$ObjectRef;
                t = objC4;
            }
            if (i == 0) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：不是计时学员");
                CoroutineDispatcher coroutineDispatcherB2 = w0.b();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(null);
                this.L$0 = null;
                this.L$1 = null;
                this.I$0 = i;
                this.label = 2;
                objC2 = kotlinx.coroutines.f.c(coroutineDispatcherB2, anonymousClass1, this);
                if (objC2 == objD) {
                    return objD;
                }
                i2 = i;
                if (((Boolean) objC2).booleanValue()) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：需要签退");
                    Sundial.startStudentLogout(this.$activity, "", new a(i2 != 0, this.$next, this.$back));
                } else {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：不需要签退");
                    SundialClient.f9111a.A().setValue(kotlin.coroutines.jvm.internal.a.a(i2 != 0));
                    this.$next.invoke();
                }
                return v.f15822a;
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：是计时学员，走后面的逻辑");
            CoroutineDispatcher coroutineDispatcherB3 = w0.b();
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(null);
            this.L$0 = ref$ObjectRef2;
            this.L$1 = null;
            this.I$0 = i;
            this.label = 3;
            objC = kotlinx.coroutines.f.c(coroutineDispatcherB3, anonymousClass3, this);
            if (objC == objD) {
                return objD;
            }
            if (((Boolean) objC).booleanValue()) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：需要学员签到，跳转到签到页");
                Activity activity = this.$activity;
                String str = this.$xyToken;
                boolean z3 = this.$isK2;
                if (i != 0) {
                    z = true;
                } else {
                    z = false;
                }
                invokeSuspend$loginStudent(activity, str, z3, ref$ObjectRef2, z, this.$next, this.$back);
            } else {
                jCurrentTimeMillis2 = System.currentTimeMillis();
                CoroutineDispatcher coroutineDispatcherB4 = w0.b();
                SundialClient$interceptLogin$1$isDiffStudent$1 sundialClient$interceptLogin$1$isDiffStudent$1 = new SundialClient$interceptLogin$1$isDiffStudent$1(this.$xyToken, null);
                this.L$0 = ref$ObjectRef2;
                this.I$0 = i;
                this.J$0 = jCurrentTimeMillis2;
                this.label = 4;
                objC3 = kotlinx.coroutines.f.c(coroutineDispatcherB4, sundialClient$interceptLogin$1$isDiffStudent$1, this);
                if (objC3 == objD) {
                    return objD;
                }
                ref$ObjectRef3 = ref$ObjectRef2;
                i3 = i;
                j = jCurrentTimeMillis2;
                bool = (Boolean) objC3;
                bool.booleanValue();
                t.h("interceptLogin", r.m("time-isDiffLoginStudent:", kotlin.coroutines.jvm.internal.a.e(System.currentTimeMillis() - j)));
                if (bool.booleanValue()) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：不是同一个学员去签退");
                    Activity activity2 = this.$activity;
                    Function0<v> function0 = this.$back;
                    String str2 = this.$xyToken;
                    boolean z4 = this.$isK2;
                    if (i3 != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    Sundial.startStudentLogout(activity2, "", new b(function0, activity2, str2, z4, ref$ObjectRef3, z2, this.$next));
                } else {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：是同一个学员则直接进入首页");
                    SundialClient.f9111a.A().setValue(kotlin.coroutines.jvm.internal.a.a(i3 != 0));
                    this.$next.invoke();
                }
            }
            return v.f15822a;
        }
        if (i4 != 1) {
            if (i4 == 2) {
                i2 = this.I$0;
                kotlin.k.b(obj);
                objC2 = obj;
                if (((Boolean) objC2).booleanValue()) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：需要签退");
                    Sundial.startStudentLogout(this.$activity, "", new a(i2 != 0, this.$next, this.$back));
                } else {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：不需要签退");
                    SundialClient.f9111a.A().setValue(kotlin.coroutines.jvm.internal.a.a(i2 != 0));
                    this.$next.invoke();
                }
                return v.f15822a;
            }
            if (i4 == 3) {
                i = this.I$0;
                Ref$ObjectRef ref$ObjectRef4 = (Ref$ObjectRef) this.L$0;
                kotlin.k.b(obj);
                ref$ObjectRef2 = ref$ObjectRef4;
                objC = obj;
                if (((Boolean) objC).booleanValue()) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：需要学员签到，跳转到签到页");
                    Activity activity3 = this.$activity;
                    String str3 = this.$xyToken;
                    boolean z5 = this.$isK2;
                    if (i != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    invokeSuspend$loginStudent(activity3, str3, z5, ref$ObjectRef2, z, this.$next, this.$back);
                } else {
                    jCurrentTimeMillis2 = System.currentTimeMillis();
                    CoroutineDispatcher coroutineDispatcherB5 = w0.b();
                    SundialClient$interceptLogin$1$isDiffStudent$1 sundialClient$interceptLogin$1$isDiffStudent$2 = new SundialClient$interceptLogin$1$isDiffStudent$1(this.$xyToken, null);
                    this.L$0 = ref$ObjectRef2;
                    this.I$0 = i;
                    this.J$0 = jCurrentTimeMillis2;
                    this.label = 4;
                    objC3 = kotlinx.coroutines.f.c(coroutineDispatcherB5, sundialClient$interceptLogin$1$isDiffStudent$2, this);
                    if (objC3 == objD) {
                        return objD;
                    }
                    ref$ObjectRef3 = ref$ObjectRef2;
                    i3 = i;
                    j = jCurrentTimeMillis2;
                }
                return v.f15822a;
            }
            if (i4 != 4) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j = this.J$0;
            int i5 = this.I$0;
            Ref$ObjectRef ref$ObjectRef5 = (Ref$ObjectRef) this.L$0;
            kotlin.k.b(obj);
            ref$ObjectRef3 = ref$ObjectRef5;
            i3 = i5;
            objC3 = obj;
            bool = (Boolean) objC3;
            bool.booleanValue();
            t.h("interceptLogin", r.m("time-isDiffLoginStudent:", kotlin.coroutines.jvm.internal.a.e(System.currentTimeMillis() - j)));
            if (bool.booleanValue()) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：不是同一个学员去签退");
                Activity activity4 = this.$activity;
                Function0<v> function1 = this.$back;
                String str4 = this.$xyToken;
                boolean z6 = this.$isK2;
                if (i3 != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                Sundial.startStudentLogout(activity4, "", new b(function1, activity4, str4, z6, ref$ObjectRef3, z2, this.$next));
            } else {
                cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：是同一个学员则直接进入首页");
                SundialClient.f9111a.A().setValue(kotlin.coroutines.jvm.internal.a.a(i3 != 0));
                this.$next.invoke();
            }
            return v.f15822a;
        }
        jCurrentTimeMillis = this.J$0;
        ref$ObjectRef = (Ref$ObjectRef) this.L$1;
        Ref$ObjectRef ref$ObjectRef6 = (Ref$ObjectRef) this.L$0;
        kotlin.k.b(obj);
        ref$ObjectRef2 = ref$ObjectRef6;
        t = obj;
        t.h("interceptLogin", r.m("time-isSundialStudent:", kotlin.coroutines.jvm.internal.a.e(System.currentTimeMillis() - jCurrentTimeMillis)));
        v vVar = v.f15822a;
        ref$ObjectRef.element = t;
        i = ref$ObjectRef2.element != 0 ? 1 : 0;
        if (i == 0) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：不是计时学员");
            CoroutineDispatcher coroutineDispatcherB6 = w0.b();
            AnonymousClass1 anonymousClass2 = new AnonymousClass1(null);
            this.L$0 = null;
            this.L$1 = null;
            this.I$0 = i;
            this.label = 2;
            objC2 = kotlinx.coroutines.f.c(coroutineDispatcherB6, anonymousClass2, this);
            if (objC2 == objD) {
                return objD;
            }
            i2 = i;
            if (((Boolean) objC2).booleanValue()) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：需要签退");
                Sundial.startStudentLogout(this.$activity, "", new a(i2 != 0, this.$next, this.$back));
            } else {
                cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：不需要签退");
                SundialClient.f9111a.A().setValue(kotlin.coroutines.jvm.internal.a.a(i2 != 0));
                this.$next.invoke();
            }
            return v.f15822a;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：是计时学员，走后面的逻辑");
        CoroutineDispatcher coroutineDispatcherB7 = w0.b();
        AnonymousClass3 anonymousClass4 = new AnonymousClass3(null);
        this.L$0 = ref$ObjectRef2;
        this.L$1 = null;
        this.I$0 = i;
        this.label = 3;
        objC = kotlinx.coroutines.f.c(coroutineDispatcherB7, anonymousClass4, this);
        if (objC == objD) {
            return objD;
        }
        if (((Boolean) objC).booleanValue()) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：需要学员签到，跳转到签到页");
            Activity activity5 = this.$activity;
            String str5 = this.$xyToken;
            boolean z7 = this.$isK2;
            if (i != 0) {
                z = true;
            } else {
                z = false;
            }
            invokeSuspend$loginStudent(activity5, str5, z7, ref$ObjectRef2, z, this.$next, this.$back);
        } else {
            jCurrentTimeMillis2 = System.currentTimeMillis();
            CoroutineDispatcher coroutineDispatcherB8 = w0.b();
            SundialClient$interceptLogin$1$isDiffStudent$1 sundialClient$interceptLogin$1$isDiffStudent$3 = new SundialClient$interceptLogin$1$isDiffStudent$1(this.$xyToken, null);
            this.L$0 = ref$ObjectRef2;
            this.I$0 = i;
            this.J$0 = jCurrentTimeMillis2;
            this.label = 4;
            objC3 = kotlinx.coroutines.f.c(coroutineDispatcherB8, sundialClient$interceptLogin$1$isDiffStudent$3, this);
            if (objC3 == objD) {
                return objD;
            }
            ref$ObjectRef3 = ref$ObjectRef2;
            i3 = i;
            j = jCurrentTimeMillis2;
            bool = (Boolean) objC3;
            bool.booleanValue();
            t.h("interceptLogin", r.m("time-isDiffLoginStudent:", kotlin.coroutines.jvm.internal.a.e(System.currentTimeMillis() - j)));
            if (bool.booleanValue()) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：不是同一个学员去签退");
                Activity activity6 = this.$activity;
                Function0<v> function2 = this.$back;
                String str6 = this.$xyToken;
                boolean z8 = this.$isK2;
                if (i3 != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                Sundial.startStudentLogout(activity6, "", new b(function2, activity6, str6, z8, ref$ObjectRef3, z2, this.$next));
            } else {
                cn.mucang.android.jiakaoyi.framework.log.f.o("interceptLogin：是同一个学员则直接进入首页");
                SundialClient.f9111a.A().setValue(kotlin.coroutines.jvm.internal.a.a(i3 != 0));
                this.$next.invoke();
            }
        }
        return v.f15822a;
    }
}
