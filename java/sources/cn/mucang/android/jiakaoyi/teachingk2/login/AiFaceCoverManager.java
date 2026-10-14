package cn.mucang.android.jiakaoyi.teachingk2.login;

import androidx.lifecycle.a0;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.DebounceUtil;
import cn.mucang.android.jiakaoyi.signal.ai.AIFaceCoverModel;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.communicate.MessageSender;
import cn.mucang.jiakaoyi.uilib.login.face.IFaceFilter;
import com.mobile.auth.gatewayauth.Constant;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000'\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\f\u001a\u00020\rR\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;", "", "()V", "faceFilter", "cn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1", "Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1;", "isEnableCover", "", "isFaceCover", "isInit", Constant.START_TIME, "", "init", "Lcn/mucang/jiakaoyi/uilib/login/face/IFaceFilter;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AiFaceCoverManager {
    private static boolean b;
    private static volatile boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile boolean f7293d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static long f7294e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AiFaceCoverManager f7292a = new AiFaceCoverManager();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final AiFaceCoverManager$faceFilter$1 f7295f = new IFaceFilter() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.AiFaceCoverManager$faceFilter$1
        @Override // cn.mucang.jiakaoyi.uilib.login.face.IFaceFilter
        public boolean a() {
            return System.currentTimeMillis() - AiFaceCoverManager.f7294e > 700 && AiFaceCoverManager.c;
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.IFaceFilter
        public boolean b() {
            return (AiFaceCoverManager.c && AiFaceCoverManager.f7293d) ? false : true;
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.IFaceFilter
        public void start() {
            AiFaceCoverManager aiFaceCoverManager = AiFaceCoverManager.f7292a;
            AiFaceCoverManager.f7293d = false;
            AiFaceCoverManager.f7294e = System.currentTimeMillis();
            cn.mucang.android.jiakaoyi.framework.log.f.g("请求打开遮挡检测");
            new MessageSender(cn.mucang.android.jiakaoyi.signal.ai.b.class, 3, 1000L, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.AiFaceCoverManager$faceFilter$1$start$1
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().Q(Cmd.AiEnableFaceCover, new byte[]{1});
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }
            }, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.AiFaceCoverManager$faceFilter$1$start$2
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    cn.mucang.android.jiakaoyi.framework.log.f.g("遮挡检测打开发送超时");
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }
            }, new Function1<cn.mucang.android.jiakaoyi.signal.ai.b, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.AiFaceCoverManager$faceFilter$1$start$3
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ v invoke(cn.mucang.android.jiakaoyi.signal.ai.b bVar) {
                    invoke2(bVar);
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(cn.mucang.android.jiakaoyi.signal.ai.b it) {
                    r.e(it, "it");
                }
            }).i();
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.IFaceFilter
        public void stop() {
            AiFaceCoverManager aiFaceCoverManager = AiFaceCoverManager.f7292a;
            AiFaceCoverManager.c = false;
            cn.mucang.android.jiakaoyi.framework.log.f.g("请求关闭遮挡检测");
            new MessageSender(cn.mucang.android.jiakaoyi.signal.ai.b.class, 3, 1000L, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.AiFaceCoverManager$faceFilter$1$stop$1
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().Q(Cmd.AiEnableFaceCover, new byte[]{0});
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }
            }, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.AiFaceCoverManager$faceFilter$1$stop$2
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    cn.mucang.android.jiakaoyi.framework.log.f.g("遮挡检测关闭发送超时");
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }
            }, new Function1<cn.mucang.android.jiakaoyi.signal.ai.b, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.AiFaceCoverManager$faceFilter$1$stop$3
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ v invoke(cn.mucang.android.jiakaoyi.signal.ai.b bVar) {
                    invoke2(bVar);
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(cn.mucang.android.jiakaoyi.signal.ai.b it) {
                    r.e(it, "it");
                }
            }).i();
        }
    };

    private AiFaceCoverManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(cn.mucang.android.jiakaoyi.signal.ai.b bVar) {
        c = bVar.b;
        cn.mucang.android.jiakaoyi.framework.log.f.g(r.m("是否开启ai人脸遮挡检测：", Boolean.valueOf(bVar.b)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(final AIFaceCoverModel aIFaceCoverModel) {
        f7293d = aIFaceCoverModel.isMask() || aIFaceCoverModel.isSunglasses();
        DebounceUtil.f3633a.b("AIFaceCoverModel", 1000, new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.a
            @Override // java.lang.Runnable
            public final void run() {
                AiFaceCoverManager.j(aIFaceCoverModel);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(AIFaceCoverModel aIFaceCoverModel) {
        cn.mucang.android.jiakaoyi.framework.log.f.g("ai遮挡检测是否遮挡：" + f7293d + "，result: " + aIFaceCoverModel.result + " 开关：" + c + "，startTime：" + f7294e);
    }

    public final IFaceFilter g() {
        if (b) {
            return f7295f;
        }
        b = true;
        cn.mucang.android.jiakaoyi.framework.log.f.g("初始化ai遮挡检测");
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.ai.b.class).i(new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.c
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AiFaceCoverManager.h((cn.mucang.android.jiakaoyi.signal.ai.b) obj);
            }
        });
        LiveBus.d(AIFaceCoverModel.class).i(new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.b
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AiFaceCoverManager.i((AIFaceCoverModel) obj);
            }
        });
        return f7295f;
    }
}
