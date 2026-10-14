package cn.mucang.android.core.widget.datepick;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.framework.core.R;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class a extends androidx.fragment.app.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SelectDateView f2927a;
    private SelectDateView b;
    private SelectDateView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SelectDateView f2928d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SelectDateView f2929e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f2930f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextView f2931g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TextView f2932h;
    private TextView i;
    private TextView j;
    private TextView k;
    private RelativeLayout l;
    private Calendar m;
    private h n;
    private String o = "datetime";
    private long p;

    /* JADX INFO: renamed from: cn.mucang.android.core.widget.datepick.a$a, reason: collision with other inner class name */
    class ViewOnClickListenerC0093a implements View.OnClickListener {
        ViewOnClickListenerC0093a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.n != null) {
                a.this.n.a(a.this.m.getTime());
            }
            a.this.dismiss();
        }
    }

    class b implements SelectDateView.b {
        b() {
        }

        @Override // cn.mucang.android.core.widget.datepick.SelectDateView.b
        public void a(String str) {
            a.this.m.set(12, Integer.parseInt(a.this.f2929e.getCurrentSelected()));
        }
    }

    class c implements SelectDateView.b {
        c() {
        }

        @Override // cn.mucang.android.core.widget.datepick.SelectDateView.b
        public void a(String str) {
            a.this.m.set(11, Integer.parseInt(a.this.f2928d.getCurrentSelected()));
        }
    }

    class d implements SelectDateView.b {
        d() {
        }

        @Override // cn.mucang.android.core.widget.datepick.SelectDateView.b
        public void a(String str) {
            a.this.m.set(2, Integer.parseInt(str) - 1);
            a aVar = a.this;
            aVar.x(Integer.parseInt(aVar.c.getCurrentSelected()));
        }
    }

    class e implements SelectDateView.b {
        e() {
        }

        @Override // cn.mucang.android.core.widget.datepick.SelectDateView.b
        public void a(String str) {
            a.this.m.set(1, Integer.parseInt(str));
            a aVar = a.this;
            aVar.x(Integer.parseInt(aVar.c.getCurrentSelected()));
        }
    }

    class f implements SelectDateView.b {
        f() {
        }

        @Override // cn.mucang.android.core.widget.datepick.SelectDateView.b
        public void a(String str) {
            a.this.m.set(5, Integer.parseInt(str));
        }
    }

    public static class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f2939a;
        private int b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f2940d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private h f2941e;

        public a a() {
            a aVarI = a.I(this.f2939a, this.b, this.c, this.f2940d);
            aVarI.K(this.f2941e);
            return aVarI;
        }

        public g b(h hVar) {
            this.f2941e = hVar;
            return this;
        }

        public g c(String str) {
            this.c = str;
            return this;
        }

        public g d(long j) {
            this.f2940d = j;
            return this;
        }
    }

    public interface h {
        void a(Date date);
    }

    private void A() {
        H();
        E();
        B();
        C();
        D();
    }

    private void B() {
        x(this.m.get(5));
    }

    private void C() {
        int i = this.m.get(11);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < 24; i2++) {
            arrayList.add(J(i2));
        }
        this.f2928d.setDataList(arrayList);
        this.f2928d.setSelected(J(i));
        this.f2928d.setOnChangeListener(new c());
    }

    private void D() {
        int i = this.m.get(12);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < 60; i2++) {
            arrayList.add(J(i2));
        }
        this.f2929e.setDataList(arrayList);
        this.f2929e.setSelected(J(i));
        this.f2929e.setOnChangeListener(new b());
    }

    private void E() {
        int i = this.m.get(2) + 1;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 1; i2 <= 12; i2++) {
            arrayList.add(J(i2));
        }
        this.b.setDataList(arrayList);
        this.b.setSelected(J(i));
        this.b.setOnChangeListener(new d());
    }

    private void F() {
        String str = this.o;
        str.hashCode();
        if (str.equals("date")) {
            this.f2928d.setVisibility(8);
            this.j.setVisibility(8);
            this.f2929e.setVisibility(8);
            this.k.setVisibility(8);
            return;
        }
        if (str.equals("time")) {
            this.f2927a.setVisibility(8);
            this.f2931g.setVisibility(8);
            this.b.setVisibility(8);
            this.f2932h.setVisibility(8);
            this.c.setVisibility(8);
            this.i.setVisibility(8);
        }
    }

    private void G(View view) {
        this.f2930f = (TextView) view.findViewById(R.id.tv_sure);
        this.f2931g = (TextView) view.findViewById(R.id.tv_year);
        this.f2932h = (TextView) view.findViewById(R.id.tv_month);
        this.i = (TextView) view.findViewById(R.id.tv_day);
        this.j = (TextView) view.findViewById(R.id.tv_hour);
        this.k = (TextView) view.findViewById(R.id.tv_minute);
        this.f2927a = (SelectDateView) view.findViewById(R.id.year);
        this.b = (SelectDateView) view.findViewById(R.id.month);
        this.c = (SelectDateView) view.findViewById(R.id.day);
        this.f2928d = (SelectDateView) view.findViewById(R.id.hour);
        this.f2929e = (SelectDateView) view.findViewById(R.id.minute);
        this.l = (RelativeLayout) view.findViewById(R.id.rl_title);
    }

    private void H() {
        int i = this.m.get(1);
        ArrayList arrayList = new ArrayList();
        for (int i2 = i - 100; i2 <= i + 100; i2++) {
            arrayList.add(String.valueOf(i2));
        }
        this.f2927a.setDataList(arrayList);
        this.f2927a.setSelected(String.valueOf(this.m.get(1)));
        this.f2927a.setOnChangeListener(new e());
    }

    public static a I(int i, int i2, String str, long j) {
        Bundle bundle = new Bundle();
        bundle.putInt("sure_color", i);
        bundle.putInt("content_color", i2);
        bundle.putString("type", str);
        bundle.putLong("value", j);
        a aVar = new a();
        aVar.setArguments(bundle);
        return aVar;
    }

    private String J(int i) {
        if (i >= 10) {
            return String.valueOf(i);
        }
        return "0" + i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(int i) {
        int actualMaximum = this.m.getActualMaximum(5);
        int iMin = Math.min(i, actualMaximum);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 1; i2 <= actualMaximum; i2++) {
            arrayList.add(J(i2));
        }
        this.c.setDataList(arrayList);
        this.c.setSelected(J(iMin));
        this.c.setOnChangeListener(new f());
    }

    private void y() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            int i = arguments.getInt("sure_color");
            int i2 = arguments.getInt("content_color");
            if (i != 0) {
                this.f2930f.setTextColor(i);
            }
            if (i2 != 0) {
                z(i2);
            }
            this.o = arguments.getString("type");
            long j = arguments.getLong("value");
            this.p = j;
            if (j > 0) {
                this.m.setTimeInMillis(j);
            }
            if (n0.g(this.o)) {
                F();
            }
        }
    }

    private void z(int i) {
        this.f2931g.setTextColor(i);
        this.f2932h.setTextColor(i);
        this.i.setTextColor(i);
        this.j.setTextColor(i);
        this.k.setTextColor(i);
        this.l.setBackgroundColor(i);
        this.f2927a.setColor(i);
        this.b.setColor(i);
        this.c.setColor(i);
        this.f2928d.setColor(i);
        this.f2929e.setColor(i);
    }

    public void K(h hVar) {
        this.n = hVar;
    }

    @Override // androidx.fragment.app.c
    public Dialog onCreateDialog(Bundle bundle) {
        if (getContext() == null) {
            return super.onCreateDialog(bundle);
        }
        Dialog dialog = new Dialog(getContext(), R.style.core__base_dialog);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setGravity(80);
            window.getDecorView().setPadding(0, 0, 0, 0);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = -1;
            attributes.height = -2;
            window.setAttributes(attributes);
        }
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.dialogfragment_select_date, viewGroup, false);
        G(viewInflate);
        this.m = Calendar.getInstance();
        y();
        A();
        this.f2930f.setOnClickListener(new ViewOnClickListenerC0093a());
        return viewInflate;
    }
}
