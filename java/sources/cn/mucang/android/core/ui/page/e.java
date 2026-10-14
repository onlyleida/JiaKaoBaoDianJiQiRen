package cn.mucang.android.core.ui.page;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.mucang.android.framework.webview.R;

/* JADX INFO: loaded from: classes.dex */
public class e extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f2636a;
    private TextView b;
    private TextView c;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Activity activityB = e.this.b(view.getContext());
            if (activityB != null) {
                activityB.onBackPressed();
            }
        }
    }

    public e(Context context) {
        super(context);
        LinearLayout.inflate(context, R.layout.core__web_navigation_bar, this);
        this.f2636a = findViewById(R.id.navigation_bar);
        this.b = (TextView) findViewById(R.id.title);
        TextView textView = (TextView) findViewById(R.id.back_text);
        this.c = textView;
        textView.setOnClickListener(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Activity b(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return b(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public void setBackButtonColor(int i) {
        Drawable[] compoundDrawables = this.c.getCompoundDrawables();
        if (compoundDrawables[0] != null) {
            compoundDrawables[0].setColorFilter(i, PorterDuff.Mode.SRC_IN);
        }
        this.c.setTextColor(i);
    }

    public void setBackButtonText(String str) {
        this.c.setText(str);
    }

    public void setNavigationBarColor(int i) {
        this.f2636a.setBackgroundColor(i);
    }

    public void setText(String str) {
        this.b.setText(str);
    }

    public void setTextColor(int i) {
        this.b.setTextColor(i);
    }
}
