package cn.mucang.android.jiakaoyi.k3collect.ui;

import android.R;
import android.app.Activity;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.k3collect.databinding.K3ItemMultilaneCollectBinding;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.collections.u;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.ui.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001+B\u001f\u0012\u0018\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\u0010\bJ(\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0002H\u0002J\u001e\u0010\u001c\u001a\u00020\u00072\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00030\u001e2\u0006\u0010\u001b\u001a\u00020\u0002H\u0002J \u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0\nH\u0002J\u001e\u0010$\u001a\u00020\u00072\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00030\u001e2\u0006\u0010\u001b\u001a\u00020\u0002H\u0016J\u0016\u0010%\u001a\u00020\u00072\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00030\u001eH\u0016J\u001e\u0010&\u001a\u00020\u00072\u0006\u0010'\u001a\u00020\u00062\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00030\u001eH\u0002J\u0016\u0010(\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\u00032\u0006\u0010*\u001a\u00020 R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR#\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR2\u0010\u0010\u001a&\u0012\u0004\u0012\u00020\u0012\u0012\b\u0012\u00060\u0013R\u00020\u00000\u0011j\u0012\u0012\u0004\u0012\u00020\u0012\u0012\b\u0012\u00060\u0013R\u00020\u0000`\u0014X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/k3collect/model/MultilaneCollectItem;", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemMultilaneCollectBinding;", "deleteCallback", "Lkotlin/Function2;", "", "", "(Lkotlin/jvm/functions/Function2;)V", "data", "", "", "getData", "()Ljava/util/List;", "getDeleteCallback", "()Lkotlin/jvm/functions/Function2;", "listenerMap", "Ljava/util/HashMap;", "Landroid/widget/EditText;", "Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectItemBinder$MyTextWatcher;", "Lkotlin/collections/HashMap;", "handleClick", "textView", "Landroid/widget/TextView;", "index", "activity", "Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectActivity;", "item", "initListener", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "isValidDistancePoint", "", TtmlNode.START, "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;", "gpsList", "onBindViewHolder", "onViewRecycled", "showCollectButton", "position", "showShuangHuangLine", "viewBinding", "show", "MyTextWatcher", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MultilaneCollectItemBinder extends ViewBindingBinder<cn.mucang.android.jiakaoyi.k3collect.i0.a, K3ItemMultilaneCollectBinding> {
    private final Function2<Integer, cn.mucang.android.jiakaoyi.k3collect.i0.a, v> b;
    private final List<String> c;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.ui.g$a */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J*\u0010\r\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0016J*\u0010\u0013\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0015"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectItemBinder$MyTextWatcher;", "Landroid/text/TextWatcher;", "(Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectItemBinder;)V", "item", "Lcn/mucang/android/jiakaoyi/k3collect/model/MultilaneCollectItem;", "getItem", "()Lcn/mucang/android/jiakaoyi/k3collect/model/MultilaneCollectItem;", "setItem", "(Lcn/mucang/android/jiakaoyi/k3collect/model/MultilaneCollectItem;)V", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    private final class a implements TextWatcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private cn.mucang.android.jiakaoyi.k3collect.i0.a f4175a;

        public a(MultilaneCollectItemBinder this$0) {
            r.e(this$0, "this$0");
        }

        public final void a(cn.mucang.android.jiakaoyi.k3collect.i0.a aVar) {
            this.f4175a = aVar;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            int i;
            try {
                i = Integer.parseInt(String.valueOf(s));
            } catch (Exception unused) {
                i = -1;
            }
            cn.mucang.android.jiakaoyi.k3collect.i0.a aVar = this.f4175a;
            if (aVar == null) {
                return;
            }
            aVar.f(i);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.ui.g$b */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectItemBinder$onBindViewHolder$1$1", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "onGlobalLayout", "", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ K3ItemMultilaneCollectBinding f4176a;

        b(K3ItemMultilaneCollectBinding k3ItemMultilaneCollectBinding) {
            this.f4176a = k3ItemMultilaneCollectBinding;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            Spinner spinner = this.f4176a.spLineType;
            spinner.setDropDownVerticalOffset(spinner.getMeasuredHeight());
            this.f4176a.spLineType.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.ui.g$c */
    @Metadata(d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\f\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005H\u0016¨\u0006\r"}, d2 = {"cn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectItemBinder$onBindViewHolder$1$2", "Landroid/widget/AdapterView$OnItemSelectedListener;", "onItemSelected", "", "parent", "Landroid/widget/AdapterView;", "view", "Landroid/view/View;", "position", "", TtmlNode.ATTR_ID, "", "onNothingSelected", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c implements AdapterView.OnItemSelectedListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ cn.mucang.android.jiakaoyi.k3collect.i0.a f4177a;
        final /* synthetic */ K3ItemMultilaneCollectBinding b;
        final /* synthetic */ MultilaneCollectItemBinder c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ViewBindingHolder<K3ItemMultilaneCollectBinding> f4178d;

        c(cn.mucang.android.jiakaoyi.k3collect.i0.a aVar, K3ItemMultilaneCollectBinding k3ItemMultilaneCollectBinding, MultilaneCollectItemBinder multilaneCollectItemBinder, ViewBindingHolder<K3ItemMultilaneCollectBinding> viewBindingHolder) {
            this.f4177a = aVar;
            this.b = k3ItemMultilaneCollectBinding;
            this.c = multilaneCollectItemBinder;
            this.f4178d = viewBindingHolder;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
            this.f4177a.e(position);
            this.b.etLineWidth.setText(String.valueOf(this.f4177a.d()));
            this.c.A(position, this.f4178d);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> parent) {
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.ui.g$d */
    @Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"cn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectItemBinder$onBindViewHolder$adapter$1", "Landroid/widget/ArrayAdapter;", "", "getDropDownView", "Landroid/view/View;", "position", "", "convertView", "parent", "Landroid/view/ViewGroup;", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d extends ArrayAdapter<String> {
        d(MultilaneCollectActivity multilaneCollectActivity, List<String> list) {
            super(multilaneCollectActivity, R.layout.simple_spinner_item, list);
        }

        @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
        public View getDropDownView(int position, View convertView, ViewGroup parent) {
            r.e(parent, "parent");
            if (convertView == null) {
                convertView = LayoutInflater.from(getContext()).inflate(cn.mucang.android.jiakaoyi.k3collect.R.layout.k3_common_spinner_dropdown_item, parent, false);
            }
            ((TextView) convertView.findViewById(cn.mucang.android.jiakaoyi.k3collect.R.id.text)).setText(MultilaneCollectItemBinder.this.o().get(position));
            r.d(convertView, "view");
            return convertView;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MultilaneCollectItemBinder(Function2<? super Integer, ? super cn.mucang.android.jiakaoyi.k3collect.i0.a, v> deleteCallback) {
        r.e(deleteCallback, "deleteCallback");
        this.b = deleteCallback;
        this.c = u.m("虚线", "实线", "双黄实线");
        new HashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A(int i, ViewBindingHolder<K3ItemMultilaneCollectBinding> viewBindingHolder) {
        if (i == 2) {
            ((K3ItemMultilaneCollectBinding) viewBindingHolder.getViewBinding()).etLineWidth.setEnabled(false);
            B((K3ItemMultilaneCollectBinding) viewBindingHolder.getViewBinding(), true);
        } else {
            ((K3ItemMultilaneCollectBinding) viewBindingHolder.getViewBinding()).etLineWidth.setEnabled(true);
            B((K3ItemMultilaneCollectBinding) viewBindingHolder.getViewBinding(), false);
        }
    }

    private final void q(TextView textView, int i, MultilaneCollectActivity multilaneCollectActivity, cn.mucang.android.jiakaoyi.k3collect.i0.a aVar) {
        Gps gpsK = multilaneCollectActivity.k();
        if (gpsK == null) {
            return;
        }
        if (i == 0) {
            aVar.a().add(gpsK);
        } else if (i == 1) {
            aVar.b().add(gpsK);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(gpsK.latitude);
        sb.append(';');
        sb.append(gpsK.longitude);
        textView.setText(sb.toString());
    }

    private final boolean r(Gps gps, List<? extends Gps> list) {
        if (list.isEmpty()) {
            return true;
        }
        Gps gps2 = (Gps) s.o0(list);
        if (gps != null) {
            double dDistanceTo = gps.distanceTo(gps2);
            if (dDistanceTo < 1.0d) {
                cn.mucang.android.core.utils.u.h("采集点距离太短");
                TtsManager.r("采集点距离太短", TtsGrade.SpecialVoice);
                return false;
            }
            if (dDistanceTo > 50.0d) {
                cn.mucang.android.core.utils.u.h("采集距离大于50,不能采集");
                TtsManager.r("采集距离大于50,不能采集", TtsGrade.SpecialVoice);
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(MultilaneCollectItemBinder this$0, MultilaneCollectActivity activity, cn.mucang.android.jiakaoyi.k3collect.i0.a item, K3ItemMultilaneCollectBinding this_apply, View view) {
        r.e(this$0, "this$0");
        r.e(activity, "$activity");
        r.e(item, "$item");
        r.e(this_apply, "$this_apply");
        Gps gpsK = activity.k();
        List<Gps> listA = item.a();
        r.d(listA, "item.gpsList1");
        if (this$0.r(gpsK, listA)) {
            TextView tvValue1 = this_apply.tvValue1;
            r.d(tvValue1, "tvValue1");
            this$0.q(tvValue1, 0, activity, item);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(MultilaneCollectItemBinder this$0, MultilaneCollectActivity activity, cn.mucang.android.jiakaoyi.k3collect.i0.a item, K3ItemMultilaneCollectBinding this_apply, View view) {
        r.e(this$0, "this$0");
        r.e(activity, "$activity");
        r.e(item, "$item");
        r.e(this_apply, "$this_apply");
        Gps gpsK = activity.k();
        List<Gps> listB = item.b();
        r.d(listB, "item.gpsList2");
        if (this$0.r(gpsK, listB)) {
            TextView tvValue2 = this_apply.tvValue2;
            r.d(tvValue2, "tvValue2");
            this$0.q(tvValue2, 1, activity, item);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(MultilaneCollectItemBinder this$0, ViewBindingHolder holder, cn.mucang.android.jiakaoyi.k3collect.i0.a item, View view) {
        r.e(this$0, "this$0");
        r.e(holder, "$holder");
        r.e(item, "$item");
        this$0.p().invoke(Integer.valueOf(holder.getAdapterPosition()), item);
    }

    public final void B(K3ItemMultilaneCollectBinding viewBinding, boolean z) {
        r.e(viewBinding, "viewBinding");
        viewBinding.groupCollect1.setVisibility(0);
        viewBinding.groupCollect2.setVisibility(z ? 0 : 8);
    }

    public final List<String> o() {
        return this.c;
    }

    public final Function2<Integer, cn.mucang.android.jiakaoyi.k3collect.i0.a, v> p() {
        return this.b;
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public void c(final ViewBindingHolder<K3ItemMultilaneCollectBinding> holder, final cn.mucang.android.jiakaoyi.k3collect.i0.a item) {
        String string;
        r.e(holder, "holder");
        r.e(item, "item");
        Activity activityA = ActivityUtils.a(((K3ItemMultilaneCollectBinding) holder.getViewBinding()).getRoot().getContext());
        Objects.requireNonNull(activityA, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.k3collect.ui.MultilaneCollectActivity");
        final MultilaneCollectActivity multilaneCollectActivity = (MultilaneCollectActivity) activityA;
        d dVar = new d(multilaneCollectActivity, this.c);
        final K3ItemMultilaneCollectBinding k3ItemMultilaneCollectBinding = (K3ItemMultilaneCollectBinding) holder.getViewBinding();
        dVar.setDropDownViewResource(cn.mucang.android.jiakaoyi.k3collect.R.layout.k3_common_spinner_dropdown_item);
        k3ItemMultilaneCollectBinding.spLineType.setAdapter((SpinnerAdapter) dVar);
        k3ItemMultilaneCollectBinding.spLineType.getViewTreeObserver().addOnGlobalLayoutListener(new b(k3ItemMultilaneCollectBinding));
        k3ItemMultilaneCollectBinding.spLineType.setOnItemSelectedListener(new c(item, k3ItemMultilaneCollectBinding, this, holder));
        k3ItemMultilaneCollectBinding.tvCollectStart.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.ui.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MultilaneCollectItemBinder.w(this.f4170a, multilaneCollectActivity, item, k3ItemMultilaneCollectBinding, view);
            }
        });
        k3ItemMultilaneCollectBinding.tvCollectStart1.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.ui.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MultilaneCollectItemBinder.x(this.f4172a, multilaneCollectActivity, item, k3ItemMultilaneCollectBinding, view);
            }
        });
        k3ItemMultilaneCollectBinding.tvDelete.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.ui.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MultilaneCollectItemBinder.y(this.f4174a, holder, item, view);
            }
        });
        int iC = item.c();
        k3ItemMultilaneCollectBinding.spLineType.setSelection(iC);
        A(iC, holder);
        TextView textView = ((K3ItemMultilaneCollectBinding) holder.getViewBinding()).tvValue1;
        String string2 = "";
        if (item.a().isEmpty()) {
            string = "";
        } else {
            StringBuilder sb = new StringBuilder();
            List<Gps> listA = item.a();
            r.d(listA, "item.gpsList1");
            Gps gps = (Gps) s.o0(listA);
            sb.append(gps == null ? null : Double.valueOf(gps.latitude));
            sb.append(';');
            List<Gps> listA2 = item.a();
            r.d(listA2, "item.gpsList1");
            Gps gps2 = (Gps) s.o0(listA2);
            sb.append(gps2 == null ? null : Double.valueOf(gps2.longitude));
            sb.append(';');
            sb.append(item.a().size());
            string = sb.toString();
        }
        textView.setText(string);
        TextView textView2 = ((K3ItemMultilaneCollectBinding) holder.getViewBinding()).tvValue2;
        if (!item.b().isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            List<Gps> listB = item.b();
            r.d(listB, "item.gpsList2");
            Gps gps3 = (Gps) s.o0(listB);
            sb2.append(gps3 == null ? null : Double.valueOf(gps3.latitude));
            sb2.append(';');
            List<Gps> listB2 = item.b();
            r.d(listB2, "item.gpsList2");
            Gps gps4 = (Gps) s.o0(listB2);
            sb2.append(gps4 == null ? null : Double.valueOf(gps4.longitude));
            sb2.append(';');
            sb2.append(item.b().size());
            string2 = sb2.toString();
        }
        textView2.setText(string2);
        a aVar = new a(this);
        aVar.a(item);
        t.a("dsh", "adapterPosition " + holder.getAdapterPosition() + " width " + item.d());
        EditText editText = ((K3ItemMultilaneCollectBinding) holder.getViewBinding()).etLineWidth;
        Object tag = ((K3ItemMultilaneCollectBinding) holder.getViewBinding()).etLineWidth.getTag();
        editText.removeTextChangedListener(tag instanceof a ? (a) tag : null);
        ((K3ItemMultilaneCollectBinding) holder.getViewBinding()).etLineWidth.setText(String.valueOf(item.d()));
        ((K3ItemMultilaneCollectBinding) holder.getViewBinding()).etLineWidth.addTextChangedListener(aVar);
        ((K3ItemMultilaneCollectBinding) holder.getViewBinding()).etLineWidth.setTag(aVar);
    }

    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void i(ViewBindingHolder<K3ItemMultilaneCollectBinding> holder) {
        r.e(holder, "holder");
        super.i(holder);
        EditText editText = ((K3ItemMultilaneCollectBinding) holder.getViewBinding()).etLineWidth;
        Object tag = ((K3ItemMultilaneCollectBinding) holder.getViewBinding()).etLineWidth.getTag();
        editText.removeTextChangedListener(tag instanceof a ? (a) tag : null);
    }
}
