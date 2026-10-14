package cn.mucang.android.jiakaoyi.k3collect;

import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "success", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
final class K3PosCollectActivity$saveMapDataAndExit$1 extends Lambda implements Function1<Boolean, kotlin.v> {
    final /* synthetic */ K3PosCollectActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    K3PosCollectActivity$saveMapDataAndExit$1(K3PosCollectActivity k3PosCollectActivity) {
        super(1);
        this.this$0 = k3PosCollectActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
    public static final void m7invoke$lambda0(K3PosCollectActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-1, reason: not valid java name */
    public static final void m8invoke$lambda1(K3PosCollectActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.p1();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ kotlin.v invoke(Boolean bool) {
        invoke(bool.booleanValue());
        return kotlin.v.f15822a;
    }

    public final void invoke(boolean z) {
        if (z) {
            this.this$0.finish();
            return;
        }
        final K3PosCollectActivity k3PosCollectActivity = this.this$0;
        JCommonDialog jCommonDialog = new JCommonDialog(k3PosCollectActivity, new JCommonDialog.DialogParams((String) null, "当前地图保存失败，退出可能导致地图丢失，请确保网络连接正常，是否重试？", "退出", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3PosCollectActivity$saveMapDataAndExit$1.m7invoke$lambda0(k3PosCollectActivity, view);
            }
        }, "重试", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3PosCollectActivity$saveMapDataAndExit$1.m8invoke$lambda1(k3PosCollectActivity, view);
            }
        }, false, 64, (kotlin.jvm.internal.o) null));
        jCommonDialog.setCancelable(false);
        jCommonDialog.show();
    }
}
