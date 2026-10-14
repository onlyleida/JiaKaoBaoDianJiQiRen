package cn.mucang.android.core.webview.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.mucang.android.framework.webview.R;
import cn.mucang.android.ui.framework.mvp.b;

/* JADX INFO: loaded from: classes.dex */
public class TitleBarView extends RelativeLayout implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RelativeLayout f2901a;
    private ImageView b;
    private TextView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f2902d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RelativeLayout f2903e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ImageView f2904f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImageButton f2905g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Button f2906h;
    private EditText i;
    private ProgressBar j;

    public TitleBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void a() {
        this.f2901a = (RelativeLayout) findViewById(R.id.top_panel);
        this.b = (ImageView) findViewById(R.id.btn_browser_back);
        this.c = (TextView) findViewById(R.id.btn_browser_close);
        this.f2905g = (ImageButton) findViewById(R.id.btn_browser_option);
        this.f2902d = (TextView) findViewById(R.id.top_title);
        this.f2903e = (RelativeLayout) findViewById(R.id.url_editor);
        this.i = (EditText) findViewById(R.id.url_content);
        this.f2906h = (Button) findViewById(R.id.cancel);
        this.f2904f = (ImageView) findViewById(R.id.del_content);
        this.j = (ProgressBar) findViewById(R.id.webview_progress);
    }

    public ImageView getBtnBrowserBack() {
        return this.b;
    }

    public TextView getBtnBrowserClose() {
        return this.c;
    }

    public ImageButton getBtnBrowserOption() {
        return this.f2905g;
    }

    public Button getBtnCancel() {
        return this.f2906h;
    }

    public ImageView getDelContent() {
        return this.f2904f;
    }

    public ProgressBar getProgressBar() {
        return this.j;
    }

    public RelativeLayout getTitleBar() {
        return this.f2901a;
    }

    public TextView getTitleTextView() {
        return this.f2902d;
    }

    public EditText getUrlContentEditText() {
        return this.i;
    }

    public RelativeLayout getUrlEditorView() {
        return this.f2903e;
    }

    @Override // cn.mucang.android.ui.framework.mvp.b
    public View getView() {
        return this;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        a();
    }
}
