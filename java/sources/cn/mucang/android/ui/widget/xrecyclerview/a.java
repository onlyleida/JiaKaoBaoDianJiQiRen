package cn.mucang.android.ui.widget.xrecyclerview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import cn.mucang.android.framework.core.R;

/* JADX INFO: loaded from: classes4.dex */
public class a extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f9076a;
    private TextView b;
    private ProgressBar c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f9077d;

    /* JADX INFO: renamed from: cn.mucang.android.ui.widget.xrecyclerview.a$a, reason: collision with other inner class name */
    class ViewOnClickListenerC0154a implements View.OnClickListener {
        ViewOnClickListenerC0154a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.f9076a != 3 || a.this.f9077d == null) {
                return;
            }
            a.this.f9077d.a();
        }
    }

    public interface b {
        void a();
    }

    public a(Context context) {
        super(context);
        c();
    }

    public void c() {
        setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        LayoutInflater.from(getContext()).inflate(R.layout.ui__widget_xrecyclerview_loadmore_footer, this);
        TextView textView = (TextView) findViewById(R.id.x_recycler_view_footer_tv);
        this.b = textView;
        textView.setText(R.string.ui_framework__x_recycler_view_foot_release);
        this.b.setOnClickListener(new ViewOnClickListenerC0154a());
        this.c = (ProgressBar) findViewById(R.id.load_more_foot_progress);
    }

    public int getCurrentState() {
        return this.f9076a;
    }

    public void setOnReloadListener(b bVar) {
        this.f9077d = bVar;
    }

    public void setState(int i) {
        this.f9076a = i;
        if (i == 0) {
            this.b.setText(R.string.ui_framework__x_recycler_view_loading);
            this.c.setVisibility(0);
            setVisibility(0);
            return;
        }
        if (i == 1) {
            this.b.setText(R.string.ui_framework__x_recycler_view_load_complete);
            this.c.setVisibility(8);
            setVisibility(0);
        } else if (i == 2) {
            this.b.setText(R.string.ui_framework__x_recycler_view_no_more);
            this.c.setVisibility(8);
            setVisibility(0);
        } else {
            if (i != 3) {
                return;
            }
            this.b.setText(R.string.ui_framework__x_recycler_view_load_failed);
            this.c.setVisibility(8);
            setVisibility(0);
        }
    }
}
