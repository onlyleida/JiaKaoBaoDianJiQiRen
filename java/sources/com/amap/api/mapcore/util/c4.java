package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class c4 extends ScrollView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f10596a;
    private LinearLayout b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<String> f10597d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f10598e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Bitmap f10599f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f10600g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f10601h;
    private int i;
    private int j;
    private int k;
    int l;
    private int m;
    private Runnable n;
    private int o;
    private d p;

    class a implements Runnable {

        /* JADX INFO: renamed from: com.amap.api.mapcore.util.c4$a$a, reason: collision with other inner class name */
        class RunnableC0186a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f10603a;
            final /* synthetic */ int b;

            RunnableC0186a(int i, int i2) {
                this.f10603a = i;
                this.b = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                c4 c4Var = c4.this;
                c4Var.smoothScrollTo(0, (c4Var.m - this.f10603a) + c4.this.c);
                c4 c4Var2 = c4.this;
                c4Var2.l = this.b + c4Var2.j + 1;
                c4.this.y();
            }
        }

        class b implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f10604a;
            final /* synthetic */ int b;

            b(int i, int i2) {
                this.f10604a = i;
                this.b = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                c4 c4Var = c4.this;
                c4Var.smoothScrollTo(0, c4Var.m - this.f10604a);
                c4 c4Var2 = c4.this;
                c4Var2.l = this.b + c4Var2.j;
                c4.this.y();
            }
        }

        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c4.this.m - c4.this.getScrollY() != 0) {
                c4 c4Var = c4.this;
                c4Var.m = c4Var.getScrollY();
                c4 c4Var2 = c4.this;
                c4Var2.postDelayed(c4Var2.n, c4.this.o);
                return;
            }
            if (c4.this.c == 0) {
                return;
            }
            int i = c4.this.m % c4.this.c;
            int i2 = c4.this.m / c4.this.c;
            if (i == 0) {
                c4 c4Var3 = c4.this;
                c4Var3.l = i2 + c4Var3.j;
                c4.this.y();
            } else if (i > c4.this.c / 2) {
                c4.this.post(new RunnableC0186a(i, i2));
            } else {
                c4.this.post(new b(i, i2));
            }
        }
    }

    class b extends Drawable {
        b() {
        }

        private void a(Canvas canvas) {
            canvas.drawColor(c4.this.f10600g);
        }

        private void b(Canvas canvas) {
            Paint paint = new Paint();
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            rect.left = 0;
            rect.top = 0;
            rect.right = c4.this.f10599f.getWidth() + 0;
            rect.bottom = c4.this.f10599f.getHeight() + 0;
            rect2.left = 0;
            rect2.top = c4.this.w()[0];
            rect2.right = c4.this.f10598e + 0;
            rect2.bottom = c4.this.w()[1];
            canvas.drawBitmap(c4.this.f10599f, rect, rect2, paint);
        }

        private void c(Canvas canvas) {
            Paint paint = new Paint();
            Rect clipBounds = canvas.getClipBounds();
            paint.setColor(c4.this.f10601h);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(c4.this.i);
            canvas.drawRect(clipBounds, paint);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            try {
                a(canvas);
                b(canvas);
                c(canvas);
            } catch (Throwable unused) {
            }
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f10606a;

        c(int i) {
            this.f10606a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            c4 c4Var = c4.this;
            c4Var.smoothScrollTo(0, this.f10606a * c4Var.c);
        }
    }

    public interface d {
        void a(int i);
    }

    public c4(Context context) {
        super(context);
        this.c = 0;
        this.f10599f = null;
        this.f10600g = Color.parseColor("#eeffffff");
        this.f10601h = Color.parseColor("#44383838");
        this.i = 4;
        this.j = 1;
        this.l = 1;
        this.o = 50;
        g(context);
    }

    public static int a(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int b(View view) {
        o(view);
        return view.getMeasuredHeight();
    }

    private void f(int i) {
        int i2 = this.c;
        if (i2 == 0) {
            return;
        }
        int i3 = this.j;
        int i4 = (i / i2) + i3;
        int i5 = i % i2;
        int i6 = i / i2;
        if (i5 == 0) {
            i4 = i6 + i3;
        } else if (i5 > i2 / 2) {
            i4 = i6 + i3 + 1;
        }
        int childCount = this.b.getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            TextView textView = (TextView) this.b.getChildAt(i7);
            if (textView == null) {
                return;
            }
            if (i4 == i7) {
                textView.setTextColor(Color.parseColor("#0288ce"));
            } else {
                textView.setTextColor(Color.parseColor("#bbbbbb"));
            }
        }
    }

    private void g(Context context) {
        this.f10596a = context;
        setVerticalScrollBarEnabled(false);
        try {
            if (this.f10599f == null) {
                InputStream inputStreamOpen = l3.b(context).open("map_indoor_select.png");
                this.f10599f = BitmapFactory.decodeStream(inputStreamOpen);
                inputStreamOpen.close();
            }
        } catch (Throwable unused) {
        }
        LinearLayout linearLayout = new LinearLayout(context);
        this.b = linearLayout;
        linearLayout.setOrientation(1);
        addView(this.b);
        this.n = new a();
    }

    private TextView m(String str) {
        TextView textView = new TextView(this.f10596a);
        textView.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        textView.setSingleLine(true);
        textView.setTextSize(2, 16.0f);
        textView.setText(str);
        textView.setGravity(17);
        textView.getPaint().setFakeBoldText(true);
        int iA = a(this.f10596a, 8.0f);
        int iA2 = a(this.f10596a, 6.0f);
        textView.setPadding(iA, iA2, iA, iA2);
        if (this.c == 0) {
            this.c = b(textView);
            this.b.setLayoutParams(new FrameLayout.LayoutParams(-2, this.c * this.k));
            setLayoutParams(new LinearLayout.LayoutParams(-2, this.c * this.k));
        }
        return textView;
    }

    public static void o(View view) {
        view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
    }

    private void u() {
        List<String> list = this.f10597d;
        if (list == null || list.size() == 0) {
            return;
        }
        this.b.removeAllViews();
        this.k = (this.j * 2) + 1;
        for (int size = this.f10597d.size() - 1; size >= 0; size--) {
            this.b.addView(m(this.f10597d.get(size)));
        }
        f(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] w() {
        int i = this.c;
        int i2 = this.j;
        return new int[]{i * i2, i * (i2 + 1)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        d dVar = this.p;
        if (dVar != null) {
            try {
                dVar.a(p());
            } catch (Throwable unused) {
            }
        }
    }

    public void e() {
        this.m = getScrollY();
        postDelayed(this.n, this.o);
    }

    @Override // android.widget.ScrollView
    public void fling(int i) {
        super.fling(i / 3);
    }

    public void h(d dVar) {
        this.p = dVar;
    }

    public void i(String str) {
        List<String> list = this.f10597d;
        if (list == null || list.size() == 0) {
            return;
        }
        int iIndexOf = this.f10597d.indexOf(str);
        int size = this.f10597d.size();
        int i = this.j;
        int i2 = ((size - i) - 1) - iIndexOf;
        this.l = i + i2;
        post(new c(i2));
    }

    public void j(boolean z) {
        setVisibility(z ? 0 : 8);
    }

    public void k(String[] strArr) {
        if (this.f10597d == null) {
            this.f10597d = new ArrayList();
        }
        this.f10597d.clear();
        for (String str : strArr) {
            this.f10597d.add(str);
        }
        for (int i = 0; i < this.j; i++) {
            this.f10597d.add(0, "");
            this.f10597d.add("");
        }
        u();
    }

    public void n() {
        Bitmap bitmap = this.f10599f;
        if (bitmap != null && !bitmap.isRecycled()) {
            r3.g0(this.f10599f);
            this.f10599f = null;
        }
        if (this.p != null) {
            this.p = null;
        }
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        f(i2);
    }

    @Override // android.widget.ScrollView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f10598e = i;
        try {
            setBackgroundDrawable(null);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            e();
        }
        return super.onTouchEvent(motionEvent);
    }

    public int p() {
        List<String> list = this.f10597d;
        if (list == null || list.size() == 0) {
            return 0;
        }
        return Math.min(this.f10597d.size() - (this.j * 2), Math.max(0, ((this.f10597d.size() - 1) - this.l) - this.j));
    }

    public boolean s() {
        return getVisibility() == 0;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.f10600g = i;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.f10598e == 0) {
            try {
                WindowManager windowManager = (WindowManager) this.f10596a.getSystemService("window");
                if (windowManager != null) {
                    this.f10598e = windowManager.getDefaultDisplay().getWidth();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        super.setBackgroundDrawable(new b());
    }
}
