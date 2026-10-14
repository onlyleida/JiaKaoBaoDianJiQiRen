package cn.mucang.jiakaoyi.uilib.mapupdate;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mucang.android.jiakaoyi.uilib.R;
import f.a.a.a.p009n.dialog.SafeDialogFragment;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.q.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J&\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0010\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u0010\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/mapupdate/DownloadProgressDialog;", "Lcn/mucang/android/core/permission/dialog/SafeDialogFragment;", "()V", "progress", "Landroid/widget/ProgressBar;", "txtTitle", "Landroid/widget/TextView;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "updateHint", "title", "", "updateProgress", "process", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DownloadProgressDialog extends SafeDialogFragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f9466a;
    private ProgressBar b;

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(2, R.style.jiakaoyi_dialog_fragment);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        r.e(inflater, "inflater");
        View viewInflate = inflater.inflate(R.layout.map_download_dialog, container, false);
        r.d(viewInflate, "inflater.inflate(R.layou…dialog, container, false)");
        View viewFindViewById = viewInflate.findViewById(R.id.txt_title);
        r.d(viewFindViewById, "root.findViewById(R.id.txt_title)");
        this.f9466a = (TextView) viewFindViewById;
        View viewFindViewById2 = viewInflate.findViewById(R.id.progress);
        r.d(viewFindViewById2, "root.findViewById(R.id.progress)");
        ProgressBar progressBar = (ProgressBar) viewFindViewById2;
        this.b = progressBar;
        if (progressBar == null) {
            r.u("progress");
            throw null;
        }
        progressBar.setMax(100);
        if (getDialog() != null) {
            Dialog dialog = getDialog();
            if ((dialog != null ? dialog.getWindow() : null) != null) {
                Dialog dialog2 = getDialog();
                r.c(dialog2);
                Window window = dialog2.getWindow();
                r.c(window);
                window.getAttributes().gravity = 17;
                Dialog dialog3 = getDialog();
                r.c(dialog3);
                Window window2 = dialog3.getWindow();
                r.c(window2);
                window2.setLayout((int) viewInflate.getContext().getResources().getDimension(R.dimen.dp_500), -2);
            }
        }
        return viewInflate;
    }

    @SuppressLint({"SetTextI18n"})
    public final void r(float f2) {
        int i = (int) (f2 * 100);
        TextView textView = this.f9466a;
        if (textView == null) {
            r.u("txtTitle");
            throw null;
        }
        textView.setText("下载更新中 " + i + " % ...");
        ProgressBar progressBar = this.b;
        if (progressBar != null) {
            progressBar.setProgress(i);
        } else {
            r.u("progress");
            throw null;
        }
    }
}
