package cn.mucang.android.jiakaoyi.teachingk2.collect.v2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.teachingk2.collect.TeachCollectHelper;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ActivityStepTeachModelBinding;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ItemStepTeachModelBinding;
import com.iflytek.cloud.SpeechUtility;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0007\u0018\u0000 \"2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\"#$B\u0005¢\u0006\u0002\u0010\u0003J\u0014\u0010\r\u001a\u00020\u000e2\n\u0010\u000f\u001a\u00060\u0010R\u00020\u0000H\u0002J\"\u0010\u0011\u001a\u00020\u000e2\u0010\u0010\u0012\u001a\f\u0012\b\u0012\u00060\u0010R\u00020\u00000\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0014\u0010\u0016\u001a\u00020\u000e2\n\u0010\u000f\u001a\u00060\u0010R\u00020\u0000H\u0002J\u001a\u0010\u0017\u001a\u00020\u000e2\u0010\u0010\u0018\u001a\f\u0012\b\u0012\u00060\u0010R\u00020\u00000\u0013H\u0002J\u0014\u0010\u0019\u001a\u00020\u000e2\n\u0010\u000f\u001a\u00060\u0010R\u00020\u0000H\u0002J\u0014\u0010\u001a\u001a\u00020\u000e2\n\u0010\u000f\u001a\u00060\u0010R\u00020\u0000H\u0002J\b\u0010\u001b\u001a\u00020\fH\u0016J\u0018\u0010\u001c\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\fJ\b\u0010 \u001a\u00020\u000eH\u0014J\b\u0010!\u001a\u00020\u000eH\u0002R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityStepTeachModelBinding;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "getAdapter", "()Lcom/drakeet/multitype/MultiTypeAdapter;", "normalCount", "", "reverseCount", "reverseDesc", "", "addGroup", "", "item", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$StepTeachItem;", "addItem", "list", "", "model", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "collectTrace", "createDefaultItem", SpeechUtility.TAG_RESOURCE_RESULT, "deleteGroup", "editTeachModels", "getStatName", "getSuffix", "isReverse", "", "group", "init", "loadData", "Companion", "StepTeachItem", "StepTeachItemBinder", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@SuppressLint({"NotifyDataSetChanged"})
public final class StepTeachModelActivity extends BaseViewBindingActivity<ActivityStepTeachModelBinding> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f6760f = new a(null);
    private int b;
    private int c = 100000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6761d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.drakeet.multitype.f f6762e;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u0012\u0012\b\u0012\u00060\u0002R\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0001B\u0005¢\u0006\u0002\u0010\u0005J\"\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\t2\n\u0010\n\u001a\u00060\u0002R\u00020\u0003H\u0017¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$StepTeachItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$StepTeachItem;", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemStepTeachModelBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class StepTeachItemBinder extends ViewBindingBinder<b, ItemStepTeachModelBinding> {
        final /* synthetic */ StepTeachModelActivity b;

        public StepTeachItemBinder(StepTeachModelActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this.b = this$0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void s(StepTeachModelActivity this$0, b item, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(item, "$item");
            this$0.s(item);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void t(StepTeachModelActivity this$0, b item, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(item, "$item");
            this$0.w(item);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void u(final b item, final StepTeachModelActivity this$0, View view) {
            kotlin.jvm.internal.r.e(item, "$item");
            kotlin.jvm.internal.r.e(this$0, "this$0");
            if (item.getF6763a().isGlobal()) {
                CollectGlobalActivity.a aVar = CollectGlobalActivity.f6738h;
                Context context = view.getContext();
                kotlin.jvm.internal.r.d(context, "view.context");
                aVar.a(context, item);
                return;
            }
            if (item.getF6763a() == Step.K2_CeFangTingChe || item.getF6763a() == Step.K2_ZhiJiaoZhuanWan || item.getF6763a() == Step.K2_ShangPoQiBu || item.getF6763a() == Step.K2_DaoCheRuKu) {
                new AutoChooseDialog(this$0, new Function1<Integer, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.StepTeachModelActivity$StepTeachItemBinder$onBindViewHolder$3$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    public final void invoke(int i) {
                        if (i == 0) {
                            this$0.u(item);
                        } else {
                            TraceAutoCreateActivity.o.a(this$0, item);
                        }
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ kotlin.v invoke(Integer num) {
                        invoke(num.intValue());
                        return kotlin.v.f15822a;
                    }
                }).show();
            } else {
                this$0.u(item);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void v(StepTeachModelActivity this$0, b item, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(item, "$item");
            this$0.x(item);
        }

        @Override // com.drakeet.multitype.c
        @SuppressLint({"SetTextI18n"})
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemStepTeachModelBinding> holder, final b item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            ((ItemStepTeachModelBinding) holder.getViewBinding()).titleTv.setText(item.getF6766f());
            ((ItemStepTeachModelBinding) holder.getViewBinding()).descTv.setText(item.getF6767g() + "个教学点");
            if (cn.mucang.android.core.utils.n0.e(item.getC())) {
                ((ItemStepTeachModelBinding) holder.getViewBinding()).deleteTv.setVisibility(8);
                ((ItemStepTeachModelBinding) holder.getViewBinding()).addTv.setVisibility(0);
            } else {
                ((ItemStepTeachModelBinding) holder.getViewBinding()).deleteTv.setVisibility(0);
                ((ItemStepTeachModelBinding) holder.getViewBinding()).addTv.setVisibility(8);
            }
            TextView textView = ((ItemStepTeachModelBinding) holder.getViewBinding()).addTv;
            final StepTeachModelActivity stepTeachModelActivity = this.b;
            textView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.v1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StepTeachModelActivity.StepTeachItemBinder.s(stepTeachModelActivity, item, view);
                }
            });
            TextView textView2 = ((ItemStepTeachModelBinding) holder.getViewBinding()).deleteTv;
            final StepTeachModelActivity stepTeachModelActivity2 = this.b;
            textView2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.t1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StepTeachModelActivity.StepTeachItemBinder.t(stepTeachModelActivity2, item, view);
                }
            });
            TextView textView3 = ((ItemStepTeachModelBinding) holder.getViewBinding()).traceTv;
            final StepTeachModelActivity stepTeachModelActivity3 = this.b;
            textView3.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.u1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StepTeachModelActivity.StepTeachItemBinder.u(item, stepTeachModelActivity3, view);
                }
            });
            TextView textView4 = ((ItemStepTeachModelBinding) holder.getViewBinding()).editTv;
            final StepTeachModelActivity stepTeachModelActivity4 = this.b;
            textView4.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.w1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StepTeachModelActivity.StepTeachItemBinder.v(stepTeachModelActivity4, item, view);
                }
            });
            TextView textView5 = ((ItemStepTeachModelBinding) holder.getViewBinding()).addTv;
            kotlin.jvm.internal.r.d(textView5, "holder.viewBinding.addTv");
            textView5.setVisibility(TeachModelEditor.f6857a.g().isGlobal() ^ true ? 0 : 8);
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "step", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context, Step step) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(step, "step");
            TeachModelEditor.n(step);
            ActivityUtils.c(context, new Intent(context, (Class<?>) StepTeachModelActivity.class));
        }
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0002\u0010\u000bJ\u0006\u0010\u001a\u001a\u00020 R\u001a\u0010\f\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u0014¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0015R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u000e\"\u0004\b\u001a\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u000eR\u0011\u0010\u001e\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0012¨\u0006!"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$StepTeachItem;", "", "step", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "stepDirection", "", "group", "", "list", "", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;Lcn/mucang/android/jiakaoyi/engine/model/Step;ILjava/lang/String;Ljava/util/List;)V", "count", "getCount", "()I", "setCount", "(I)V", "getGroup", "()Ljava/lang/String;", "isReverse", "", "()Z", "getList", "()Ljava/util/List;", "position", "getPosition", "setPosition", "getStep", "()Lcn/mucang/android/jiakaoyi/engine/model/Step;", "getStepDirection", "title", "getTitle", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Step f6763a;
        private final int b;
        private final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List<TeachModel> f6764d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final boolean f6765e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final String f6766f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f6767g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f6768h;
        final /* synthetic */ StepTeachModelActivity i;

        public b(StepTeachModelActivity this$0, Step step, int i, String str, List<TeachModel> list) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(step, "step");
            kotlin.jvm.internal.r.e(list, "list");
            this.i = this$0;
            this.f6763a = step;
            this.b = i;
            this.c = str;
            this.f6764d = list;
            boolean zI = TeachCollectHelper.i(step.type, i);
            this.f6765e = zI;
            this.f6766f = kotlin.jvm.internal.r.m(step.zhStepName, this$0.z(zI, str));
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final int getF6767g() {
            return this.f6767g;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final String getC() {
            return this.c;
        }

        public final List<TeachModel> c() {
            return this.f6764d;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final int getF6768h() {
            return this.f6768h;
        }

        /* JADX INFO: renamed from: e, reason: from getter */
        public final Step getF6763a() {
            return this.f6763a;
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final int getB() {
            return this.b;
        }

        /* JADX INFO: renamed from: g, reason: from getter */
        public final String getF6766f() {
            return this.f6766f;
        }

        public final void h(int i) {
            this.f6767g = i;
        }

        public final void i() {
            int i;
            if (!this.f6765e && cn.mucang.android.core.utils.n0.e(this.c)) {
                i = 0;
            } else if (!this.f6765e) {
                StepTeachModelActivity stepTeachModelActivity = this.i;
                stepTeachModelActivity.b++;
                i = stepTeachModelActivity.b;
            } else if (cn.mucang.android.core.utils.n0.e(this.c)) {
                i = 100000;
            } else {
                StepTeachModelActivity stepTeachModelActivity2 = this.i;
                stepTeachModelActivity2.c++;
                i = stepTeachModelActivity2.c;
            }
            this.f6768h = i;
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6769a;

        static {
            int[] iArr = new int[Step.values().length];
            iArr[Step.K2_Global.ordinal()] = 1;
            iArr[Step.B2_Global.ordinal()] = 2;
            iArr[Step.K2_DaoCheRuKu.ordinal()] = 3;
            iArr[Step.K2_CeFangTingChe.ordinal()] = 4;
            f6769a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 5, 1})
    public static final class d<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return kotlin.x.b.c(Integer.valueOf(((b) t).getF6768h()), Integer.valueOf(((b) t2).getF6768h()));
        }
    }

    public StepTeachModelActivity() {
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(b.class, new StepTeachItemBinder(this));
        kotlin.v vVar = kotlin.v.f15822a;
        this.f6762e = fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(StepTeachModelActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(StepTeachModelActivity this$0, TeachModelChanged teachModelChanged) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.H();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H() {
        this.b = 0;
        this.c = 100000;
        g().stateLayout.f();
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.q1
            @Override // java.lang.Runnable
            public final void run() {
                StepTeachModelActivity.I(this.f6881a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(final StepTeachModelActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        try {
            final ArrayList arrayList = new ArrayList();
            this$0.v(arrayList);
            cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b bVar = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b();
            TeachModelEditor teachModelEditor = TeachModelEditor.f6857a;
            List<TeachModel> list = bVar.q(teachModelEditor.f(), teachModelEditor.g().type);
            kotlin.jvm.internal.r.d(list, "list");
            for (TeachModel it : list) {
                kotlin.jvm.internal.r.d(it, "it");
                this$0.t(arrayList, it);
            }
            if (arrayList.size() > 1) {
                kotlin.collections.y.A(arrayList, new d());
            }
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.s1
                @Override // java.lang.Runnable
                public final void run() {
                    StepTeachModelActivity.J(this.f6892a, arrayList);
                }
            });
        } catch (Exception unused) {
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.x1
                @Override // java.lang.Runnable
                public final void run() {
                    StepTeachModelActivity.K(this.f6912a);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(StepTeachModelActivity this$0, List result) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(result, "$result");
        this$0.getF6762e().i(result);
        this$0.getF6762e().notifyDataSetChanged();
        this$0.g().stateLayout.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(StepTeachModelActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.g().stateLayout.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s(final b bVar) {
        final String strH = TeachCollectHelper.h(bVar.c());
        if (cn.mucang.android.core.utils.n0.e(strH)) {
            cn.mucang.android.core.utils.u.h("请先采集教学");
        } else {
            new WhiteAddGroupDialog(this, bVar.getF6766f(), new Function1<String, Boolean>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.StepTeachModelActivity$addGroup$1

                /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.StepTeachModelActivity$addGroup$1$2, reason: invalid class name */
                @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
                static final class AnonymousClass2 extends Lambda implements Function0<kotlin.v> {
                    final /* synthetic */ StepTeachModelActivity this$0;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass2(StepTeachModelActivity stepTeachModelActivity) {
                        super(0);
                        this.this$0 = stepTeachModelActivity;
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
                    public static final void m39invoke$lambda0(StepTeachModelActivity this$0) {
                        kotlin.jvm.internal.r.e(this$0, "this$0");
                        this$0.H();
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ kotlin.v invoke() {
                        invoke2();
                        return kotlin.v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        final StepTeachModelActivity stepTeachModelActivity = this.this$0;
                        cn.mucang.android.core.utils.u.c(
                        /*  JADX ERROR: Method code generation error
                            jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0007: INVOKE 
                              (wrap java.lang.Runnable:0x0004: CONSTRUCTOR (r0v0 'stepTeachModelActivity' cn.mucang.android.jiakaoyi.teachingk2.collect.v2.StepTeachModelActivity A[DONT_INLINE]) A[MD:(cn.mucang.android.jiakaoyi.teachingk2.collect.v2.StepTeachModelActivity):void (m), WRAPPED] call: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.y1.<init>(cn.mucang.android.jiakaoyi.teachingk2.collect.v2.StepTeachModelActivity):void type: CONSTRUCTOR)
                             STATIC call: cn.mucang.android.core.utils.u.c(java.lang.Runnable):void A[MD:(java.lang.Runnable):void (m)] in method: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.StepTeachModelActivity$addGroup$1.2.invoke():void, file: classes4.dex
                            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                            	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                            	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
                            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
                            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                            Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.y1, state: NOT_LOADED
                            	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:306)
                            	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:807)
                            	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
                            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                            	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                            	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:1143)
                            	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:910)
                            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:422)
                            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
                            	... 15 more
                            */
                        /*
                            this = this;
                            cn.mucang.android.jiakaoyi.teachingk2.collect.v2.StepTeachModelActivity r0 = r2.this$0
                            cn.mucang.android.jiakaoyi.teachingk2.collect.v2.y1 r1 = new cn.mucang.android.jiakaoyi.teachingk2.collect.v2.y1
                            r1.<init>(r0)
                            cn.mucang.android.core.utils.u.c(r1)
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.StepTeachModelActivity$addGroup$1.AnonymousClass2.invoke2():void");
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(String group) {
                    boolean z;
                    kotlin.jvm.internal.r.e(group, "group");
                    Iterator<T> it = this.this$0.getF6762e().c().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = true;
                            break;
                        }
                        Object next = it.next();
                        StepTeachModelActivity.b bVar2 = next instanceof StepTeachModelActivity.b ? (StepTeachModelActivity.b) next : null;
                        if (TextUtils.equals(bVar2 != null ? bVar2.getC() : null, group)) {
                            z = false;
                            break;
                        }
                    }
                    if (z) {
                        TeachCollectHelper.a(this.this$0, TeachModelEditor.f6857a.f(), bVar.getF6763a().type, bVar.getB(), group, strH, new AnonymousClass2(this.this$0));
                    } else {
                        cn.mucang.android.core.utils.u.h("方案名称重复，不能新增");
                    }
                    return Boolean.valueOf(z);
                }
            }).show();
        }
    }

    private final void t(List<b> list, TeachModel teachModel) {
        b bVar;
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                b bVar2 = new b(this, TeachModelEditor.f6857a.g(), teachModel.stepDirection, teachModel.parkingSpaceGroup, new ArrayList());
                bVar2.i();
                bVar2.c().add(teachModel);
                if (!teachModel.isTraceTeach()) {
                    bVar2.h(bVar2.getF6767g() + 1);
                }
                list.add(bVar2);
                return;
            }
            bVar = (b) it.next();
            if (bVar.getB() == teachModel.stepDirection && ((cn.mucang.android.core.utils.n0.e(bVar.getC()) && cn.mucang.android.core.utils.n0.e(teachModel.parkingSpaceGroup)) || TextUtils.equals(bVar.getC(), teachModel.parkingSpaceGroup))) {
                break;
            }
        }
        if (!teachModel.isTraceTeach()) {
            bVar.h(bVar.getF6767g() + 1);
        }
        bVar.c().add(teachModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u(b bVar) {
        CollectTraceActivity.m.a(this, bVar);
    }

    private final void v(List<b> list) {
        TeachModelEditor teachModelEditor = TeachModelEditor.f6857a;
        if (teachModelEditor.g() != Step.K2_DaoCheRuKu && teachModelEditor.g() != Step.K2_ZhiJiaoZhuanWan && teachModelEditor.g() != Step.K2_SQuXian) {
            list.add(new b(this, teachModelEditor.g(), 0, null, new ArrayList()));
            return;
        }
        b bVar = new b(this, teachModelEditor.g(), 2, null, new ArrayList());
        bVar.i();
        kotlin.v vVar = kotlin.v.f15822a;
        list.add(bVar);
        b bVar2 = new b(this, teachModelEditor.g(), 1, null, new ArrayList());
        bVar2.i();
        list.add(bVar2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w(b bVar) {
        TeachCollectHelper.c(this, TeachModelEditor.f6857a.f(), TeachCollectHelper.h(bVar.c()), new StepTeachModelActivity$deleteGroup$1(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x(b bVar) {
        List arrayList;
        int i = c.f6769a[TeachModelEditor.f6857a.g().ordinal()];
        if (i == 1 || i == 2) {
            arrayList = new ArrayList();
        } else if (i != 3) {
            arrayList = i != 4 ? kotlin.collections.u.p(1) : kotlin.collections.u.p(1, 2, 3);
        } else {
            arrayList = kotlin.collections.u.p(1, 2, 3, 4, 5);
        }
        for (TeachModel teachModel : bVar.c()) {
            if (teachModel.isTraceTeach()) {
                arrayList.remove(Integer.valueOf(teachModel.subStep));
            }
        }
        if (!arrayList.isEmpty()) {
            cn.mucang.android.core.utils.u.h("请先采集教学轨迹");
        } else {
            ShowTeachModelActivity.f6754g.a(this, bVar.getF6766f(), bVar.c());
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "项目方案列表页";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        TextView textView = g().title.titleTv;
        TeachModelEditor teachModelEditor = TeachModelEditor.f6857a;
        textView.setText(teachModelEditor.g().zhStepName);
        g().title.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.a2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StepTeachModelActivity.A(this.f6787a, view);
            }
        });
        g().recyclerView.setLayoutManager(new LinearLayoutManager(this));
        g().recyclerView.setAdapter(this.f6762e);
        if (teachModelEditor.g() == Step.K2_DaoCheRuKu) {
            this.f6761d = "左库";
        } else if (teachModelEditor.g() == Step.K2_ZhiJiaoZhuanWan) {
            this.f6761d = "右转";
        } else if (teachModelEditor.g() == Step.K2_SQuXian) {
            this.f6761d = "反曲";
        }
        LiveBus.d(TeachModelChanged.class).h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.r1
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                StepTeachModelActivity.B(this.f6888a, (TeachModelChanged) obj);
            }
        });
        H();
    }

    /* JADX INFO: renamed from: y, reason: from getter */
    public final com.drakeet.multitype.f getF6762e() {
        return this.f6762e;
    }

    public final String z(boolean z, String str) {
        if (z && cn.mucang.android.core.utils.n0.g(str)) {
            return (char) 65288 + this.f6761d + "）（" + ((Object) str) + (char) 65289;
        }
        if (z) {
            return (char) 65288 + this.f6761d + (char) 65289;
        }
        if (!cn.mucang.android.core.utils.n0.g(str)) {
            return "（标准）";
        }
        StringBuilder sb = new StringBuilder();
        sb.append((char) 65288);
        sb.append((Object) str);
        sb.append((char) 65289);
        return sb.toString();
    }
}
