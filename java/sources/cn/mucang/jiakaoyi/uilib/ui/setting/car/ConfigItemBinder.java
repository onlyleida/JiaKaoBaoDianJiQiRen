package cn.mucang.jiakaoyi.uilib.ui.setting.car;

import android.annotation.SuppressLint;
import android.graphics.Color;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.signal.car.CarItemModel;
import cn.mucang.android.jiakaoyi.signal.car.LocalCarModel;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.android.jiakaoyi.signal.center.model.GearType;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mucang.android.jiakaoyi.uilib.databinding.CarSelectListItemBinding;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.car.z, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002&'B'\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0002\u0010\nJ\u001e\u0010 \u001a\u00020\t2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00030\"2\u0006\u0010#\u001a\u00020\u0002H\u0002J\u001e\u0010$\u001a\u00020\t2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00030\"2\u0006\u0010#\u001a\u00020\u0002H\u0017J\u0016\u0010%\u001a\u00020\t2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00030\"H\u0016R\u001d\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\b¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082D¢\u0006\u0002\n\u0000R2\u0010\u0013\u001a&\u0012\u0004\u0012\u00020\u0015\u0012\b\u0012\u00060\u0016R\u00020\u00000\u0014j\u0012\u0012\u0004\u0012\u00020\u0015\u0012\b\u0012\u00060\u0016R\u00020\u0000`\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u001b¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR2\u0010\u001e\u001a&\u0012\u0004\u0012\u00020\u0015\u0012\b\u0012\u00060\u001fR\u00020\u00000\u0014j\u0012\u0012\u0004\u0012\u00020\u0015\u0012\b\u0012\u00060\u001fR\u00020\u0000`\u0017X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/car/ConfigItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/CarSelectListItemBinding;", "showDelay", "Lkotlin/Function0;", "", "changeConfig", "Lkotlin/Function1;", "", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V", "getChangeConfig", "()Lkotlin/jvm/functions/Function1;", "colorSpan", "Landroid/text/style/ForegroundColorSpan;", "getColorSpan", "()Landroid/text/style/ForegroundColorSpan;", "hintText", "", "rpmListenerMap", "Ljava/util/HashMap;", "Landroid/widget/EditText;", "Lcn/mucang/jiakaoyi/uilib/ui/setting/car/ConfigItemBinder$RpmTextWatcher;", "Lkotlin/collections/HashMap;", "getShowDelay", "()Lkotlin/jvm/functions/Function0;", "spannableString", "Landroid/text/SpannableString;", "getSpannableString", "()Landroid/text/SpannableString;", "speedListenerMap", "Lcn/mucang/jiakaoyi/uilib/ui/setting/car/ConfigItemBinder$SpeedTextWatcher;", "initListener", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "onBindViewHolder", "onViewRecycled", "RpmTextWatcher", "SpeedTextWatcher", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ConfigItemBinder extends ViewBindingBinder<CarItemModel, CarSelectListItemBinding> {
    private final Function0<Boolean> b;
    private final Function1<CarItemModel, kotlin.v> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashMap<EditText, b> f9943d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashMap<EditText, a> f9944e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f9945f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final SpannableString f9946g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ForegroundColorSpan f9947h;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.car.z$a */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J*\u0010\r\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0016J*\u0010\u0013\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0015"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/car/ConfigItemBinder$RpmTextWatcher;", "Landroid/text/TextWatcher;", "(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/ConfigItemBinder;)V", "item", "Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;", "getItem", "()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;", "setItem", "(Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;)V", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    private final class a implements TextWatcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private CarItemModel f9948a;

        public a(ConfigItemBinder this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
        }

        public final void a(CarItemModel carItemModel) {
            this.f9948a = carItemModel;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            try {
                CarItemModel carItemModel = this.f9948a;
                if (carItemModel == null) {
                    return;
                }
                carItemModel.setRpmScale(Float.parseFloat(String.valueOf(s)));
            } catch (Exception unused) {
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.car.z$b */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J*\u0010\r\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0016J*\u0010\u0013\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0015"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/car/ConfigItemBinder$SpeedTextWatcher;", "Landroid/text/TextWatcher;", "(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/ConfigItemBinder;)V", "item", "Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;", "getItem", "()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;", "setItem", "(Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;)V", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    private final class b implements TextWatcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private CarItemModel f9949a;

        public b(ConfigItemBinder this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
        }

        public final void a(CarItemModel carItemModel) {
            this.f9949a = carItemModel;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            try {
                CarItemModel carItemModel = this.f9949a;
                if (carItemModel == null) {
                    return;
                }
                carItemModel.setSpeedScale(Float.parseFloat(String.valueOf(s)));
            } catch (Exception unused) {
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ConfigItemBinder(Function0<Boolean> showDelay, Function1<? super CarItemModel, kotlin.v> changeConfig) {
        kotlin.jvm.internal.r.e(showDelay, "showDelay");
        kotlin.jvm.internal.r.e(changeConfig, "changeConfig");
        this.b = showDelay;
        this.c = changeConfig;
        this.f9943d = new HashMap<>();
        this.f9944e = new HashMap<>();
        this.f9945f = "如果路考仪显示的速度或转速与车辆实际情况不一致，请输入一个系数：系数=实际数值÷路考仪数值";
        this.f9946g = new SpannableString("如果路考仪显示的速度或转速与车辆实际情况不一致，请输入一个系数：系数=实际数值÷路考仪数值");
        this.f9947h = new ForegroundColorSpan(Color.parseColor("#FF4A40"));
    }

    private final void o(ViewBindingHolder<CarSelectListItemBinding> viewBindingHolder, CarItemModel carItemModel) {
        EditText editText = ((CarSelectListItemBinding) viewBindingHolder.getViewBinding()).etSpeed;
        kotlin.jvm.internal.r.d(editText, "holder.viewBinding.etSpeed");
        b bVar = this.f9943d.get(editText);
        if (bVar == null) {
            bVar = new b(this);
            editText.addTextChangedListener(bVar);
            this.f9943d.put(editText, bVar);
        }
        bVar.a(carItemModel);
        EditText editText2 = ((CarSelectListItemBinding) viewBindingHolder.getViewBinding()).etRpm;
        kotlin.jvm.internal.r.d(editText2, "holder.viewBinding.etRpm");
        a aVar = this.f9944e.get(editText2);
        if (aVar == null) {
            aVar = new a(this);
            editText2.addTextChangedListener(aVar);
            this.f9944e.put(editText2, aVar);
        }
        aVar.a(carItemModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(CarItemModel item, ViewBindingHolder holder, View view) {
        kotlin.jvm.internal.r.e(item, "$item");
        kotlin.jvm.internal.r.e(holder, "$holder");
        item.setSignalDelay(!item.getSignalDelay());
        ((CarSelectListItemBinding) holder.getViewBinding()).tvDelayEnable.setSelected(item.getSignalDelay());
        LocalCarModel localCarModelB = SelectCarManager.b();
        if ((localCarModelB == null ? null : localCarModelB.getConfig()) != null) {
            CarItemModel config = localCarModelB.getConfig();
            kotlin.jvm.internal.r.c(config);
            if (config.getCode() == item.getCode()) {
                CarItemModel config2 = localCarModelB.getConfig();
                if (config2 != null) {
                    config2.setSignalDelay(item.getSignalDelay());
                }
                SelectCarManager.i(localCarModelB);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(ConfigItemBinder this$0, CarItemModel item, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(item, "$item");
        this$0.n().invoke(item);
    }

    public final Function1<CarItemModel, kotlin.v> n() {
        return this.c;
    }

    @Override // com.drakeet.multitype.c
    @SuppressLint({"SetTextI18n"})
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<CarSelectListItemBinding> holder, final CarItemModel item) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        TextView textView = ((CarSelectListItemBinding) holder.getViewBinding()).nameTv;
        StringBuilder sb = new StringBuilder();
        sb.append((Object) item.getGearConfig());
        sb.append(' ');
        sb.append((Object) GearType.parse(item.getGearType()).gearName);
        textView.setText(sb.toString());
        ((CarSelectListItemBinding) holder.getViewBinding()).selectedIv.setSelected(item.getIsSelect());
        ((CarSelectListItemBinding) holder.getViewBinding()).clSpeedSetting.setVisibility((item.getIsSelect() && (AppUtils.g() || AppUtils.i())) ? 0 : 8);
        ((CarSelectListItemBinding) holder.getViewBinding()).etSpeed.setText(String.valueOf(item.getSpeedScale()));
        ((CarSelectListItemBinding) holder.getViewBinding()).etRpm.setText(String.valueOf(item.getRpmScale()));
        ((CarSelectListItemBinding) holder.getViewBinding()).tvDelayEnable.setSelected(item.getSignalDelay());
        LocalCarModel localCarModelB = SelectCarManager.b();
        if ((localCarModelB == null ? null : localCarModelB.getConfig()) != null) {
            CarItemModel config = localCarModelB.getConfig();
            kotlin.jvm.internal.r.c(config);
            if (config.getCode() == item.getCode()) {
                CarItemModel config2 = localCarModelB.getConfig();
                if (config2 != null) {
                    config2.setSignalDelay(item.getSignalDelay());
                }
                SelectCarManager.i(localCarModelB);
            }
        }
        if (this.b.invoke().booleanValue()) {
            ((CarSelectListItemBinding) holder.getViewBinding()).tvDelayEnable.setVisibility(0);
        } else {
            ((CarSelectListItemBinding) holder.getViewBinding()).tvDelayEnable.setVisibility(8);
        }
        ((CarSelectListItemBinding) holder.getViewBinding()).tvDelayEnable.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConfigItemBinder.s(item, holder, view);
            }
        });
        this.f9946g.setSpan(this.f9947h, 32, this.f9945f.length(), 18);
        ((CarSelectListItemBinding) holder.getViewBinding()).tvDesc.setText(this.f9946g);
        o(holder, item);
        ((CarSelectListItemBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConfigItemBinder.t(this.f9932a, item, view);
            }
        });
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public void i(ViewBindingHolder<CarSelectListItemBinding> holder) {
        kotlin.jvm.internal.r.e(holder, "holder");
        super.i(holder);
        b bVarRemove = this.f9943d.remove(((CarSelectListItemBinding) holder.getViewBinding()).etSpeed);
        if (bVarRemove != null) {
            ((CarSelectListItemBinding) holder.getViewBinding()).etSpeed.removeTextChangedListener(bVarRemove);
        }
        a aVarRemove = this.f9944e.remove(((CarSelectListItemBinding) holder.getViewBinding()).etRpm);
        if (aVarRemove == null) {
            return;
        }
        ((CarSelectListItemBinding) holder.getViewBinding()).etRpm.removeTextChangedListener(aVarRemove);
    }
}
