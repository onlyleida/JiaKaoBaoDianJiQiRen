package cn.mucang.jiakaoyi.uilib.debug;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.lifecycle.a0;
import androidx.lifecycle.m0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.log.DebugLogUtil;
import cn.mucang.android.jiakaoyi.framework.log.SystemLogUtil;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.ActivityDebugBinding;
import com.mucang.android.jiakaoyi.uilib.databinding.LayoutItemSystemLogBinding;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.s;
import kotlin.collections.u;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000;\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0005\u0018\u0000 \u00182\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0014J\b\u0010\u0016\u001a\u00020\u0015H\u0014J\b\u0010\u0017\u001a\u00020\u0015H\u0002R\u0010\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\f\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;", "()V", "itemBinder", "cn/mucang/jiakaoyi/uilib/debug/DebugActivity$itemBinder$1", "Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$itemBinder$1;", "logAdapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "selectLocation", "", "selectPosition", "viewModel", "Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;", "getViewModel", "()Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "getStatName", "", "init", "", "onDestroy", "subscribeUi", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DebugActivity extends BaseViewBindingActivity<ActivityDebugBinding> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f9199g = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f9200d;
    private final Lazy b = kotlin.i.b(new Function0<DebugViewModel>() { // from class: cn.mucang.jiakaoyi.uilib.debug.DebugActivity$viewModel$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final DebugViewModel invoke() {
            return (DebugViewModel) new m0(this.this$0).a(DebugViewModel.class);
        }
    });
    private final com.drakeet.multitype.f c = new com.drakeet.multitype.f(null, 0, null, 7, null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9201e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final f f9202f = new f();

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$Companion;", "", "()V", TtmlNode.START, "", "context", "Landroid/content/Context;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final void a(Context context) {
            r.e(context, "context");
            Intent intent = new Intent(context, (Class<?>) DebugActivity.class);
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    @Metadata(d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016¨\u0006\u000f¸\u0006\u0000"}, d2 = {"androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1", "Landroid/text/TextWatcher;", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "text", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "core-ktx_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements TextWatcher {
        public b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            DebugActivity.this.m().l(s == null ? null : s.toString());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence text, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence text, int start, int before, int count) {
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0016¨\u0006\t"}, d2 = {"cn/mucang/jiakaoyi/uilib/debug/DebugActivity$init$3", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "onScrolled", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "dx", "", "dy", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c extends RecyclerView.t {
        c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.t
        public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
            r.e(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, dx, dy);
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
            if (linearLayoutManager == null || linearLayoutManager.findLastVisibleItemPosition() <= DebugActivity.this.c.getItemCount() - 2 || DebugActivity.this.c.getItemCount() <= 0) {
                if (DebugActivity.this.g().lock.isChecked()) {
                    DebugActivity.this.g().lock.setChecked(false);
                }
            } else {
                if (DebugActivity.this.g().lock.isChecked()) {
                    return;
                }
                DebugActivity.this.g().lock.setChecked(true);
            }
        }
    }

    @Metadata(d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\f\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005H\u0016¨\u0006\r"}, d2 = {"cn/mucang/jiakaoyi/uilib/debug/DebugActivity$init$9", "Landroid/widget/AdapterView$OnItemSelectedListener;", "onItemSelected", "", "parent", "Landroid/widget/AdapterView;", "view", "Landroid/view/View;", "position", "", TtmlNode.ATTR_ID, "", "onNothingSelected", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d implements AdapterView.OnItemSelectedListener {
        d() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
            if (position == 0) {
                DebugActivity.this.m().n(1);
            } else {
                DebugActivity.this.m().n(2);
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> parent) {
        }
    }

    @Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"cn/mucang/jiakaoyi/uilib/debug/DebugActivity$init$adapter$1", "Landroid/widget/ArrayAdapter;", "", "getDropDownView", "Landroid/view/View;", "position", "", "convertView", "parent", "Landroid/view/ViewGroup;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class e extends ArrayAdapter<String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List<String> f9206a;
        final /* synthetic */ DebugActivity b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(List<String> list, DebugActivity debugActivity, int i) {
            super(debugActivity, i, list);
            this.f9206a = list;
            this.b = debugActivity;
        }

        @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
        public View getDropDownView(int position, View convertView, ViewGroup parent) {
            r.e(parent, "parent");
            if (convertView == null) {
                convertView = LayoutInflater.from(getContext()).inflate(R.layout.common_spinner_drop_down_item, parent, false);
            }
            TextView textView = (TextView) convertView.findViewById(R.id.text);
            ImageView imageView = (ImageView) convertView.findViewById(R.id.iv);
            textView.setText(this.f9206a.get(position));
            if ((this.b.m().getC() == 1 && position == 0) || (this.b.m().getC() == 2 && position == 1)) {
                textView.setSelected(true);
                imageView.setVisibility(0);
            } else {
                textView.setSelected(false);
                imageView.setVisibility(8);
            }
            r.d(convertView, "view");
            return convertView;
        }
    }

    @Metadata(d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001e\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00072\u0006\u0010\b\u001a\u00020\u0002H\u0016¨\u0006\t"}, d2 = {"cn/mucang/jiakaoyi/uilib/debug/DebugActivity$itemBinder$1", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "", "Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutItemSystemLogBinding;", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class f extends ViewBindingBinder<String, LayoutItemSystemLogBinding> {
        f() {
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<LayoutItemSystemLogBinding> holder, String item) {
            r.e(holder, "holder");
            r.e(item, "item");
            ((LayoutItemSystemLogBinding) holder.getViewBinding()).tvContent.setText(r.m(item, "\n"));
            boolean z = false;
            if (StringsKt__StringsKt.G(item, "E/", false, 2, null)) {
                ((LayoutItemSystemLogBinding) holder.getViewBinding()).tvContent.setTextColor(-65536);
            } else {
                ((LayoutItemSystemLogBinding) holder.getViewBinding()).tvContent.setTextColor(Color.parseColor("#333333"));
            }
            HashSet<Integer> hashSetE = DebugActivity.this.m().h().e();
            if (DebugActivity.this.m().getF9211d() == 2) {
                if (hashSetE != null && hashSetE.contains(Integer.valueOf(holder.getLayoutPosition()))) {
                    z = true;
                }
                if (z) {
                    if (DebugActivity.this.f9201e == holder.getLayoutPosition()) {
                        ((LayoutItemSystemLogBinding) holder.getViewBinding()).getRoot().setBackgroundColor(Color.parseColor("#88ff66"));
                        return;
                    } else {
                        ((LayoutItemSystemLogBinding) holder.getViewBinding()).getRoot().setBackgroundColor(Color.parseColor("#aaffaa"));
                        return;
                    }
                }
            }
            ((LayoutItemSystemLogBinding) holder.getViewBinding()).getRoot().setBackgroundColor(-1);
        }
    }

    private final void B() {
        m().k().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.debug.b
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                DebugActivity.D(this.f9218a, (ArrayList) obj);
            }
        });
        m().h().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.debug.g
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                DebugActivity.C(this.f9223a, (HashSet) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(DebugActivity this$0, HashSet hashSet) {
        r.e(this$0, "this$0");
        LinearLayout linearLayout = this$0.g().llArrows;
        r.d(linearLayout, "viewBinding.llArrows");
        linearLayout.setVisibility(hashSet.size() > 0 ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(DebugActivity this$0, ArrayList it) {
        r.e(this$0, "this$0");
        com.drakeet.multitype.f fVar = this$0.c;
        r.d(it, "it");
        fVar.i(it);
        this$0.c.notifyDataSetChanged();
        if (this$0.g().lock.isChecked()) {
            this$0.g().logInfo.scrollToPosition(this$0.c.getItemCount() - 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DebugViewModel m() {
        return (DebugViewModel) this.b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(DebugActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(DebugActivity this$0, CompoundButton compoundButton, boolean z) {
        r.e(this$0, "this$0");
        this$0.m().p(z);
        if (z) {
            this$0.g().logInfo.scrollToPosition(this$0.c.getItemCount() - 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(DebugActivity this$0, RadioGroup radioGroup, int i) {
        r.e(this$0, "this$0");
        if (i != R.id.rbFilter) {
            this$0.m().o(2);
            return;
        }
        this$0.m().o(1);
        LinearLayout linearLayout = this$0.g().llArrows;
        r.d(linearLayout, "viewBinding.llArrows");
        linearLayout.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(DebugActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.m().g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(DebugActivity this$0, View view) {
        List listM0;
        List listF0;
        Integer num;
        r.e(this$0, "this$0");
        int i = this$0.f9200d;
        if (i > 0) {
            this$0.f9200d = i - 1;
        }
        this$0.c.notifyDataSetChanged();
        HashSet<Integer> hashSetE = this$0.m().h().e();
        if (hashSetE == null || (listM0 = CollectionsKt___CollectionsKt.M0(hashSetE)) == null || (listF0 = CollectionsKt___CollectionsKt.F0(listM0)) == null || (num = (Integer) s.f0(listF0, this$0.f9200d)) == null) {
            return;
        }
        int iIntValue = num.intValue();
        this$0.f9201e = iIntValue;
        this$0.g().logInfo.scrollToPosition(iIntValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(DebugActivity this$0, View view) {
        List listM0;
        List listF0;
        Integer num;
        r.e(this$0, "this$0");
        int i = this$0.f9200d;
        HashSet<Integer> hashSetE = this$0.m().h().e();
        if (i < (hashSetE == null ? 0 : hashSetE.size()) - 1) {
            this$0.f9200d++;
        }
        this$0.c.notifyDataSetChanged();
        HashSet<Integer> hashSetE2 = this$0.m().h().e();
        if (hashSetE2 == null || (listM0 = CollectionsKt___CollectionsKt.M0(hashSetE2)) == null || (listF0 = CollectionsKt___CollectionsKt.F0(listM0)) == null || (num = (Integer) s.f0(listF0, this$0.f9200d)) == null) {
            return;
        }
        int iIntValue = num.intValue();
        this$0.f9201e = iIntValue;
        this$0.g().logInfo.scrollToPosition(iIntValue);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "DebugActivity";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.debug.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DebugActivity.n(this.f9222a, view);
            }
        });
        g().titleLayout.titleTv.setText("开发调试");
        EditText editText = g().etSearch;
        r.d(editText, "viewBinding.etSearch");
        editText.addTextChangedListener(new b());
        g().logInfo.addOnScrollListener(new c());
        g().lock.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.jiakaoyi.uilib.debug.c
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                DebugActivity.o(this.f9219a, compoundButton, z);
            }
        });
        g().rgSearchMode.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: cn.mucang.jiakaoyi.uilib.debug.h
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                DebugActivity.p(this.f9224a, radioGroup, i);
            }
        });
        g().btnClear.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.debug.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DebugActivity.q(this.f9221a, view);
            }
        });
        g().btnUp.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.debug.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DebugActivity.r(this.f9217a, view);
            }
        });
        g().btnDown.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.debug.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DebugActivity.s(this.f9220a, view);
            }
        });
        e eVar = new e(u.m("系统日志", "JLog"), this, R.layout.common_spinner_item);
        eVar.setDropDownViewResource(R.layout.common_spinner_drop_down_item);
        g().spType.setAdapter((SpinnerAdapter) eVar);
        g().spType.setOnItemSelectedListener(new d());
        g().spType.setSelection(0);
        m().n(1);
        SystemLogUtil.c(false);
        this.c.g(String.class, this.f9202f);
        g().logInfo.setAdapter(this.c);
        B();
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        SystemLogUtil.f3459a.d();
        DebugLogUtil debugLogUtil = DebugLogUtil.f3464a;
        debugLogUtil.c(1);
        debugLogUtil.c(2);
    }
}
