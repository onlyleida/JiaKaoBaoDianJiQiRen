package com.amap.api.maps;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.amap.api.mapcore.util.ea;
import com.autonavi.amap.mapcore.interfaces.IAMap;
import com.autonavi.amap.mapcore.interfaces.IMapFragmentDelegate;

/* JADX INFO: loaded from: classes5.dex */
@TargetApi(20)
public class WearMapView extends ViewGroup implements BaseMapView {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f11509f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f11510g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f11511a;
    private IMapFragmentDelegate b;
    private AMap c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f11512d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SwipeDismissView f11513e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f11514h;

    public interface OnDismissCallback {
        void onDismiss();

        void onNotifySwipe();
    }

    public WearMapView(Context context) {
        super(context);
        this.f11511a = WearMapView.class.getSimpleName();
        this.f11514h = 0;
        getMapFragmentDelegate().setContext(context);
        a(context);
        b(context);
    }

    private void a(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point point = new Point();
            if (defaultDisplay != null) {
                defaultDisplay.getSize(point);
            }
            f11509f = point.x;
            f11510g = point.y;
        }
    }

    private void b(Context context) {
        this.f11513e = new SwipeDismissView(context, this);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams((int) ((context.getResources().getDisplayMetrics().density * 30.0f) + 0.5f), f11510g);
        this.f11513e.setBackgroundColor(Color.argb(0, 0, 0, 0));
        setBackgroundColor(Color.argb(0, 0, 0, 0));
        addView(this.f11513e, layoutParams);
    }

    public AMap getMap() {
        try {
            IAMap map = getMapFragmentDelegate().getMap();
            if (map == null) {
                return null;
            }
            if (this.c == null) {
                this.c = new AMap(map);
            }
            return this.c;
        } catch (Throwable unused) {
            return null;
        }
    }

    protected IMapFragmentDelegate getMapFragmentDelegate() {
        IMapFragmentDelegate iMapFragmentDelegate = this.b;
        if (iMapFragmentDelegate == null && iMapFragmentDelegate == null) {
            this.b = new ea(1);
        }
        return this.b;
    }

    @Override // com.amap.api.maps.BaseMapView
    public void loadWorldVectorMap(boolean z) {
        try {
            getMapFragmentDelegate().loadWorldVectorMap(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void onCreate(Bundle bundle) {
        try {
            this.f11512d = getMapFragmentDelegate().onCreateView(null, null, bundle);
            addView(this.f11512d, 0, new ViewGroup.LayoutParams(-1, -1));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void onDestroy() {
        try {
            getMapFragmentDelegate().onDestroy();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void onDismiss() {
        removeAllViews();
    }

    public void onEnterAmbient(Bundle bundle) {
        onResume();
    }

    public void onExitAmbient() {
        onPause();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt == this.f11512d) {
                childAt.layout(0, 0, getWidth(), getHeight());
            } else {
                SwipeDismissView swipeDismissView = this.f11513e;
                if (childAt == swipeDismissView) {
                    a(swipeDismissView);
                    this.f11513e.layout(0, 0, this.f11513e.getMeasuredWidth(), i3);
                }
            }
        }
    }

    public final void onLowMemory() {
        try {
            getMapFragmentDelegate().onLowMemory();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt instanceof SwipeDismissView) {
                SwipeDismissView swipeDismissView = (SwipeDismissView) childAt;
                childAt.measure(swipeDismissView.getLayoutParams().width, swipeDismissView.getLayoutParams().height);
            } else {
                childAt.measure(i, i2);
            }
        }
        super.onMeasure(i, i2);
    }

    public final void onPause() {
        try {
            getMapFragmentDelegate().onPause();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void onResume() {
        try {
            getMapFragmentDelegate().onResume();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void onSaveInstanceState(Bundle bundle) {
        try {
            getMapFragmentDelegate().onSaveInstanceState(bundle);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.view.View
    public void setLayerType(int i, Paint paint) {
    }

    public void setOnDismissCallbackListener(OnDismissCallback onDismissCallback) {
        SwipeDismissView swipeDismissView = this.f11513e;
        if (swipeDismissView != null) {
            swipeDismissView.setCallback(onDismissCallback);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        getMapFragmentDelegate().setVisibility(i);
    }

    public WearMapView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11511a = WearMapView.class.getSimpleName();
        this.f11514h = 0;
        this.f11514h = attributeSet.getAttributeIntValue(R.attr.visibility, 0);
        getMapFragmentDelegate().setContext(context);
        getMapFragmentDelegate().setVisibility(this.f11514h);
        a(context);
        b(context);
    }

    private void a(View view) {
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-2, -2);
        }
        int i = layoutParams.width;
        if (i > 0) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i, 1073741824);
        } else {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        int i2 = layoutParams.height;
        if (i2 > 0) {
            iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
        } else {
            iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
    }

    public WearMapView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f11511a = WearMapView.class.getSimpleName();
        this.f11514h = 0;
        this.f11514h = attributeSet.getAttributeIntValue(R.attr.visibility, 0);
        getMapFragmentDelegate().setContext(context);
        getMapFragmentDelegate().setVisibility(this.f11514h);
        a(context);
        b(context);
    }

    public WearMapView(Context context, AMapOptions aMapOptions) {
        super(context);
        this.f11511a = WearMapView.class.getSimpleName();
        this.f11514h = 0;
        getMapFragmentDelegate().setContext(context);
        getMapFragmentDelegate().setOptions(aMapOptions);
        a(context);
        b(context);
    }
}
