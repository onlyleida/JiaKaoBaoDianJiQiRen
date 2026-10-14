package cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.view;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import cn.mucang.android.core.utils.u;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.model.GearsDataModel;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.utils.GearsUtils;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.GearsGearSchetchItemBinding;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.view.i, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J&\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\r2\u0006\u0010)\u001a\u00020\r2\u0006\u0010*\u001a\u00020\r2\u0006\u0010+\u001a\u00020'J\u0010\u0010,\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0018\u0010.\u001a\u00020-2\u0006\u0010/\u001a\u00020\r2\u0006\u00100\u001a\u00020\rH\u0014J\u0018\u00101\u001a\u00020-2\b\u00102\u001a\u0004\u0018\u00010\t2\u0006\u00103\u001a\u00020\u0019J\u0010\u00104\u001a\u00020-2\u0006\u00105\u001a\u00020'H\u0016R\u0014\u0010\b\u001a\u00020\tX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001e\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0019@BX\u0086.¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u000f\"\u0004\b\u001f\u0010\u0011R\u001c\u0010 \u001a\u0004\u0018\u00010!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u00066"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "TAG", "", "getTAG", "()Ljava/lang/String;", "bigHandlerSize", "", "getBigHandlerSize", "()I", "setBigHandlerSize", "(I)V", "binding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;", "getBinding", "()Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;", "setBinding", "(Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;)V", "<set-?>", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;", "dataItem", "getDataItem", "()Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;", "defaultHandlerSize", "getDefaultHandlerSize", "setDefaultHandlerSize", "modifyCallback", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/ModifyCallback;", "getModifyCallback", "()Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/ModifyCallback;", "setModifyCallback", "(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/ModifyCallback;)V", "checkCanAdjust", "", "current", "min", "max", "adjustSmall", "initView", "", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "setGearData", "gearCategory", DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, "setSelected", "selected", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GearItemView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f10103a;
    public GearsGearSchetchItemBinding b;
    private GearsDataModel.GearsItemModel c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ModifyCallback f10104d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f10105e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f10106f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GearItemView(Context context) {
        super(context);
        r.e(context, "context");
        this.f10103a = "GearItemView";
        b(context);
    }

    private final void b(Context context) {
        this.f10105e = context.getResources().getDimensionPixelSize(R.dimen.gears_handle_size);
        this.f10106f = context.getResources().getDimensionPixelSize(R.dimen.gears_handle_cross_size);
        GearsGearSchetchItemBinding gearsGearSchetchItemBindingInflate = GearsGearSchetchItemBinding.inflate(LayoutInflater.from(context), this, false);
        r.d(gearsGearSchetchItemBindingInflate, "inflate(LayoutInflater.from(context), this, false)");
        setBinding(gearsGearSchetchItemBindingInflate);
        addView(getBinding().getRoot(), new FrameLayout.LayoutParams(-1, -1));
        setSelected(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(GearItemView this$0, View view) {
        r.e(this$0, "this$0");
        if (this$0.a(this$0.getDataItem().left, this$0.getDataItem().rangeModel.minLeft, this$0.getDataItem().rangeModel.maxLeft, true)) {
            this$0.getDataItem().left--;
            ModifyCallback f10104d = this$0.getF10104d();
            if (f10104d == null) {
                return;
            }
            f10104d.a(this$0.getDataItem());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(GearItemView this$0, View view) {
        r.e(this$0, "this$0");
        if (this$0.a(this$0.getDataItem().left, this$0.getDataItem().rangeModel.minLeft, this$0.getDataItem().rangeModel.maxLeft, false)) {
            this$0.getDataItem().left++;
            ModifyCallback f10104d = this$0.getF10104d();
            if (f10104d == null) {
                return;
            }
            f10104d.a(this$0.getDataItem());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(GearItemView this$0, View view) {
        r.e(this$0, "this$0");
        if (this$0.a(this$0.getDataItem().right, this$0.getDataItem().rangeModel.minRight, this$0.getDataItem().rangeModel.maxRight, false)) {
            this$0.getDataItem().right++;
            ModifyCallback f10104d = this$0.getF10104d();
            if (f10104d == null) {
                return;
            }
            f10104d.a(this$0.getDataItem());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(GearItemView this$0, View view) {
        r.e(this$0, "this$0");
        if (this$0.a(this$0.getDataItem().right, this$0.getDataItem().rangeModel.minRight, this$0.getDataItem().rangeModel.maxRight, true)) {
            this$0.getDataItem().right--;
            ModifyCallback f10104d = this$0.getF10104d();
            if (f10104d == null) {
                return;
            }
            f10104d.a(this$0.getDataItem());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(GearItemView this$0, View view) {
        r.e(this$0, "this$0");
        if (this$0.a(this$0.getDataItem().top, this$0.getDataItem().rangeModel.minTop, this$0.getDataItem().rangeModel.maxTop, true)) {
            this$0.getDataItem().top--;
            ModifyCallback f10104d = this$0.getF10104d();
            if (f10104d == null) {
                return;
            }
            f10104d.a(this$0.getDataItem());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(GearItemView this$0, View view) {
        r.e(this$0, "this$0");
        if (this$0.a(this$0.getDataItem().top, this$0.getDataItem().rangeModel.minTop, this$0.getDataItem().rangeModel.maxTop, false)) {
            this$0.getDataItem().top++;
            ModifyCallback f10104d = this$0.getF10104d();
            if (f10104d == null) {
                return;
            }
            f10104d.a(this$0.getDataItem());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(GearItemView this$0, View view) {
        r.e(this$0, "this$0");
        if (this$0.a(this$0.getDataItem().bottom, this$0.getDataItem().rangeModel.minBottom, this$0.getDataItem().rangeModel.maxBottom, false)) {
            this$0.getDataItem().bottom++;
            ModifyCallback f10104d = this$0.getF10104d();
            if (f10104d == null) {
                return;
            }
            f10104d.a(this$0.getDataItem());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(GearItemView this$0, View view) {
        r.e(this$0, "this$0");
        if (this$0.a(this$0.getDataItem().bottom, this$0.getDataItem().rangeModel.minBottom, this$0.getDataItem().rangeModel.maxBottom, true)) {
            this$0.getDataItem().bottom--;
            ModifyCallback f10104d = this$0.getF10104d();
            if (f10104d == null) {
                return;
            }
            f10104d.a(this$0.getDataItem());
        }
    }

    public final boolean a(int i, int i2, int i3, boolean z) {
        if (z) {
            if (i > i2) {
                return true;
            }
            u.h("已到边界，无法继续调整！");
            return false;
        }
        if (i < i3) {
            return true;
        }
        u.h("已到边界，无法继续调整！");
        return false;
    }

    /* JADX INFO: renamed from: getBigHandlerSize, reason: from getter */
    public final int getF10106f() {
        return this.f10106f;
    }

    public final GearsGearSchetchItemBinding getBinding() {
        GearsGearSchetchItemBinding gearsGearSchetchItemBinding = this.b;
        if (gearsGearSchetchItemBinding != null) {
            return gearsGearSchetchItemBinding;
        }
        r.u("binding");
        throw null;
    }

    public final GearsDataModel.GearsItemModel getDataItem() {
        GearsDataModel.GearsItemModel gearsItemModel = this.c;
        if (gearsItemModel != null) {
            return gearsItemModel;
        }
        r.u("dataItem");
        throw null;
    }

    /* JADX INFO: renamed from: getDefaultHandlerSize, reason: from getter */
    public final int getF10105e() {
        return this.f10105e;
    }

    /* JADX INFO: renamed from: getModifyCallback, reason: from getter */
    public final ModifyCallback getF10104d() {
        return this.f10104d;
    }

    /* JADX INFO: renamed from: getTAG, reason: from getter */
    public final String getF10103a() {
        return this.f10103a;
    }

    public final void k(String str, GearsDataModel.GearsItemModel content) {
        r.e(content, "content");
        this.c = content;
        String strB = GearsUtils.f10057a.b(str, content.type);
        getBinding().itemContent.setText(strB);
        getBinding().itemContentDefault.setText(strB);
        getBinding().leftOuterBtn.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.view.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GearItemView.l(this.f10099a, view);
            }
        });
        getBinding().leftInnerBtn.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.view.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GearItemView.m(this.f10101a, view);
            }
        });
        getBinding().rightOuterBtn.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.view.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GearItemView.n(this.f10100a, view);
            }
        });
        getBinding().rightInnerBtn.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.view.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GearItemView.o(this.f10098a, view);
            }
        });
        getBinding().topOuterBtn.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.view.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GearItemView.p(this.f10102a, view);
            }
        });
        getBinding().topInnerBtn.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.view.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GearItemView.q(this.f10096a, view);
            }
        });
        getBinding().bottomOuterBtn.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.view.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GearItemView.r(this.f10097a, view);
            }
        });
        getBinding().bottomInnerBtn.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.view.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GearItemView.s(this.f10095a, view);
            }
        });
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int size = View.MeasureSpec.getSize(heightMeasureSpec);
        int size2 = View.MeasureSpec.getSize(widthMeasureSpec);
        int i = this.f10105e;
        int iMin = Math.min((size - (i * 2)) / 2, i);
        int i2 = this.f10105e;
        int iMin2 = Math.min((size2 - (i2 * 2)) / 2, i2);
        for (GearItemHandleView gearItemHandleView : kotlin.collections.u.m(getBinding().bottomInnerBtn, getBinding().topInnerBtn, getBinding().leftInnerBtn, getBinding().rightInnerBtn)) {
            gearItemHandleView.setHandlerH(iMin);
            gearItemHandleView.setHandlerW(iMin2);
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    public final void setBigHandlerSize(int i) {
        this.f10106f = i;
    }

    public final void setBinding(GearsGearSchetchItemBinding gearsGearSchetchItemBinding) {
        r.e(gearsGearSchetchItemBinding, "<set-?>");
        this.b = gearsGearSchetchItemBinding;
    }

    public final void setDefaultHandlerSize(int i) {
        this.f10105e = i;
    }

    public final void setModifyCallback(ModifyCallback modifyCallback) {
        this.f10104d = modifyCallback;
    }

    @Override // android.view.View
    public void setSelected(boolean selected) {
        super.setSelected(selected);
        int childCount = getBinding().getRoot().getChildCount();
        if (childCount <= 0) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (selected) {
                if (r.a(getBinding().getRoot().getChildAt(i), getBinding().itemContentDefault)) {
                    getBinding().getRoot().getChildAt(i).setVisibility(8);
                } else {
                    getBinding().getRoot().getChildAt(i).setVisibility(0);
                }
            } else if (r.a(getBinding().getRoot().getChildAt(i), getBinding().itemContentDefault)) {
                getBinding().getRoot().getChildAt(i).setVisibility(0);
            } else {
                getBinding().getRoot().getChildAt(i).setVisibility(8);
            }
            if (i2 >= childCount) {
                return;
            } else {
                i = i2;
            }
        }
    }
}
