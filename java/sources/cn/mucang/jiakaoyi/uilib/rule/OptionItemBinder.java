package cn.mucang.jiakaoyi.uilib.rule;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.jiakaoyi.engine.config.route.value.OptionsValue;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.jiakaoyi.uilib.rule.dialog.DeductRuleDialogHelper;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.RuleSettingItemOptionBinding;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.f0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B!\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0002\u0010\tJ\u001e\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0011"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/OptionItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingItemOptionBinding;", "supportFragmentManager", "Landroidx/fragment/app/FragmentManager;", "hideCheckDeducts", "", "isEdit", "(Landroidx/fragment/app/FragmentManager;ZZ)V", "getSupportFragmentManager", "()Landroidx/fragment/app/FragmentManager;", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class OptionItemBinder extends ViewBindingBinder<OptionsValue, RuleSettingItemOptionBinding> {
    private final FragmentManager b;
    private final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f9538d;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.f0$a */
    @Metadata(d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\f\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005H\u0016¨\u0006\r"}, d2 = {"cn/mucang/jiakaoyi/uilib/rule/OptionItemBinder$onBindViewHolder$1", "Landroid/widget/AdapterView$OnItemSelectedListener;", "onItemSelected", "", "parent", "Landroid/widget/AdapterView;", "view", "Landroid/view/View;", "position", "", TtmlNode.ATTR_ID, "", "onNothingSelected", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements AdapterView.OnItemSelectedListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ OptionsValue f9539a;

        a(OptionsValue optionsValue) {
            this.f9539a = optionsValue;
        }

        /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.Integer] */
        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
            this.f9539a.value = Integer.valueOf(position);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> parent) {
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.f0$b */
    @Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"cn/mucang/jiakaoyi/uilib/rule/OptionItemBinder$onBindViewHolder$adapter$1", "Landroid/widget/ArrayAdapter;", "", "getDropDownView", "Landroid/view/View;", "position", "", "convertView", "parent", "Landroid/view/ViewGroup;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends ArrayAdapter<String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ OptionsValue f9540a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(OptionsValue optionsValue, Context context, int i, List<String> list) {
            super(context, i, list);
            this.f9540a = optionsValue;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
        public View getDropDownView(int position, View convertView, ViewGroup parent) {
            kotlin.jvm.internal.r.e(parent, "parent");
            if (convertView == null) {
                convertView = LayoutInflater.from(getContext()).inflate(R.layout.common_spinner_drop_down_item, parent, false);
            }
            if (((Number) this.f9540a.value).intValue() == position) {
                ((TextView) convertView.findViewById(R.id.text)).setSelected(true);
                ((ImageView) convertView.findViewById(R.id.iv)).setVisibility(0);
            } else {
                ((TextView) convertView.findViewById(R.id.text)).setSelected(false);
                ((ImageView) convertView.findViewById(R.id.iv)).setVisibility(8);
            }
            ((TextView) convertView.findViewById(R.id.text)).setText(this.f9540a.options.get(position));
            kotlin.jvm.internal.r.d(convertView, "view");
            return convertView;
        }
    }

    public /* synthetic */ OptionItemBinder(FragmentManager fragmentManager, boolean z, boolean z2, int i, kotlin.jvm.internal.o oVar) {
        this(fragmentManager, (i & 2) != 0 ? false : z, (i & 4) != 0 ? true : z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(OptionsValue item, OptionItemBinder this$0, View view) {
        kotlin.jvm.internal.r.e(item, "$item");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DeductRuleDialogHelper.f9530a.a(item, this$0.getB());
    }

    /* JADX INFO: renamed from: n, reason: from getter */
    public final FragmentManager getB() {
        return this.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.drakeet.multitype.c
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(ViewBindingHolder<RuleSettingItemOptionBinding> holder, final OptionsValue item) {
        kotlin.jvm.internal.r.e(holder, "holder");
        kotlin.jvm.internal.r.e(item, "item");
        ((RuleSettingItemOptionBinding) holder.getViewBinding()).descTv.setText(item.name);
        b bVar = new b(item, ((RuleSettingItemOptionBinding) holder.getViewBinding()).descTv.getContext(), R.layout.common_spinner_item, item.options);
        bVar.setDropDownViewResource(R.layout.common_spinner_drop_down_item);
        ((RuleSettingItemOptionBinding) holder.getViewBinding()).valueSpinner.setAdapter((SpinnerAdapter) bVar);
        ((RuleSettingItemOptionBinding) holder.getViewBinding()).valueSpinner.setOnItemSelectedListener(new a(item));
        ((RuleSettingItemOptionBinding) holder.getViewBinding()).valueSpinner.setSelection(((Number) item.value).intValue());
        ((RuleSettingItemOptionBinding) holder.getViewBinding()).valueSpinner.setEnabled(this.f9538d);
        String str = item.deductIds;
        if (str == null || str.length() == 0) {
            ((RuleSettingItemOptionBinding) holder.getViewBinding()).checkDeducts.setVisibility(8);
        } else if (this.c) {
            ((RuleSettingItemOptionBinding) holder.getViewBinding()).checkDeducts.setVisibility(8);
        } else {
            ((RuleSettingItemOptionBinding) holder.getViewBinding()).checkDeducts.setVisibility(0);
            ((RuleSettingItemOptionBinding) holder.getViewBinding()).checkDeducts.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.rule.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OptionItemBinder.q(item, this, view);
                }
            });
        }
    }

    public OptionItemBinder(FragmentManager supportFragmentManager, boolean z, boolean z2) {
        kotlin.jvm.internal.r.e(supportFragmentManager, "supportFragmentManager");
        this.b = supportFragmentManager;
        this.c = z;
        this.f9538d = z2;
    }
}
