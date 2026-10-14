package cn.mucang.android.jiakaoyi.teachingk2.collect.v2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ActivityStepTeachModelBinding;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ItemStepTeachModelBinding;
import com.iflytek.cloud.SpeechUtility;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0007\u0018\u0000 \"2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\"#$B\u0005¢\u0006\u0002\u0010\u0003J\u0014\u0010\r\u001a\u00020\u000e2\n\u0010\u000f\u001a\u00060\u0010R\u00020\u0000H\u0002J\"\u0010\u0011\u001a\u00020\u000e2\u0010\u0010\u0012\u001a\f\u0012\b\u0012\u00060\u0010R\u00020\u00000\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0014\u0010\u0016\u001a\u00020\u000e2\n\u0010\u000f\u001a\u00060\u0010R\u00020\u0000H\u0002J\u001a\u0010\u0017\u001a\u00020\u000e2\u0010\u0010\u0018\u001a\f\u0012\b\u0012\u00060\u0010R\u00020\u00000\u0013H\u0002J\u0014\u0010\u0019\u001a\u00020\u000e2\n\u0010\u000f\u001a\u00060\u0010R\u00020\u0000H\u0002J\u0014\u0010\u001a\u001a\u00020\u000e2\n\u0010\u000f\u001a\u00060\u0010R\u00020\u0000H\u0002J\b\u0010\u001b\u001a\u00020\fH\u0016J\u0018\u0010\u001c\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\fJ\b\u0010 \u001a\u00020\u000eH\u0014J\b\u0010!\u001a\u00020\u000eH\u0002R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityStepTeachModelBinding;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "getAdapter", "()Lcom/drakeet/multitype/MultiTypeAdapter;", "normalCount", "", "reverseCount", "reverseDesc", "", "addGroup", "", "item", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$StepTeachItem;", "addItem", "list", "", "model", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "collectTrace", "createDefaultItem", SpeechUtility.TAG_RESOURCE_RESULT, "deleteGroup", "editTeachModels", "getStatName", "getSuffix", "isReverse", "", "group", "init", "loadData", "Companion", "StepTeachItem", "StepTeachItemBinder", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@SuppressLint({"NotifyDataSetChanged"})
public final class StepTeachModelActivity extends cn.mucang.android.jiakaoyi.framework.base.m.c<ActivityStepTeachModelBinding> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f6760f = null;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6761d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.drakeet.multitype.f f6762e;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u0012\u0012\b\u0012\u00060\u0002R\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0001B\u0005¢\u0006\u0002\u0010\u0005J\"\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\t2\n\u0010\n\u001a\u00060\u0002R\u00020\u0003H\u0017¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$StepTeachItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$StepTeachItem;", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemStepTeachModelBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class StepTeachItemBinder extends cn.mucang.android.jiakaoyi.framework.base.f<b, ItemStepTeachModelBinding> {
        final /* synthetic */ StepTeachModelActivity b;

        public StepTeachItemBinder(StepTeachModelActivity r2) {
            kotlin.jvm.internal.r.e(r2, "this$0");
            this.b = r2;
        }

        public static /* synthetic */ void n(StepTeachModelActivity r0, b r1, View r2) {
            t(r0, r1, r2);
        }

        public static /* synthetic */ void o(b r0, StepTeachModelActivity r1, View r2) {
            u(r0, r1, r2);
        }

        public static /* synthetic */ void p(StepTeachModelActivity r0, b r1, View r2) {
            s(r0, r1, r2);
        }

        public static /* synthetic */ void q(StepTeachModelActivity r0, b r1, View r2) {
            v(r0, r1, r2);
        }

        private static final void s(StepTeachModelActivity r0, b r1, View r2) {
            kotlin.jvm.internal.r.e(r0, "this$0");
            kotlin.jvm.internal.r.e(r1, "$item");
            StepTeachModelActivity.j(r0, r1);
        }

        private static final void t(StepTeachModelActivity r0, b r1, View r2) {
            kotlin.jvm.internal.r.e(r0, "this$0");
            kotlin.jvm.internal.r.e(r1, "$item");
            StepTeachModelActivity.l(r0, r1);
        }

        private static final void u(final b r1, final StepTeachModelActivity r2, View r3) {
            kotlin.jvm.internal.r.e(r1, "$item");
            kotlin.jvm.internal.r.e(r2, "this$0");
            if (r1.e().isGlobal() == false) goto L7;
            CollectGlobalActivity.a r4 = CollectGlobalActivity.f6738h;
            Context r5 = r3.getContext();
            kotlin.jvm.internal.r.d(r5, "view.context");
            r4.a(r5, r1);
            return;
        L7:
            if (r1.e() != Step.K2_CeFangTingChe) goto L9;
        L16:
            new g3(r2, new StepTeachModelActivity$StepTeachItemBinder$onBindViewHolder$3$1(r2, r1)).show();
            return;
        L9:
            if (r1.e() == Step.K2_ZhiJiaoZhuanWan) goto L16;
            if (r1.e() == Step.K2_ShangPoQiBu) goto L16;
            if (r1.e() == Step.K2_DaoCheRuKu) goto L16;
            StepTeachModelActivity.k(r2, r1);
        }

        private static final void v(StepTeachModelActivity r0, b r1, View r2) {
            kotlin.jvm.internal.r.e(r0, "this$0");
            kotlin.jvm.internal.r.e(r1, "$item");
            StepTeachModelActivity.m(r0, r1);
        }

        @Override // com.drakeet.multitype.c
        public /* bridge */ /* synthetic */ void c(RecyclerView.c0 r1, Object r2) {
            r((cn.mucang.android.jiakaoyi.framework.base.h) r1, (b) r2);
        }

        @SuppressLint({"SetTextI18n"})
        public void r(cn.mucang.android.jiakaoyi.framework.base.h<ItemStepTeachModelBinding> r6, final b r7) {
            kotlin.jvm.internal.r.e(r6, "holder");
            kotlin.jvm.internal.r.e(r7, "item");
            ((ItemStepTeachModelBinding) r6.getViewBinding()).titleTv.setText(r7.g());
            ((ItemStepTeachModelBinding) r6.getViewBinding()).descTv.setText(r7.a() + "个教学点");
            int r1 = 8;
            if (cn.mucang.android.core.utils.n0.e(r7.b()) == false) goto L5;
            ((ItemStepTeachModelBinding) r6.getViewBinding()).deleteTv.setVisibility(8);
            ((ItemStepTeachModelBinding) r6.getViewBinding()).addTv.setVisibility(0);
        L6:
            TextView r0 = ((ItemStepTeachModelBinding) r6.getViewBinding()).addTv;
            final StepTeachModelActivity r3 = this.b;
            r0.setOnClickListener(new v1(r3, r7));
            TextView r2 = ((ItemStepTeachModelBinding) r6.getViewBinding()).deleteTv;
            final StepTeachModelActivity r4 = this.b;
            r2.setOnClickListener(new t1(r4, r7));
            TextView r5 = ((ItemStepTeachModelBinding) r6.getViewBinding()).traceTv;
            final StepTeachModelActivity r8 = this.b;
            r5.setOnClickListener(new u1(r7, r8));
            TextView r9 = ((ItemStepTeachModelBinding) r6.getViewBinding()).editTv;
            final StepTeachModelActivity r10 = this.b;
            r9.setOnClickListener(new w1(r10, r7));
            TextView r11 = ((ItemStepTeachModelBinding) r6.getViewBinding()).addTv;
            kotlin.jvm.internal.r.d(r11, "holder.viewBinding.addTv");
            if ((!m3.f6857a.g().isGlobal()) == false) goto L9;
            r1 = 0;
        L9:
            r11.setVisibility(r1);
            return;
        L5:
            ((ItemStepTeachModelBinding) r6.getViewBinding()).deleteTv.setVisibility(0);
            ((ItemStepTeachModelBinding) r6.getViewBinding()).addTv.setVisibility(8);
            goto L6
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "step", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o r1) {
            this();
        }

        public final void a(Context r2, Step r3) {
            kotlin.jvm.internal.r.e(r2, "context");
            kotlin.jvm.internal.r.e(r3, "step");
            m3.n(r3);
            cn.mucang.android.jiakaoyi.framework.utils.l.c(r2, new Intent(r2, StepTeachModelActivity.class));
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

        public b(StepTeachModelActivity r2, Step r3, int r4, String r5, List<TeachModel> r6) {
            kotlin.jvm.internal.r.e(r2, "this$0");
            kotlin.jvm.internal.r.e(r3, "step");
            kotlin.jvm.internal.r.e(r6, "list");
            this.i = r2;
            this.f6763a = r3;
            this.b = r4;
            this.c = r5;
            this.f6764d = r6;
            boolean r7 = cn.mucang.android.jiakaoyi.teachingk2.collect.e0.i(r3.type, r4);
            this.f6765e = r7;
            this.f6766f = kotlin.jvm.internal.r.m(r3.zhStepName, r2.z(r7, r5));
        }

        public final int a() {
            return this.f6767g;
        }

        public final String b() {
            return this.c;
        }

        public final List<TeachModel> c() {
            return this.f6764d;
        }

        public final int d() {
            return this.f6768h;
        }

        public final Step e() {
            return this.f6763a;
        }

        public final int f() {
            return this.b;
        }

        public final String g() {
            return this.f6766f;
        }

        public final void h(int r1) {
            this.f6767g = r1;
        }

        public final void i() {
            if (this.f6765e == true) goto L8;
            if (cn.mucang.android.core.utils.n0.e(this.c) == false) goto L8;
            int r0 = 0;
        L14:
            this.f6768h = r0;
            return;
        L8:
            if (this.f6765e == true) goto L11;
            StepTeachModelActivity r1 = this.i;
            StepTeachModelActivity.q(r1, StepTeachModelActivity.n(r1) + 1);
            r0 = StepTeachModelActivity.n(r1);
            goto L14
        L11:
            if (cn.mucang.android.core.utils.n0.e(this.c) == false) goto L13;
            r0 = 100000;
            goto L14
        L13:
            StepTeachModelActivity r2 = this.i;
            StepTeachModelActivity.r(r2, StepTeachModelActivity.o(r2) + 1);
            r0 = StepTeachModelActivity.o(r2);
            goto L14
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6769a = null;

        static {
            int[] r0 = new int[Step.values().length];
            r0[Step.K2_Global.ordinal()] = 1;
            r0[Step.B2_Global.ordinal()] = 2;
            r0[Step.K2_DaoCheRuKu.ordinal()] = 3;
            r0[Step.K2_CeFangTingChe.ordinal()] = 4;
            f6769a = r0;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 5, 1})
    public static final class d<T> implements Comparator {
        public d() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T r1, T r2) {
            return kotlin.x.a.c(Integer.valueOf(((b) r1).d()), Integer.valueOf(((b) r2).d()));
        }
    }

    static {
        f6760f = new a(null);
    }

    public StepTeachModelActivity() {
        this.c = 100000;
        this.f6761d = "";
        com.drakeet.multitype.f r0 = new com.drakeet.multitype.f(null, 0, null, 7, null);
        r0.g(b.class, new StepTeachItemBinder(this));
        kotlin.v r1 = kotlin.v.f15822a;
        this.f6762e = r0;
    }

    private static final void A(StepTeachModelActivity r0, View r1) {
        kotlin.jvm.internal.r.e(r0, "this$0");
        r0.finish();
    }

    private static final void B(StepTeachModelActivity r0, l3 r1) {
        kotlin.jvm.internal.r.e(r0, "this$0");
        r0.H();
    }

    public static /* synthetic */ void C(StepTeachModelActivity r0) {
        I(r0);
    }

    public static /* synthetic */ void D(StepTeachModelActivity r0, l3 r1) {
        B(r0, r1);
    }

    public static /* synthetic */ void E(StepTeachModelActivity r0, List r1) {
        J(r0, r1);
    }

    public static /* synthetic */ void F(StepTeachModelActivity r0) {
        K(r0);
    }

    public static /* synthetic */ void G(StepTeachModelActivity r0, View r1) {
        A(r0, r1);
    }

    private final void H() {
        this.b = 0;
        this.c = 100000;
        g().stateLayout.f();
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new q1(this));
    }

    private static final void I(final StepTeachModelActivity r4) {
        kotlin.jvm.internal.r.e(r4, "this$0");
        final ArrayList r0 = new ArrayList();     // Catch: Exception -> L12
        r4.v(r0);     // Catch: Exception -> L12
        cn.mucang.android.jiakaoyi.teachingk2.collect.render.h2.b r1 = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.h2.b();     // Catch: Exception -> L12
        m3 r2 = m3.f6857a;     // Catch: Exception -> L12
        List<TeachModel> r3 = r1.q(r2.f(), r2.g().type);     // Catch: Exception -> L12
        kotlin.jvm.internal.r.d(r3, "list");     // Catch: Exception -> L12
        Iterator<T> r5 = r3.iterator();     // Catch: Exception -> L12
    L5:
        if (r5.hasNext() == false) goto L8;
        TeachModel r6 = (TeachModel) r5.next();     // Catch: Exception -> L12
        kotlin.jvm.internal.r.d(r6, "it");     // Catch: Exception -> L12
        r4.t(r0, r6);     // Catch: Exception -> L12
        goto L5
    L8:
        if (r0.size() <= 1) goto L10;
        kotlin.collections.s.A(r0, new d());     // Catch: Exception -> L12
    L10:
        cn.mucang.android.core.utils.u.c(new s1(r4, r0));     // Catch: Exception -> L12
        return;
    L12:
        cn.mucang.android.core.utils.u.c(new x1(r4));
    }

    private static final void J(StepTeachModelActivity r1, List r2) {
        kotlin.jvm.internal.r.e(r1, "this$0");
        kotlin.jvm.internal.r.e(r2, "$result");
        r1.y().i(r2);
        r1.y().notifyDataSetChanged();
        r1.g().stateLayout.c();
    }

    private static final void K(StepTeachModelActivity r1) {
        kotlin.jvm.internal.r.e(r1, "this$0");
        r1.g().stateLayout.e();
    }

    public static final /* synthetic */ void j(StepTeachModelActivity r0, b r1) {
        r0.s(r1);
    }

    public static final /* synthetic */ void k(StepTeachModelActivity r0, b r1) {
        r0.u(r1);
    }

    public static final /* synthetic */ void l(StepTeachModelActivity r0, b r1) {
        r0.w(r1);
    }

    public static final /* synthetic */ void m(StepTeachModelActivity r0, b r1) {
        r0.x(r1);
    }

    public static final /* synthetic */ int n(StepTeachModelActivity r0) {
        return r0.b;
    }

    public static final /* synthetic */ int o(StepTeachModelActivity r0) {
        return r0.c;
    }

    public static final /* synthetic */ void p(StepTeachModelActivity r0) {
        r0.H();
    }

    public static final /* synthetic */ void q(StepTeachModelActivity r0, int r1) {
        r0.b = r1;
    }

    public static final /* synthetic */ void r(StepTeachModelActivity r0, int r1) {
        r0.c = r1;
    }

    private final void s(final b r5) {
        final String r0 = cn.mucang.android.jiakaoyi.teachingk2.collect.e0.h(r5.c());
        if (cn.mucang.android.core.utils.n0.e(r0) == false) goto L6;
        cn.mucang.android.core.utils.u.h("请先采集教学");
        return;
    L6:
        new n3(this, r5.g(), new StepTeachModelActivity$addGroup$1(this, r5, r0)).show();
    }

    private final void t(List<b> r8, TeachModel r9) {
        Iterator<T> r0 = r8.iterator();
    L4:
        if (r0.hasNext() == false) goto L18;
        b r1 = (b) r0.next();
        if (r1.f() != r9.stepDirection) goto L4;
        if (cn.mucang.android.core.utils.n0.e(r1.b()) == false) goto L12;
        if (cn.mucang.android.core.utils.n0.e(r9.parkingSpaceGroup) == false) goto L12;
    L14:
        if (r9.isTraceTeach() == true) goto L16;
        r1.h(r1.a() + 1);
    L16:
        r1.c().add(r9);
        return;
    L12:
        if (TextUtils.equals(r1.b(), r9.parkingSpaceGroup) == false) goto L4;
    L18:
        b r6 = new b(this, m3.f6857a.g(), r9.stepDirection, r9.parkingSpaceGroup, new ArrayList());
        r6.i();
        r6.c().add(r9);
        if (r9.isTraceTeach() == true) goto L21;
        r6.h(r6.a() + 1);
    L21:
        r8.add(r6);
    }

    private final void u(b r2) {
        CollectTraceActivity.m.a(this, r2);
    }

    private final void v(List<b> r17) {
        m3 r1 = m3.f6857a;
        if (r1.g() != Step.K2_DaoCheRuKu) goto L5;
    L10:
        b r2 = new b(this, r1.g(), 2, null, new ArrayList());
        r2.i();
        kotlin.v r3 = kotlin.v.f15822a;
        r17.add(r2);
        b r4 = new b(this, r1.g(), 1, null, new ArrayList());
        r4.i();
        r17.add(r4);
        return;
    L5:
        if (r1.g() == Step.K2_ZhiJiaoZhuanWan) goto L10;
        if (r1.g() == Step.K2_SQuXian) goto L10;
        r17.add(new b(this, r1.g(), 0, null, new ArrayList()));
    }

    private final void w(b r3) {
        String r4 = cn.mucang.android.jiakaoyi.teachingk2.collect.e0.h(r3.c());
        cn.mucang.android.jiakaoyi.teachingk2.collect.e0.c(this, m3.f6857a.f(), r4, new StepTeachModelActivity$deleteGroup$1(this));
    }

    private final void x(b r9) {
        int r0 = c.f6769a[m3.f6857a.g().ordinal()];
        if (r0 != 1) goto L5;
    L12:
        List r1 = new ArrayList();
    L13:
        Iterator<T> r2 = r9.c().iterator();
    L15:
        if (r2.hasNext() == false) goto L20;
        TeachModel r3 = (TeachModel) r2.next();
        if (r3.isTraceTeach() == false) goto L15;
        r1.remove(Integer.valueOf(r3.subStep));
        goto L15
    L20:
        if ((!r1.isEmpty()) == false) goto L23;
        cn.mucang.android.core.utils.u.h("请先采集教学轨迹");
        return;
    L23:
        ShowTeachModelActivity.f6754g.a(this, r9.g(), r9.c());
        return;
    L5:
        if (r0 == 2) goto L12;
        if (r0 == 3) goto L11;
        if (r0 == 4) goto L10;
        r1 = kotlin.collections.s.p(new Integer[]{1});
        goto L13
    L10:
        r1 = kotlin.collections.s.p(new Integer[]{1, 2, 3});
        goto L13
    L11:
        r1 = kotlin.collections.s.p(new Integer[]{1, 2, 3, 4, 5});
        goto L13
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "项目方案列表页";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.m.c
    protected void init() {
        TextView r0 = g().title.titleTv;
        m3 r1 = m3.f6857a;
        r0.setText(r1.g().zhStepName);
        g().title.backIv.setOnClickListener(new a2(this));
        g().recyclerView.setLayoutManager(new LinearLayoutManager(this));
        g().recyclerView.setAdapter(this.f6762e);
        if (r1.g() != Step.K2_DaoCheRuKu) goto L6;
        this.f6761d = "左库";
    L11:
        LiveBus.d(l3.class).h(this, new r1(this));
        H();
        return;
    L6:
        if (r1.g() != Step.K2_ZhiJiaoZhuanWan) goto L9;
        this.f6761d = "右转";
        goto L11
    L9:
        if (r1.g() != Step.K2_SQuXian) goto L11;
        this.f6761d = "反曲";
        goto L11
    }

    public final com.drakeet.multitype.f y() {
        return this.f6762e;
    }

    public final String z(boolean r4, String r5) {
        if (r4 == true) goto L5;
    L7:
        if (r4 == false) goto L10;
        return 65288 + this.f6761d + 65289;
    L10:
        if (cn.mucang.android.core.utils.n0.g(r5) == true) goto L16;
        return "（标准）";
    L16:
        return 65288 + r5 + 65289;
    L5:
        if (cn.mucang.android.core.utils.n0.g(r5) == false) goto L7;
        return 65288 + this.f6761d + "）（" + r5 + 65289;
    }
}
