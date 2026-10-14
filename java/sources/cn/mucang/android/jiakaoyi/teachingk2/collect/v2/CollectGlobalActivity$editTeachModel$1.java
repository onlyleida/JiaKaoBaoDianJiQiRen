package cn.mucang.android.jiakaoyi.teachingk2.collect.v2;

import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
final class CollectGlobalActivity$editTeachModel$1 extends Lambda implements Function1<String, kotlin.v> {
    final /* synthetic */ TeachModel $model;
    final /* synthetic */ CollectGlobalActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CollectGlobalActivity$editTeachModel$1(CollectGlobalActivity collectGlobalActivity, TeachModel teachModel) {
        super(1);
        this.this$0 = collectGlobalActivity;
        this.$model = teachModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-1, reason: not valid java name */
    public static final void m37invoke$lambda1(final TeachModel model, final String it, final CollectGlobalActivity this$0) {
        kotlin.jvm.internal.r.e(model, "$model");
        kotlin.jvm.internal.r.e(it, "$it");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        TeachModel teachModelCopy = model.copy();
        teachModelCopy.setVoice(it);
        if (new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b().v(teachModelCopy)) {
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.m
                @Override // java.lang.Runnable
                public final void run() {
                    CollectGlobalActivity$editTeachModel$1.m38invoke$lambda1$lambda0(model, it, this$0);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-1$lambda-0, reason: not valid java name */
    public static final void m38invoke$lambda1$lambda0(TeachModel model, String it, CollectGlobalActivity this$0) {
        kotlin.jvm.internal.r.e(model, "$model");
        kotlin.jvm.internal.r.e(it, "$it");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        model.setVoice(it);
        this$0.f6741f.notifyDataSetChanged();
        LiveBus.d(TeachModelChanged.class).l(new TeachModelChanged(null, 1, null));
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(final String it) {
        kotlin.jvm.internal.r.e(it, "it");
        final CollectGlobalActivity collectGlobalActivity = this.this$0;
        cn.mucang.android.jiakaoyi.framework.base.dialog.u uVar = new cn.mucang.android.jiakaoyi.framework.base.dialog.u(collectGlobalActivity);
        final TeachModel teachModel = this.$model;
        uVar.h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.l
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() {
                CollectGlobalActivity$editTeachModel$1.m37invoke$lambda1(teachModel, it, collectGlobalActivity);
            }
        }, "正在更新", "更新失败");
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ kotlin.v invoke(String str) {
        invoke2(str);
        return kotlin.v.f15822a;
    }
}
