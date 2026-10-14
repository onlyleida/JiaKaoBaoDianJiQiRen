package com.serenegiant.usb.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.ImageView;
import cn.mucang.android.core.utils.t;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes6.dex */
@SuppressLint({"AppCompatCustomView"})
public class MoveView extends ImageView {
    private boolean hasInit;
    private float lastX;
    private float lastY;
    private float marginBottom;
    private float marginLeft;
    private float marginRight;
    private float marginTop;
    private int pointId;

    public MoveView(Context context) {
        super(context);
        this.hasInit = false;
        init();
    }

    private void init() {
    }

    public void move(float f2, float f3) {
        t.d("TAG", "x = " + f2 + " , y = " + f3);
        if (!this.hasInit) {
            updateMargin();
            this.hasInit = true;
        }
        this.marginLeft += f2;
        this.marginRight += f2;
        this.marginTop += f3;
        this.marginBottom += f3;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
        marginLayoutParams.topMargin = (int) (((double) this.marginTop) + 0.5d);
        marginLayoutParams.bottomMargin = (int) (((double) this.marginBottom) + 0.5d);
        marginLayoutParams.leftMargin = (int) (((double) this.marginLeft) + 0.5d);
        marginLayoutParams.rightMargin = (int) (((double) this.marginRight) + 0.5d);
        setLayoutParams(marginLayoutParams);
    }

    public void moveDown() {
        move(BitmapDescriptorFactory.HUE_RED, 1.0f);
    }

    public void moveLeft() {
        move(-1.0f, BitmapDescriptorFactory.HUE_RED);
    }

    public void moveRight() {
        move(1.0f, BitmapDescriptorFactory.HUE_RED);
    }

    public void moveUp() {
        move(BitmapDescriptorFactory.HUE_RED, -1.0f);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0062  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        motionEvent.getActionIndex();
        int action = motionEvent.getAction();
        if (action == 0) {
            this.lastX = motionEvent.getRawX();
            this.lastY = motionEvent.getRawY();
            updateMargin();
        } else if (action == 1) {
            this.pointId = -1;
        } else if (action == 2) {
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            t.d("TAG", "x = " + rawX + " , y = " + rawY + " , action index = " + motionEvent.getActionIndex() + " , pointId" + this.pointId);
            float f2 = rawX - this.lastX;
            float f3 = rawY - this.lastY;
            this.lastX = rawX;
            this.lastY = rawY;
            move(f2, f3);
        } else if (action == 3) {
            this.pointId = -1;
        }
        return true;
    }

    public void updateMargin() {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
        this.marginLeft = marginLayoutParams.leftMargin;
        this.marginRight = marginLayoutParams.rightMargin;
        this.marginTop = marginLayoutParams.topMargin;
        this.marginBottom = marginLayoutParams.bottomMargin;
        this.hasInit = true;
    }

    public MoveView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.hasInit = false;
        init();
    }

    public MoveView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.hasInit = false;
        init();
    }

    public MoveView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.hasInit = false;
        init();
    }
}
