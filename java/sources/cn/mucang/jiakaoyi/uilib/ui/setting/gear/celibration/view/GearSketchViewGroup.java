package cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.model.GearsDataModel;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.utils.GearsUtils;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mucang.android.jiakaoyi.uilib.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0018\u0010)\u001a\u00020*2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020-\u0018\u00010,H\u0002J0\u0010.\u001a\u00020*2\u0006\u0010/\u001a\u00020\u001c2\u0006\u00100\u001a\u00020\u00172\u0006\u00101\u001a\u00020\u00172\u0006\u00102\u001a\u00020\u00172\u0006\u00103\u001a\u00020\u0017H\u0002J\u0010\u00104\u001a\u00020*2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u00105\u001a\u00020*2\u0006\u00106\u001a\u000207H\u0014J0\u00108\u001a\u00020*2\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020\u00172\u0006\u0010<\u001a\u00020\u00172\u0006\u0010=\u001a\u00020\u00172\u0006\u0010>\u001a\u00020\u0017H\u0014J\u0018\u0010?\u001a\u00020*2\u0006\u0010@\u001a\u00020\u00172\u0006\u0010A\u001a\u00020\u0017H\u0014J\u0010\u0010B\u001a\u00020*2\b\u0010C\u001a\u0004\u0018\u00010\tJ \u0010D\u001a\u00020*2\b\u0010E\u001a\u0004\u0018\u00010\t2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020-\u0018\u00010,J\u0016\u0010F\u001a\u00020*2\u0006\u0010;\u001a\u00020\u00172\u0006\u0010<\u001a\u00020\u0017R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u0011X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u001a\u001a\u0012\u0012\u0004\u0012\u00020\u001c0\u001bj\b\u0012\u0004\u0012\u00020\u001c`\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010 \u001a\u0004\u0018\u00010!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u000e\u0010&\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006G"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup;", "Landroid/view/ViewGroup;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "currentSelectGear", "", "getCurrentSelectGear", "()Ljava/lang/String;", "setCurrentSelectGear", "(Ljava/lang/String;)V", "emptyDataPaint", "Landroid/graphics/Paint;", "gearDot", "Landroid/view/View;", "getGearDot", "()Landroid/view/View;", "setGearDot", "(Landroid/view/View;)V", "gearDotLeftInLogic", "", "gearDotSize", "gearDotTopInLogic", "gearsList", "Ljava/util/ArrayList;", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemView;", "Lkotlin/collections/ArrayList;", "heightInLogic", "leftInLogic", "modifyCallback", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/ModifyCallback;", "getModifyCallback", "()Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/ModifyCallback;", "setModifyCallback", "(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/ModifyCallback;)V", "spaceExtra", "topInLogic", "widthInLogic", "calculateLogicSpace", "", "data", "", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;", "gearLayout", "item", "realLeft", "realWidth", "realTop", "realHeight", "initGearView", "onDraw", "canvas", "Landroid/graphics/Canvas;", "onLayout", "changed", "", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "selectGear", "gearName", "setGearsDate", "gearCategory", "setGearsHandlerLoc", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GearSketchViewGroup extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ArrayList<GearItemView> f10088a;
    public View b;
    private final Paint c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ModifyCallback f10089d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f10090e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f10091f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f10092g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f10093h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup$setGearsDate$2$gearItemView$1$1", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/ModifyCallback;", "onModified", "", "item", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements ModifyCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List<GearsDataModel.GearsItemModel> f10094a;
        final /* synthetic */ GearSketchViewGroup b;

        /* JADX WARN: Multi-variable type inference failed */
        a(List<? extends GearsDataModel.GearsItemModel> list, GearSketchViewGroup gearSketchViewGroup) {
            this.f10094a = list;
            this.b = gearSketchViewGroup;
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.view.ModifyCallback
        public void a(GearsDataModel.GearsItemModel item) {
            r.e(item, "item");
            GearsUtils.f10057a.a(this.f10094a);
            this.b.requestLayout();
            ModifyCallback f10089d = this.b.getF10089d();
            if (f10089d == null) {
                return;
            }
            f10089d.a(item);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GearSketchViewGroup(Context context, AttributeSet attrs) {
        super(context, attrs);
        r.e(context, "context");
        r.e(attrs, "attrs");
        this.f10088a = new ArrayList<>();
        this.c = new Paint();
        this.f10091f = 100;
        this.f10092g = -50;
        this.f10093h = 100;
        this.i = -50;
        this.j = -1000;
        this.k = -1000;
        c(context);
    }

    private final void a(List<? extends GearsDataModel.GearsItemModel> list) {
        if (list == null || list.isEmpty()) {
            this.f10091f = 100;
            this.f10092g = -50;
            this.f10093h = 100;
            this.i = -50;
            cn.mucang.android.jiakaoyi.framework.log.f.o("GearSketchViewGroup leftInLogic:" + this.f10092g + " topInLogic:" + this.i + " widthInLogic:" + this.f10091f + " heightInLogic:" + this.f10093h);
            return;
        }
        int iMin = 50;
        int iMin2 = 50;
        int iMax = -50;
        int iMax2 = -50;
        for (GearsDataModel.GearsItemModel gearsItemModel : list) {
            iMin = Math.min(iMin, gearsItemModel.left);
            iMax = Math.max(iMax, gearsItemModel.right);
            iMin2 = Math.min(iMin2, gearsItemModel.top);
            iMax2 = Math.max(iMax2, gearsItemModel.bottom);
        }
        this.f10092g = iMin;
        this.i = iMin2;
        this.f10091f = Math.max(iMax - iMin, 10);
        this.f10093h = Math.max(iMax2 - iMin2, 10);
        cn.mucang.android.jiakaoyi.framework.log.f.o("GearSketchViewGroup leftInLogic:" + this.f10092g + " topInLogic:" + this.i + " widthInLogic:" + this.f10091f + " heightInLogic:" + this.f10093h);
    }

    private final void b(GearItemView gearItemView, int i, int i2, int i3, int i4) {
        GearsDataModel.GearsItemModel dataItem = gearItemView.getDataItem();
        int i5 = dataItem.left;
        int i6 = (i5 - this.f10092g) * i2;
        int i7 = this.f10091f;
        int i8 = i + (i6 / i7);
        int i9 = (((dataItem.right - i5) * i2) / i7) + i8;
        int i10 = dataItem.top;
        int i11 = i3 + (((i10 - this.i) * i4) / this.f10093h);
        int i12 = (((dataItem.bottom - i10) * i4) / i7) + i11;
        if (!gearItemView.isSelected()) {
            gearItemView.layout(i8, i11, i9, i12);
        } else {
            int i13 = this.l;
            gearItemView.layout(i8 - i13, i11 - i13, i9 + i13, i12 + i13);
        }
    }

    private final void c(Context context) {
        this.l = context.getResources().getDimensionPixelSize(R.dimen.gears_space_extra);
        this.m = context.getResources().getDimensionPixelSize(R.dimen.gears_dot_size);
        ImageView imageView = new ImageView(context);
        imageView.setImageResource(R.drawable.gears__gear_handler);
        v vVar = v.f15822a;
        setGearDot(imageView);
        addView(getGearDot());
        this.c.setColor(Color.parseColor("#FF06162D"));
        this.c.setStyle(Paint.Style.STROKE);
        this.c.setStrokeWidth(context.getResources().getDimensionPixelSize(R.dimen.gears_empty_data_stroke_width));
        this.c.setAntiAlias(true);
        this.c.setPathEffect(new DashPathEffect(new float[]{10.0f, 10.0f}, BitmapDescriptorFactory.HUE_RED));
    }

    public final void d(String str) {
        this.f10090e = str;
        for (GearItemView gearItemView : this.f10088a) {
            gearItemView.setSelected(r.a(gearItemView.getDataItem().type, str));
            if (gearItemView.isSelected()) {
                bringChildToFront(gearItemView);
            }
        }
        bringChildToFront(getGearDot());
    }

    public final void e(String str, List<? extends GearsDataModel.GearsItemModel> list) {
        setBackgroundColor(Color.parseColor("#00000000"));
        Iterator<T> it = this.f10088a.iterator();
        while (it.hasNext()) {
            removeView((GearItemView) it.next());
        }
        this.f10088a.clear();
        a(list);
        if (list == null || list.isEmpty()) {
            postInvalidate();
            return;
        }
        View view = null;
        for (GearsDataModel.GearsItemModel gearsItemModel : list) {
            Context context = getContext();
            r.d(context, "context");
            GearItemView gearItemView = new GearItemView(context);
            gearItemView.k(str, gearsItemModel);
            gearItemView.setModifyCallback(new a(list, this));
            this.f10088a.add(gearItemView);
            if (r.a(gearsItemModel.type, "1挡") || r.a(gearsItemModel.type, "3挡") || r.a(gearsItemModel.type, "2挡") || r.a(gearsItemModel.type, "5挡")) {
                addView(gearItemView);
            }
            if (r.a(gearItemView.getDataItem().type, getF10090e())) {
                gearItemView.setSelected(true);
                view = gearItemView;
            }
        }
        bringChildToFront(view);
        bringChildToFront(getGearDot());
    }

    public final void f(int i, int i2) {
        this.j = i;
        this.k = i2;
        requestLayout();
    }

    /* JADX INFO: renamed from: getCurrentSelectGear, reason: from getter */
    public final String getF10090e() {
        return this.f10090e;
    }

    public final View getGearDot() {
        View view = this.b;
        if (view != null) {
            return view;
        }
        r.u("gearDot");
        throw null;
    }

    /* JADX INFO: renamed from: getModifyCallback, reason: from getter */
    public final ModifyCallback getF10089d() {
        return this.f10089d;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        r.e(canvas, "canvas");
        ArrayList<GearItemView> arrayList = this.f10088a;
        if (arrayList == null || arrayList.isEmpty()) {
            int i = this.l;
            canvas.drawRect(i, i, getWidth() - this.l, getHeight() - this.l, this.c);
        }
        super.onDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        int i = this.l;
        int i2 = left + i;
        int i3 = (right - left) - (i * 2);
        int i4 = top + i;
        int i5 = (bottom - top) - (i * 2);
        Iterator<T> it = this.f10088a.iterator();
        while (it.hasNext()) {
            b((GearItemView) it.next(), i2, i3, i4, i5);
        }
        int i6 = i2 + (((this.j - this.f10092g) * i3) / this.f10091f);
        int i7 = this.m;
        int i8 = i6 - (i7 / 2);
        int i9 = (i4 + (((this.k - this.i) * i5) / this.f10093h)) - (i7 / 2);
        View gearDot = getGearDot();
        int i10 = this.m;
        gearDot.layout(i8, i9, i8 + i10, i10 + i9);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int size = ((View.MeasureSpec.getSize(widthMeasureSpec) - getPaddingLeft()) - getPaddingRight()) - (this.l * 2);
        int size2 = ((View.MeasureSpec.getSize(heightMeasureSpec) - getPaddingTop()) - getPaddingBottom()) - (this.l * 2);
        for (GearItemView gearItemView : this.f10088a) {
            GearsDataModel.GearsItemModel dataItem = gearItemView.getDataItem();
            int i = ((dataItem.right - dataItem.left) * size) / this.f10091f;
            int i2 = ((dataItem.bottom - dataItem.top) * size2) / this.f10093h;
            if (r.a(dataItem.type, getF10090e())) {
                gearItemView.measure(View.MeasureSpec.makeMeasureSpec(i + (this.l * 2), 1073741824), View.MeasureSpec.makeMeasureSpec(i2 + (this.l * 2), 1073741824));
            } else {
                gearItemView.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
            }
        }
        getGearDot().measure(View.MeasureSpec.makeMeasureSpec(this.m, 1073741824), View.MeasureSpec.makeMeasureSpec(this.m, 1073741824));
        setMeasuredDimension(View.MeasureSpec.getSize(widthMeasureSpec), View.MeasureSpec.getSize(heightMeasureSpec));
    }

    public final void setCurrentSelectGear(String str) {
        this.f10090e = str;
    }

    public final void setGearDot(View view) {
        r.e(view, "<set-?>");
        this.b = view;
    }

    public final void setModifyCallback(ModifyCallback modifyCallback) {
        this.f10089d = modifyCallback;
    }
}
