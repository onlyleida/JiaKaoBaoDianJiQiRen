package cn.mucang.android.jky.usbcamera.adjust;

import android.app.Activity;
import android.view.View;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jky.usbcamera.R;
import cn.mucang.android.jky.usbcamera.detectside.p;
import com.serenegiant.usb.widget.MoveView;
import org.opencv.core.Point;

/* JADX INFO: loaded from: classes4.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f8842a;
    private b b;
    private b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f8843d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f8844e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f8845f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f8846g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Activity f8847h;

    private static class b implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private MoveView f8848a;
        private View b;
        private View c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private View f8849d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private View f8850e;

        public Point a() {
            Point point = new Point();
            point.x = ((double) (this.f8848a.getLeft() + this.f8848a.getRight())) * 0.5d;
            point.y = ((double) (this.f8848a.getTop() + this.f8848a.getBottom())) * 0.5d;
            return point;
        }

        public void b(int i, int i2) {
            this.f8848a.move(i, i2);
        }

        public int c() {
            return this.f8848a.getLayoutParams().width;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view == this.b) {
                this.f8848a.moveUp();
                return;
            }
            if (view == this.c) {
                this.f8848a.moveDown();
            } else if (view == this.f8849d) {
                this.f8848a.moveLeft();
            } else if (view == this.f8850e) {
                this.f8848a.moveRight();
            }
        }

        private b(Activity activity, int i, int i2, int i3, int i4, int i5) {
            this.f8848a = (MoveView) activity.findViewById(i);
            this.b = activity.findViewById(i2);
            this.c = activity.findViewById(i3);
            this.f8849d = activity.findViewById(i4);
            this.f8850e = activity.findViewById(i5);
            this.b.setOnClickListener(this);
            this.c.setOnClickListener(this);
            this.f8849d.setOnClickListener(this);
            this.f8850e.setOnClickListener(this);
        }
    }

    public g(Activity activity, int i, int i2) {
        this.f8847h = activity;
        this.f8844e = activity.findViewById(R.id.video_container);
        this.f8842a = new b(activity, R.id.point1, R.id.up1, R.id.down1, R.id.left1, R.id.right1);
        this.b = new b(activity, R.id.point2, R.id.up2, R.id.down2, R.id.left2, R.id.right2);
        this.c = new b(activity, R.id.point3, R.id.up3, R.id.down3, R.id.left3, R.id.right3);
        this.f8843d = new b(activity, R.id.point4, R.id.up4, R.id.down4, R.id.left4, R.id.right4);
        int iC = this.f8844e.getLayoutParams().width - this.f8842a.c();
        int iC2 = this.f8844e.getLayoutParams().height - this.f8842a.c();
        this.f8842a.b(0, 0);
        this.b.b(iC, 0);
        this.c.b(iC, iC2);
        this.f8843d.b(0, iC2);
        this.f8845f = i;
        this.f8846g = i2;
        activity.findViewById(R.id.toAdjust).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jky.usbcamera.adjust.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f8841a.b(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void b(View view) {
        c();
    }

    private void c() {
        try {
            p.h(this.f8842a.a(), this.b.a(), this.c.a(), this.f8843d.a(), this.f8844e.getWidth(), this.f8844e.getHeight(), this.f8845f, this.f8846g);
            u.h("校准完成");
            this.f8847h.finish();
        } catch (Throwable th) {
            u.h(th.getLocalizedMessage());
        }
    }
}
