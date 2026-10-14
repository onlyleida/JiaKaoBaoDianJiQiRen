package com.serenegiant.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.serenegiant.common.R;
import com.serenegiant.glutils.IRendererCommon;

/* JADX INFO: loaded from: classes6.dex */
public class ZoomAspectScaledTextureView extends AspectScaledTextureView implements IRendererCommon {
    private static final float DEFAULT_MAX_SCALE = 8.0f;
    private static final float DEFAULT_MIN_SCALE = 0.8f;
    private static final float DEFAULT_SCALE = 1.0f;
    private static final float EPS = 0.1f;
    private static final float MIN_DISTANCE = 15.0f;
    private static final float MIN_DISTANCE_SQUARE = 225.0f;
    private static final float MOVE_LIMIT_RATE = 0.2f;
    private static final int STATE_CHECKING = 3;
    private static final int STATE_DRAGING = 2;
    private static final int STATE_NON = 0;
    private static final int STATE_ROTATING = 5;
    private static final int STATE_WAITING = 1;
    private static final int STATE_ZOOMING = 4;
    private static final float TO_DEGREE = 57.29578f;
    private float mCurrentDegrees;
    protected final Matrix mDefaultMatrix;
    private boolean mHandleTouchEvent;
    protected boolean mImageMatrixChanged;
    private final RectF mImageRect;
    private boolean mIsRotating;
    private final RectF mLimitRect;
    private final LineSegment[] mLimitSegments;
    protected final float[] mMatrixCache;
    protected final float mMaxScale;
    private float mMinScale;
    private int mMirrorMode;
    private float mPivotX;
    private float mPivotY;
    private int mPrimaryId;
    private float mPrimaryX;
    private float mPrimaryY;
    private final Matrix mSavedImageMatrix;
    private float mSecondX;
    private float mSecondY;
    private int mSecondaryId;
    private Runnable mStartCheckRotate;
    private int mState;
    private float mTouchDistance;
    private final float[] mTrans;
    private Runnable mWaitImageReset;
    private static final int CHECK_TIMEOUT = ViewConfiguration.getTapTimeout() + ViewConfiguration.getLongPressTimeout();
    private static final int TAP_TIMEOUT = ViewConfiguration.getTapTimeout() * 2;
    private static final int LONG_PRESS_TIMEOUT = ViewConfiguration.getLongPressTimeout();

    private static final class LineSegment {
        public final Vector p1;
        public final Vector p2;

        public LineSegment(float f2, float f3, float f4, float f5) {
            this.p1 = new Vector(f2, f3);
            this.p2 = new Vector(f4, f5);
        }

        public LineSegment set(float f2, float f3, float f4, float f5) {
            this.p1.set(f2, f3);
            this.p2.set(f4, f5);
            return this;
        }
    }

    private final class StartCheckRotate implements Runnable {
        private StartCheckRotate() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ZoomAspectScaledTextureView.this.mState == 3) {
                ZoomAspectScaledTextureView.this.setState(5);
            }
        }
    }

    private static final class Vector {
        public float x;
        public float y;

        public Vector() {
        }

        public Vector dec(float f2, float f3) {
            this.x -= f2;
            this.y -= f3;
            return this;
        }

        public Vector set(float f2, float f3) {
            this.x = f2;
            this.y = f3;
            return this;
        }

        public Vector sub(Vector vector) {
            return new Vector(this.x - vector.x, this.y - vector.y);
        }

        public Vector(float f2, float f3) {
            set(f2, f3);
        }
    }

    private final class WaitImageReset implements Runnable {
        private WaitImageReset() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ZoomAspectScaledTextureView.this.init();
        }
    }

    public ZoomAspectScaledTextureView(Context context) {
        this(context, null, 0);
    }

    private void applyMirrorMode() {
        int i = this.mMirrorMode;
        if (i == 1) {
            setScaleX(-1.0f);
            setScaleY(1.0f);
        } else if (i == 2) {
            setScaleX(1.0f);
            setScaleY(-1.0f);
        } else if (i != 3) {
            setScaleX(1.0f);
            setScaleY(1.0f);
        } else {
            setScaleX(-1.0f);
            setScaleY(-1.0f);
        }
    }

    private final float calcAngle(MotionEvent motionEvent) {
        int iFindPointerIndex = motionEvent.findPointerIndex(this.mPrimaryId);
        int iFindPointerIndex2 = motionEvent.findPointerIndex(this.mSecondaryId);
        if (iFindPointerIndex < 0 || iFindPointerIndex2 < 0) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        float f2 = this.mSecondX - this.mPrimaryX;
        float f3 = this.mSecondY - this.mPrimaryY;
        float x = motionEvent.getX(iFindPointerIndex2) - motionEvent.getX(iFindPointerIndex);
        float y = motionEvent.getY(iFindPointerIndex2) - motionEvent.getY(iFindPointerIndex);
        return ((float) Math.acos(((double) dotProduct(f2, f3, x, y)) / Math.sqrt(((f2 * f2) + (f3 * f3)) * ((x * x) + (y * y))))) * 57.29578f * Math.signum(crossProduct(f2, f3, x, y));
    }

    private final float calcScale(MotionEvent motionEvent) {
        return ((float) Math.hypot(motionEvent.getX(0) - motionEvent.getX(1), motionEvent.getY(0) - motionEvent.getY(1))) / this.mTouchDistance;
    }

    private static final boolean checkIntersect(LineSegment lineSegment, LineSegment[] lineSegmentArr) {
        int length = lineSegmentArr != null ? lineSegmentArr.length : 0;
        Vector vectorSub = lineSegment.p2.sub(lineSegment.p1);
        boolean z = false;
        for (int i = 0; i < length; i++) {
            z = crossProduct(vectorSub, lineSegmentArr[i].p1.sub(lineSegment.p1)) * crossProduct(vectorSub, lineSegmentArr[i].p2.sub(lineSegment.p1)) < 0.1f;
            if (z) {
                Vector vectorSub2 = lineSegmentArr[i].p2.sub(lineSegmentArr[i].p1);
                z = crossProduct(vectorSub2, lineSegment.p1.sub(lineSegmentArr[i].p1)) * crossProduct(vectorSub2, lineSegment.p2.sub(lineSegmentArr[i].p1)) < 0.1f;
                if (z) {
                    break;
                }
            }
        }
        return z;
    }

    private final boolean checkTouchMoved(MotionEvent motionEvent) {
        int iFindPointerIndex = motionEvent.findPointerIndex(this.mPrimaryId);
        int iFindPointerIndex2 = motionEvent.findPointerIndex(this.mSecondaryId);
        if (iFindPointerIndex < 0) {
            return true;
        }
        float x = motionEvent.getX(iFindPointerIndex) - this.mPrimaryX;
        float y = motionEvent.getY(iFindPointerIndex) - this.mPrimaryY;
        if ((x * x) + (y * y) >= MIN_DISTANCE_SQUARE) {
            return true;
        }
        if (iFindPointerIndex2 >= 0) {
            float x2 = motionEvent.getX(iFindPointerIndex2) - this.mSecondX;
            float y2 = motionEvent.getY(iFindPointerIndex2) - this.mSecondY;
            if ((x2 * x2) + (y2 * y2) >= MIN_DISTANCE_SQUARE) {
                return true;
            }
        }
        return false;
    }

    private static final float crossProduct(float f2, float f3, float f4, float f5) {
        return (f2 * f5) - (f4 * f3);
    }

    private static final float crossProduct(Vector vector, Vector vector2) {
        return (vector.x * vector2.y) - (vector2.x * vector.y);
    }

    private static final float dotProduct(float f2, float f3, float f4, float f5) {
        return (f2 * f4) + (f3 * f5);
    }

    private final float getMatrixScale() {
        updateMatrixCache();
        float[] fArr = this.mMatrixCache;
        float fMin = Math.min(fArr[0], fArr[0]);
        if (fMin <= BitmapDescriptorFactory.HUE_RED) {
            return 1.0f;
        }
        return fMin;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:36:0x0162 A[PHI: r4
      0x0162: PHI (r4v22 boolean) = (r4v21 boolean), (r4v26 boolean), (r4v30 boolean) binds: [B:30:0x0122, B:32:0x0137, B:34:0x014c] A[DONT_GENERATE, DONT_INLINE]] */
    private final boolean processDrag(MotionEvent motionEvent) {
        boolean zCheckIntersect;
        float x = motionEvent.getX() - this.mPrimaryX;
        float y = motionEvent.getY() - this.mPrimaryY;
        float[] fArr = this.mTrans;
        RectF rectF = this.mImageRect;
        float f2 = rectF.left;
        fArr[6] = f2;
        fArr[0] = f2;
        float f3 = rectF.top;
        fArr[3] = f3;
        fArr[1] = f3;
        float f4 = rectF.bottom;
        fArr[7] = f4;
        fArr[5] = f4;
        float f5 = rectF.right;
        fArr[4] = f5;
        fArr[2] = f5;
        this.mImageMatrix.mapPoints(fArr);
        for (int i = 0; i < 8; i += 2) {
            float[] fArr2 = this.mTrans;
            fArr2[i] = fArr2[i] + x;
            int i2 = i + 1;
            fArr2[i2] = fArr2[i2] + y;
        }
        RectF rectF2 = this.mLimitRect;
        float[] fArr3 = this.mTrans;
        if (rectF2.contains(fArr3[0], fArr3[1])) {
            zCheckIntersect = true;
        } else {
            RectF rectF3 = this.mLimitRect;
            float[] fArr4 = this.mTrans;
            if (rectF3.contains(fArr4[2], fArr4[3])) {
                zCheckIntersect = true;
            } else {
                RectF rectF4 = this.mLimitRect;
                float[] fArr5 = this.mTrans;
                if (rectF4.contains(fArr5[4], fArr5[5])) {
                    zCheckIntersect = true;
                } else {
                    RectF rectF5 = this.mLimitRect;
                    float[] fArr6 = this.mTrans;
                    if (rectF5.contains(fArr6[6], fArr6[7])) {
                        zCheckIntersect = true;
                    } else {
                        RectF rectF6 = this.mLimitRect;
                        if (ptInPoly(rectF6.left, rectF6.top, this.mTrans)) {
                            zCheckIntersect = true;
                        } else {
                            RectF rectF7 = this.mLimitRect;
                            if (ptInPoly(rectF7.right, rectF7.top, this.mTrans)) {
                                zCheckIntersect = true;
                            } else {
                                RectF rectF8 = this.mLimitRect;
                                if (ptInPoly(rectF8.right, rectF8.bottom, this.mTrans)) {
                                    zCheckIntersect = true;
                                } else {
                                    RectF rectF9 = this.mLimitRect;
                                    if (ptInPoly(rectF9.left, rectF9.bottom, this.mTrans)) {
                                        zCheckIntersect = true;
                                    } else {
                                        zCheckIntersect = false;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if (!zCheckIntersect) {
            LineSegment[] lineSegmentArr = this.mLimitSegments;
            if (lineSegmentArr[0] == null) {
                RectF rectF10 = this.mLimitRect;
                float f6 = rectF10.left;
                float f7 = rectF10.top;
                lineSegmentArr[0] = new LineSegment(f6, f7, rectF10.right, f7);
                LineSegment[] lineSegmentArr2 = this.mLimitSegments;
                RectF rectF11 = this.mLimitRect;
                float f8 = rectF11.right;
                lineSegmentArr2[1] = new LineSegment(f8, rectF11.top, f8, rectF11.bottom);
                LineSegment[] lineSegmentArr3 = this.mLimitSegments;
                RectF rectF12 = this.mLimitRect;
                float f9 = rectF12.right;
                float f10 = rectF12.bottom;
                lineSegmentArr3[2] = new LineSegment(f9, f10, rectF12.left, f10);
                LineSegment[] lineSegmentArr4 = this.mLimitSegments;
                RectF rectF13 = this.mLimitRect;
                float f11 = rectF13.left;
                lineSegmentArr4[3] = new LineSegment(f11, rectF13.bottom, f11, rectF13.top);
            }
            float[] fArr7 = this.mTrans;
            LineSegment lineSegment = new LineSegment(fArr7[0], fArr7[1], fArr7[2], fArr7[3]);
            boolean zCheckIntersect2 = checkIntersect(lineSegment, this.mLimitSegments);
            if (zCheckIntersect2) {
                zCheckIntersect = zCheckIntersect2;
            } else {
                float[] fArr8 = this.mTrans;
                lineSegment.set(fArr8[2], fArr8[3], fArr8[4], fArr8[5]);
                zCheckIntersect2 = checkIntersect(lineSegment, this.mLimitSegments);
                if (zCheckIntersect2) {
                    zCheckIntersect = zCheckIntersect2;
                } else {
                    float[] fArr9 = this.mTrans;
                    lineSegment.set(fArr9[4], fArr9[5], fArr9[6], fArr9[7]);
                    zCheckIntersect2 = checkIntersect(lineSegment, this.mLimitSegments);
                    if (zCheckIntersect2) {
                        zCheckIntersect = zCheckIntersect2;
                    } else {
                        float[] fArr10 = this.mTrans;
                        lineSegment.set(fArr10[6], fArr10[7], fArr10[0], fArr10[1]);
                        zCheckIntersect = checkIntersect(lineSegment, this.mLimitSegments);
                    }
                }
            }
        }
        if (zCheckIntersect) {
            if (!this.mIsRotating) {
                float[] fArr11 = this.mTrans;
                float fMin = Math.min(fArr11[0], fArr11[2]);
                float[] fArr12 = this.mTrans;
                float fMin2 = Math.min(fMin, Math.min(fArr12[4], fArr12[6]));
                float[] fArr13 = this.mTrans;
                float fMax = Math.max(fArr13[0], fArr13[2]);
                float[] fArr14 = this.mTrans;
                float fMax2 = Math.max(fMax, Math.max(fArr14[4], fArr14[6]));
                float[] fArr15 = this.mTrans;
                float fMin3 = Math.min(fArr15[1], fArr15[3]);
                float[] fArr16 = this.mTrans;
                float fMin4 = Math.min(fMin3, Math.min(fArr16[5], fArr16[7]));
                float[] fArr17 = this.mTrans;
                float fMax3 = Math.max(fArr17[1], fArr17[3]);
                float[] fArr18 = this.mTrans;
                float fMax4 = Math.max(fMax3, Math.max(fArr18[5], fArr18[7]));
                RectF rectF14 = this.mLimitRect;
                float f12 = rectF14.left;
                if (fMax2 < f12) {
                    x = f12 - fMax2;
                } else {
                    float f13 = fMin2 + 0.1f;
                    float f14 = rectF14.right;
                    if (f13 > f14) {
                        x = (f14 - fMin2) - 0.1f;
                    }
                }
                float f15 = rectF14.top;
                if (fMax4 < f15) {
                    y = f15 - fMax4;
                } else {
                    float f16 = fMin4 + 0.1f;
                    float f17 = rectF14.bottom;
                    if (f16 > f17) {
                        y = (f17 - fMin4) - 0.1f;
                    }
                }
            }
            if ((x != BitmapDescriptorFactory.HUE_RED || y != BitmapDescriptorFactory.HUE_RED) && this.mImageMatrix.postTranslate(x, y)) {
                this.mImageMatrixChanged = true;
                setTransform(this.mImageMatrix);
            }
        }
        this.mPrimaryX = motionEvent.getX();
        this.mPrimaryY = motionEvent.getY();
        return zCheckIntersect;
    }

    private final boolean processRotate(MotionEvent motionEvent) {
        if (checkTouchMoved(motionEvent)) {
            restoreMatrix();
            float fCalcAngle = calcAngle(motionEvent);
            this.mCurrentDegrees = fCalcAngle;
            boolean z = Math.abs((((float) ((int) (fCalcAngle / 360.0f))) * 360.0f) - fCalcAngle) > 0.1f;
            this.mIsRotating = z;
            if (z && this.mImageMatrix.postRotate(this.mCurrentDegrees, this.mPivotX, this.mPivotY)) {
                this.mImageMatrixChanged = true;
                setTransform(this.mImageMatrix);
                return true;
            }
        }
        return false;
    }

    private final boolean processZoom(MotionEvent motionEvent) {
        restoreMatrix();
        float matrixScale = getMatrixScale();
        float fCalcScale = calcScale(motionEvent);
        float f2 = matrixScale * fCalcScale;
        if (f2 < this.mMinScale || f2 > 8.0f) {
            return false;
        }
        if (this.mImageMatrix.postScale(fCalcScale, fCalcScale, this.mPivotX, this.mPivotY)) {
            this.mImageMatrixChanged = true;
            setTransform(this.mImageMatrix);
        }
        return true;
    }

    private static final boolean ptInPoly(float f2, float f3, float[] fArr) {
        int length = fArr.length & Integer.MAX_VALUE;
        if (length < 6) {
            return false;
        }
        Vector vector = new Vector();
        Vector vector2 = new Vector();
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            vector.set(f2, f3).dec(fArr[i], fArr[i2]);
            int i3 = i + 2;
            if (i3 < length) {
                vector2.set(fArr[i3], fArr[i + 3]);
            } else {
                vector2.set(fArr[0], fArr[1]);
            }
            vector2.dec(fArr[i], fArr[i2]);
            if (crossProduct(vector, vector2) > BitmapDescriptorFactory.HUE_RED) {
                return false;
            }
            i = i3;
        }
        return true;
    }

    private final void restoreMatrix() {
        this.mImageMatrix.set(this.mSavedImageMatrix);
        this.mImageMatrixChanged = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setState(int i) {
        if (this.mState != i) {
            this.mState = i;
            getTransform(this.mSavedImageMatrix);
            if (this.mImageMatrix.equals(this.mSavedImageMatrix)) {
                return;
            }
            this.mImageMatrix.set(this.mSavedImageMatrix);
            this.mImageMatrixChanged = true;
        }
    }

    private final void startCheck(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() > 1) {
            this.mPrimaryId = motionEvent.getPointerId(0);
            this.mPrimaryX = motionEvent.getX(0);
            this.mPrimaryY = motionEvent.getY(0);
            this.mSecondaryId = motionEvent.getPointerId(1);
            this.mSecondX = motionEvent.getX(1);
            float y = motionEvent.getY(1);
            this.mSecondY = y;
            float fHypot = (float) Math.hypot(this.mSecondX - this.mPrimaryX, y - this.mPrimaryY);
            if (fHypot < MIN_DISTANCE) {
                return;
            }
            this.mTouchDistance = fHypot;
            this.mPivotX = (this.mPrimaryX + this.mSecondX) / 2.0f;
            this.mPivotY = (this.mPrimaryY + this.mSecondY) / 2.0f;
            if (this.mStartCheckRotate == null) {
                this.mStartCheckRotate = new StartCheckRotate();
            }
            postDelayed(this.mStartCheckRotate, CHECK_TIMEOUT);
            setState(3);
        }
    }

    private final void startWaiting(MotionEvent motionEvent) {
        this.mPrimaryId = 0;
        this.mSecondaryId = -1;
        float x = motionEvent.getX();
        this.mSecondX = x;
        this.mPrimaryX = x;
        float y = motionEvent.getY();
        this.mSecondY = y;
        this.mPrimaryY = y;
        if (this.mWaitImageReset == null) {
            this.mWaitImageReset = new WaitImageReset();
        }
        postDelayed(this.mWaitImageReset, CHECK_TIMEOUT);
        setState(1);
    }

    private final void startZoom(MotionEvent motionEvent) {
        removeCallbacks(this.mStartCheckRotate);
        setState(4);
    }

    private final boolean updateMatrixCache() {
        if (!this.mImageMatrixChanged) {
            return false;
        }
        this.mImageMatrix.getValues(this.mMatrixCache);
        this.mImageMatrixChanged = false;
        return true;
    }

    @Override // com.serenegiant.glutils.IRendererCommon
    public int getMirror() {
        return this.mMirrorMode;
    }

    @Override // com.serenegiant.widget.AspectScaledTextureView
    protected void init() {
        this.mState = -1;
        setState(0);
        this.mMinScale = DEFAULT_MIN_SCALE;
        this.mCurrentDegrees = BitmapDescriptorFactory.HUE_RED;
        this.mIsRotating = Math.abs((((float) ((int) (BitmapDescriptorFactory.HUE_RED / 360.0f))) * 360.0f) - BitmapDescriptorFactory.HUE_RED) > 0.1f;
        int width = getWidth();
        int height = getHeight();
        Rect rect = new Rect();
        getDrawingRect(rect);
        this.mLimitRect.set(rect);
        this.mLimitRect.inset((int) (width * MOVE_LIMIT_RATE), (int) (height * MOVE_LIMIT_RATE));
        this.mLimitSegments[0] = null;
        this.mImageRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, rect.width(), rect.height());
        super.init();
        this.mDefaultMatrix.set(this.mImageMatrix);
    }

    @Override // com.serenegiant.widget.AspectScaledTextureView, android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        super.onSurfaceTextureAvailable(surfaceTexture, i, i2);
        setMirror(0);
    }

    @Override // com.serenegiant.widget.AspectScaledTextureView, android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        super.onSurfaceTextureSizeChanged(surfaceTexture, i, i2);
        applyMirrorMode();
    }

    /* JADX WARN: Code duplicated, block: B:50:0x0073  */
    /* JADX WARN: Code duplicated, block: B:56:0x0093  */
    /* JADX WARN: Code duplicated, block: B:57:0x0097  */
    /* JADX WARN: Code duplicated, block: B:59:0x009e  */
    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        long jUptimeMillis;
        if (!this.mHandleTouchEvent) {
            return super.onTouchEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            startWaiting(motionEvent);
            return true;
        }
        if (actionMasked == 1) {
            removeCallbacks(this.mWaitImageReset);
            removeCallbacks(this.mStartCheckRotate);
            if (actionMasked == 1 && this.mState == 1) {
                jUptimeMillis = SystemClock.uptimeMillis() - motionEvent.getDownTime();
                if (jUptimeMillis > LONG_PRESS_TIMEOUT) {
                    performLongClick();
                } else if (jUptimeMillis < TAP_TIMEOUT) {
                    performClick();
                }
            }
            setState(0);
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                removeCallbacks(this.mWaitImageReset);
                removeCallbacks(this.mStartCheckRotate);
                if (actionMasked == 1) {
                    jUptimeMillis = SystemClock.uptimeMillis() - motionEvent.getDownTime();
                    if (jUptimeMillis > LONG_PRESS_TIMEOUT) {
                        performLongClick();
                    } else if (jUptimeMillis < TAP_TIMEOUT) {
                        performClick();
                    }
                }
            } else if (actionMasked == 5) {
                int i = this.mState;
                if (i == 1) {
                    removeCallbacks(this.mWaitImageReset);
                } else if (i == 2) {
                }
                if (motionEvent.getPointerCount() > 1) {
                    startCheck(motionEvent);
                    return true;
                }
            } else if (actionMasked == 6) {
            }
            setState(0);
        } else {
            int i2 = this.mState;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            if (i2 == 5 && processRotate(motionEvent)) {
                                return true;
                            }
                        } else if (processZoom(motionEvent)) {
                            return true;
                        }
                    } else if (checkTouchMoved(motionEvent)) {
                        startZoom(motionEvent);
                        return true;
                    }
                } else if (processDrag(motionEvent)) {
                    return true;
                }
            } else if (checkTouchMoved(motionEvent)) {
                removeCallbacks(this.mWaitImageReset);
                setState(2);
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void reset() {
        init();
    }

    public void setEnableHandleTouchEvent(boolean z) {
        this.mHandleTouchEvent = z;
    }

    @Override // com.serenegiant.glutils.IRendererCommon
    public void setMirror(int i) {
        if (this.mMirrorMode != i) {
            this.mMirrorMode = i;
            applyMirrorMode();
        }
    }

    public ZoomAspectScaledTextureView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ZoomAspectScaledTextureView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mDefaultMatrix = new Matrix();
        this.mMatrixCache = new float[9];
        this.mSavedImageMatrix = new Matrix();
        this.mLimitRect = new RectF();
        this.mLimitSegments = new LineSegment[4];
        this.mImageRect = new RectF();
        this.mTrans = new float[8];
        this.mMaxScale = 8.0f;
        this.mMinScale = DEFAULT_MIN_SCALE;
        this.mState = -1;
        this.mMirrorMode = 0;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.ZoomAspectScaledTextureView, i, 0);
        try {
            this.mHandleTouchEvent = typedArrayObtainStyledAttributes.getBoolean(R.styleable.ZoomAspectScaledTextureView_handle_touch_event, true);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
