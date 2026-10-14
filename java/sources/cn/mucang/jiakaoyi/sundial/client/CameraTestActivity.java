package cn.mucang.jiakaoyi.sundial.client;

import android.view.View;
import androidx.lifecycle.s;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.jiakaoyi.sundial.databinding.ActivitySundialCameraCopyBinding;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0014¨\u0006\b"}, d2 = {"Lcn/mucang/jiakaoyi/sundial/client/CameraTestActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraCopyBinding;", "()V", "getStatName", "", "init", "", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CameraTestActivity extends BaseViewBindingActivity<ActivitySundialCameraCopyBinding> {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(CameraTestActivity this$0, View view) {
        r.e(this$0, "this$0");
        File file = new File(this$0.getCacheDir(), "sundial");
        if (!file.exists()) {
            file.mkdirs();
        }
        kotlinx.coroutines.g.b(s.a(this$0), null, null, new CameraTestActivity$init$1$1(new File(file, "xueyuan.jpg").getAbsolutePath(), this$0, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(CameraTestActivity this$0, View view) {
        r.e(this$0, "this$0");
        File file = new File(this$0.getCacheDir(), "sundial");
        if (!file.exists()) {
            file.mkdirs();
        }
        kotlinx.coroutines.g.b(s.a(this$0), null, null, new CameraTestActivity$init$2$1(new File(file, "jiaolian.jpg").getAbsolutePath(), this$0, null), 3, null);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "拍照";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().btnCamera1.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.sundial.client.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CameraTestActivity.j(this.f9141a, view);
            }
        });
        g().btnCamera.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.sundial.client.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CameraTestActivity.k(this.f9140a, view);
            }
        });
    }
}
