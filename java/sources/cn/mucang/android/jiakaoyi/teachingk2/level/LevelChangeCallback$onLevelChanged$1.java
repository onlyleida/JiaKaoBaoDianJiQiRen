package cn.mucang.android.jiakaoyi.teachingk2.level;

import android.view.View;
import android.widget.PopupWindow;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.dialogmgr.DialogMgr;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.CountdownPop;
import cn.mucang.android.jiakaoyi.teachingk2.level.model.ConfigLevelModel;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00072\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\tH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0005¨\u0006\n"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1", "Lcn/mucang/android/jiakaoyi/framework/dialogmgr/DialogMgr$DialogShow;", "priority", "", "getPriority", "()I", "show", "", "finishCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LevelChangeCallback$onLevelChanged$1 implements DialogMgr.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f7240a = 1;
    final /* synthetic */ ConfigLevelModel b;
    final /* synthetic */ ConfigLevelModel c;

    LevelChangeCallback$onLevelChanged$1(ConfigLevelModel configLevelModel, ConfigLevelModel configLevelModel2) {
        this.b = configLevelModel;
        this.c = configLevelModel2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(cn.mucang.android.jiakaoyi.framework.h.b bVar, LevelChangeCallback$onLevelChanged$1 this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (bVar == null) {
            return;
        }
        bVar.callback(this$0);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.dialogmgr.DialogMgr.a
    /* JADX INFO: renamed from: b, reason: from getter */
    public int getF7240a() {
        return this.f7240a;
    }

    @Override // cn.mucang.android.jiakaoyi.framework.dialogmgr.DialogMgr.a
    public void c(final cn.mucang.android.jiakaoyi.framework.h.b<DialogMgr.a> bVar) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA = k0.a(R.string.teachbase_complete_recommend);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_complete_recommend)");
        String str = String.format(strA, Arrays.copyOf(new Object[]{this.b.getDescription(), this.c.getDescription()}, 2));
        kotlin.jvm.internal.r.d(str, "java.lang.String.format(format, *args)");
        TtsManager.r(str, TtsGrade.Teach);
        int i = R.string.user_level_countdown;
        int i2 = R.string.user_level_cancel;
        final ConfigLevelModel configLevelModel = this.c;
        new CountdownPop(str, 8, new Function1<Integer, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.level.LevelChangeCallback$onLevelChanged$1$show$countDown$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(Integer num) {
                invoke(num.intValue());
                return v.f15822a;
            }

            public final void invoke(int i3) {
                if (i3 <= 0) {
                    Pair<String, String> pairB = NextLevelDataCreator.f7278a.b(configLevelModel, false);
                    if (n0.g(pairB.getSecond())) {
                        f.a.a.a.activity.h.e(pairB.getSecond());
                    }
                    f.a.a.a.activity.h.e(pairB.getFirst());
                    cn.mucang.android.jiakaoyi.framework.log.f.o("关卡-倒计时结束：" + pairB.getFirst() + ',' + pairB.getSecond());
                }
            }
        }, false, Integer.valueOf(i), null, Integer.valueOf(i2), new Function1<View, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.level.LevelChangeCallback$onLevelChanged$1$show$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                kotlin.jvm.internal.r.e(it, "it");
                cn.mucang.android.jiakaoyi.framework.log.f.o("关卡-浮窗取消");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(View view) {
                invoke2(view);
                return v.f15822a;
            }
        }, new PopupWindow.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.level.a
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                LevelChangeCallback$onLevelChanged$1.d(bVar, this);
            }
        }, 40, null).l();
    }
}
