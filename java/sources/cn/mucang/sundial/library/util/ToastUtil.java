package cn.mucang.sundial.library.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.core.config.MucangConfig;
import java.lang.ref.WeakReference;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\u0005\u0010\tR \u0010\f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcn/mucang/sundial/library/util/ToastUtil;", "", "", ErrorDialogParams.EXTRA_MESSAGE, "Lkotlin/v;", "showToastOnce", "(Ljava/lang/String;)V", "", "res", "(I)V", "Ljava/lang/ref/WeakReference;", "Landroid/widget/Toast;", "toast", "Ljava/lang/ref/WeakReference;", "Landroid/os/Handler;", "handler", "Landroid/os/Handler;", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class ToastUtil {
    public static final ToastUtil INSTANCE = new ToastUtil();
    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static WeakReference<Toast> toast;

    private ToastUtil() {
    }

    @SuppressLint({"ShowToast"})
    public final synchronized void showToastOnce(final String message) {
        final Activity activity = ActivityUtil.INSTANCE.topActivity();
        if (activity != null) {
            handler.post(new Runnable() { // from class: cn.mucang.sundial.library.util.ToastUtil$showToastOnce$$inlined$let$lambda$1
                @Override // java.lang.Runnable
                public final void run() {
                    if (activity.isFinishing()) {
                        return;
                    }
                    ToastUtil toastUtil = ToastUtil.INSTANCE;
                    WeakReference weakReference = ToastUtil.toast;
                    Toast toastMakeText = weakReference != null ? (Toast) weakReference.get() : null;
                    if (toastMakeText == null) {
                        toastMakeText = Toast.makeText(MucangConfig.getContext(), message, 0);
                        ToastUtil.toast = new WeakReference(toastMakeText);
                    } else {
                        toastMakeText.setText(message);
                    }
                    if (toastMakeText != null) {
                        toastMakeText.show();
                    }
                }
            });
        }
    }

    @SuppressLint({"ShowToast"})
    public final synchronized void showToastOnce(int res) {
        showToastOnce(MucangConfig.getContext().getString(res));
    }
}
