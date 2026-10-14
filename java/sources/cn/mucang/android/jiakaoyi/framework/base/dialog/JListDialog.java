package cn.mucang.android.jiakaoyi.framework.base.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.R;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class JListDialog extends Dialog implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f3372a;
    private View b;
    private ListView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ImageView f3373d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f3374e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<c> f3375f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private f.a.a.e.a.b.b<c> f3376g;

    public enum ListGravity {
        CENTER,
        BOTTOM
    }

    class a extends f.a.a.e.a.b.b<c> {
        a() {
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return JListDialog.this.b(i, getItem(i), viewGroup);
        }
    }

    public interface b {
        void a(int i);
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f3377a;
        private boolean b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private b f3378d;

        public c(String str, b bVar) {
            this.f3377a = str;
            this.f3378d = bVar;
        }

        public int d() {
            return this.c;
        }

        public void e(boolean z) {
            this.b = z;
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f3379a;
        public int b;
        public boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public ListGravity f3380d = ListGravity.CENTER;

        public d a(boolean z) {
            this.c = z;
            return this;
        }

        public d b(String str) {
            this.f3379a = str;
            return this;
        }
    }

    public JListDialog(Context context, d dVar, List<c> list) {
        super(context, R.style.jiakaoyi_list_dialog);
        this.f3376g = new a();
        this.f3374e = dVar;
        this.f3375f = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View b(final int i, final c cVar, ViewGroup viewGroup) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.common_dialog_list_item, viewGroup, false);
        TextView textView = (TextView) viewInflate.findViewById(R.id.nameTv);
        ((ImageView) viewInflate.findViewById(R.id.selectedIv)).setSelected(cVar.b);
        textView.setText(cVar.f3377a);
        if (cVar.d() != 0) {
            textView.setTextColor(cVar.d());
        }
        viewInflate.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.framework.base.dialog.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f3396a.d(cVar, i, view);
            }
        });
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void d(c cVar, int i, View view) {
        if (cVar.f3378d != null) {
            cVar.f3378d.a(i);
        }
        dismiss();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.f3373d) {
            dismiss();
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.common_dialog_list);
        this.f3372a = (TextView) findViewById(R.id.dialog_title_tv);
        this.b = findViewById(R.id.dialog_title_divider);
        ImageView imageView = (ImageView) findViewById(R.id.closeIv);
        this.f3373d = imageView;
        imageView.setOnClickListener(this);
        ListView listView = (ListView) findViewById(R.id.dialog_btn_box);
        this.c = listView;
        listView.setCacheColorHint(0);
        this.c.setDrawingCacheBackgroundColor(0);
        if (n0.e(this.f3374e.f3379a)) {
            this.f3372a.setVisibility(8);
            this.b.setVisibility(8);
            this.f3373d.setVisibility(8);
        } else {
            this.f3372a.setVisibility(0);
            this.b.setVisibility(0);
            this.f3373d.setVisibility(0);
            this.f3372a.setText(this.f3374e.f3379a);
            int i = this.f3374e.b;
            if (i > 0) {
                this.f3372a.setTextColor(i);
            }
        }
        this.c.setAdapter((ListAdapter) this.f3376g);
        this.f3376g.a(this.f3375f);
        if (this.f3374e.f3380d != ListGravity.CENTER) {
            getWindow().setGravity(81);
            getWindow().setLayout(-1, -2);
            return;
        }
        getWindow().setGravity(17);
        int dimension = (int) (getContext().getResources().getDisplayMetrics().widthPixels - (getContext().getResources().getDimension(R.dimen.dp_160) * 2.0f));
        if (!this.f3374e.c) {
            getWindow().setLayout(dimension, -2);
        } else {
            getWindow().setLayout(dimension, (int) (getContext().getResources().getDisplayMetrics().heightPixels - (getContext().getResources().getDimension(R.dimen.dp_90) * 2.0f)));
        }
    }
}
