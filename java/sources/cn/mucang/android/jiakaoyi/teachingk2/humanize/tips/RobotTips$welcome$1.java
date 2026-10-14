package cn.mucang.android.jiakaoyi.teachingk2.humanize.tips;

import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Lambda;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\n"}, d2 = {"<anonymous>", "", "arg", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;", "tips", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsValue;", "tipsK3"}, k = 3, mv = {1, 5, 1}, xi = 48)
final class RobotTips$welcome$1 extends Lambda implements Function3<TipsArguments, t, t, v> {
    final /* synthetic */ String $content;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RobotTips$welcome$1(String str) {
        super(3);
        this.$content = str;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ v invoke(TipsArguments tipsArguments, t tVar, t tVar2) {
        invoke2(tipsArguments, tVar, tVar2);
        return v.f15822a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(TipsArguments arg, t tips, t tipsK3) {
        kotlin.jvm.internal.r.e(arg, "arg");
        kotlin.jvm.internal.r.e(tips, "tips");
        kotlin.jvm.internal.r.e(tipsK3, "tipsK3");
        if (arg.triggerBefore(TipsRule.GUIDE_100100.getRuleCode()) || tips.f7216d != 0) {
            TtsManager.r(this.$content, TtsGrade.SuperLevel);
        }
    }
}
