package cn.mucang.android.jiakaoyi.teachingk2.login.logic;

import android.content.Context;
import android.view.View;
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.FaceFailDialog;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
final class FaceLoginLogic$onFail$1 extends Lambda implements Function0<v> {
    final /* synthetic */ FaceLoginLogic this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FaceLoginLogic$onFail$1(FaceLoginLogic faceLoginLogic) {
        super(0);
        this.this$0 = faceLoginLogic;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
    public static final void m44invoke$lambda0(FaceLoginLogic this$0, View view) {
        r.e(this$0, "this$0");
        this$0.z();
        this$0.J();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-1, reason: not valid java name */
    public static final void m45invoke$lambda1(FaceLoginLogic this$0, View view) {
        r.e(this$0, "this$0");
        this$0.v().invoke();
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ v invoke() {
        invoke2();
        return v.f15822a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        Context context = this.this$0.d().btnFaceCheck.getContext();
        r.d(context, "binding.btnFaceCheck.context");
        final FaceLoginLogic faceLoginLogic = this.this$0;
        new FaceFailDialog(context, new FaceFailDialog.DialogParams(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.logic.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FaceLoginLogic$onFail$1.m44invoke$lambda0(faceLoginLogic, view);
            }
        }, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.logic.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FaceLoginLogic$onFail$1.m45invoke$lambda1(faceLoginLogic, view);
            }
        })).show();
    }
}
