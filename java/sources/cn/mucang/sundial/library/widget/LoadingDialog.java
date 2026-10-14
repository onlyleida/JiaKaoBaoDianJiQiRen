package cn.mucang.sundial.library.widget;

import android.app.Dialog;
import android.content.Context;
import android.widget.ProgressBar;
import android.widget.TextView;
import cn.mucang.android.core.utils.n0;
import cn.mucang.sundial.library.R;

/* JADX INFO: loaded from: classes5.dex */
public class LoadingDialog extends Dialog {
    private final ProgressBar progressBar;
    private final TextView tv;

    public LoadingDialog(Context context) {
        this(context, R.style.Sundial_LoadingDialog);
    }

    public void showLoading(String str) {
        showLoading(str, true);
    }

    private LoadingDialog(Context context, int i) {
        super(context, i);
        setContentView(R.layout.tt__loading_dialog);
        this.tv = (TextView) findViewById(R.id.tv);
        this.progressBar = (ProgressBar) findViewById(R.id.progressBar);
        setCancelable(true);
        setCanceledOnTouchOutside(true);
    }

    public void showLoading(String str, boolean z) {
        this.tv.setVisibility(n0.g(str) ? 0 : 8);
        this.tv.setText(str);
        this.progressBar.setVisibility(z ? 0 : 8);
        if (isShowing()) {
            return;
        }
        show();
    }
}
