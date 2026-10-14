package cn.mucang.android.ui.framework.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.framework.core.R;

/* JADX INFO: loaded from: classes4.dex */
public class EmptyView extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f8979a;
    private ImageView b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f8980d;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (EmptyView.this.f8980d == null || EmptyView.this.getVisibility() != 0) {
                return;
            }
            EmptyView.this.b();
            EmptyView.this.f8980d.a();
        }
    }

    public interface b {
        void a();
    }

    public EmptyView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void d() {
        setOnClickListener(new a());
    }

    private void e() {
        this.c = n0.c(R.string.ui_framework__default_empty_message);
    }

    private void f() {
        this.f8979a = (TextView) findViewById(R.id.ui_framework__empty_view_text);
        this.b = (ImageView) findViewById(R.id.ui_framework__empty_view_image);
    }

    public void b() {
        c(false);
    }

    public void c(boolean z) {
        if (z) {
            setVisibility(8);
        } else {
            setVisibility(4);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        f();
        e();
        d();
    }

    public void setEmptyImage(int i) {
        this.b.setImageResource(i);
        if (i < 0) {
            this.b.setVisibility(8);
        }
    }

    public void setEmptyText(String str) {
        this.c = str;
        this.f8979a.setText(str);
        if (TextUtils.isEmpty(str)) {
            this.f8979a.setVisibility(8);
        }
    }

    public void setEmptyTextStatus(int i) {
        this.f8979a.setVisibility(i);
    }

    public void setOnRefreshListener(b bVar) {
        this.f8980d = bVar;
    }
}
