package cn.mucang.jiakaoyi.uilib.ui.setting;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.ReceiveSenorInfo;
import com.mucang.android.jiakaoyi.uilib.databinding.DebugBrakeStateBinding;
import com.mucang.android.jiakaoyi.uilib.databinding.DebugBrakeStateItemBinding;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00162\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0003\u0016\u0017\u0018B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0014J\b\u0010\u0012\u001a\u00020\u0011H\u0014J\u0010\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u000b\u001a\f\u0012\b\u0012\u00060\rR\u00020\u00000\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugBrakeStateBinding;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "isStart", "", "lastTime", "", "list", "", "Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;", "getStatName", "", "init", "", "onDestroy", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "Companion", "DebugBinder", "DebugModel", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class BrakeStateDebugActivity extends BaseViewBindingActivity<DebugBrakeStateBinding> implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f9872f = new a(null);
    private long c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.drakeet.multitype.f f9874e;
    private final List<DebugModel> b = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f9873d = true;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u000b\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u0015"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;", "Ljava/io/Serializable;", "(Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;)V", "brakeSrc", "", "getBrakeSrc", "()Ljava/lang/String;", "setBrakeSrc", "(Ljava/lang/String;)V", "deltaTime", "", "getDeltaTime", "()J", "setDeltaTime", "(J)V", "timeStamp", "getTimeStamp", "setTimeStamp", "value", "getValue", "setValue", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    private final class DebugModel implements Serializable {
        private String brakeSrc;
        private long deltaTime;
        final /* synthetic */ BrakeStateDebugActivity this$0;
        private long timeStamp;
        private String value;

        public DebugModel(BrakeStateDebugActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this.this$0 = this$0;
            this.value = "";
            this.brakeSrc = "";
            this.timeStamp = System.currentTimeMillis();
        }

        public final String getBrakeSrc() {
            return this.brakeSrc;
        }

        public final long getDeltaTime() {
            return this.deltaTime;
        }

        public final long getTimeStamp() {
            return this.timeStamp;
        }

        public final String getValue() {
            return this.value;
        }

        public final void setBrakeSrc(String str) {
            kotlin.jvm.internal.r.e(str, "<set-?>");
            this.brakeSrc = str;
        }

        public final void setDeltaTime(long j) {
            this.deltaTime = j;
        }

        public final void setTimeStamp(long j) {
            this.timeStamp = j;
        }

        public final void setValue(String str) {
            kotlin.jvm.internal.r.e(str, "<set-?>");
            this.value = str;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) BrakeStateDebugActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u0012\u0012\b\u0012\u00060\u0002R\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0001B\u0005¢\u0006\u0002\u0010\u0005J\"\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\t2\n\u0010\n\u001a\u00060\u0002R\u00020\u0003H\u0017¨\u0006\u000b"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;", "Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugBrakeStateItemBinding;", "(Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    private final class b extends ViewBindingBinder<DebugModel, DebugBrakeStateItemBinding> {
        public b(BrakeStateDebugActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
        }

        @Override // com.drakeet.multitype.c
        @SuppressLint({"SetTextI18n"})
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<DebugBrakeStateItemBinding> holder, DebugModel item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            ((DebugBrakeStateItemBinding) holder.getViewBinding()).timeStamp.setText(kotlin.jvm.internal.r.m("时间戳:", Long.valueOf(item.getTimeStamp())));
            ((DebugBrakeStateItemBinding) holder.getViewBinding()).value.setText(kotlin.jvm.internal.r.m("刹车状态:", item.getValue()));
            ((DebugBrakeStateItemBinding) holder.getViewBinding()).src.setText(kotlin.jvm.internal.r.m("刹车来源:", item.getBrakeSrc()));
            ((DebugBrakeStateItemBinding) holder.getViewBinding()).delta.setText(kotlin.jvm.internal.r.m("时间间隔:", Long.valueOf(item.getDeltaTime())));
        }
    }

    public BrakeStateDebugActivity() {
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(DebugModel.class, new b(this));
        kotlin.v vVar = kotlin.v.f15822a;
        this.f9874e = fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(BrakeStateDebugActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.f9873d = !this$0.f9873d;
        this$0.g().action.setText(this$0.f9873d ? "暂停" : "开始");
        if (this$0.f9873d) {
            cn.mucang.android.jiakaoyi.signal.c.d.m.b(this$0);
        } else {
            cn.mucang.android.jiakaoyi.signal.c.d.m.n(this$0);
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "刹车状态调试页面";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
        g().dataRcv.setLayoutManager(new GridLayoutManager(this, 4));
        g().dataRcv.setAdapter(this.f9874e);
        g().action.setText("暂停");
        g().action.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BrakeStateDebugActivity.j(this.f10161a, view);
            }
        });
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        DebugModel debugModel = new DebugModel(this);
        debugModel.setDeltaTime(System.currentTimeMillis() - this.c);
        this.c = System.currentTimeMillis();
        ReceiveSenorInfo receiveSenorInfo = signalGetter.d().G;
        if (receiveSenorInfo != null) {
            debugModel.setValue(String.valueOf(receiveSenorInfo.safeBoardBrakeState.id));
            String str = receiveSenorInfo.safeModuleBrakeReason.src;
            kotlin.jvm.internal.r.d(str, "senorInfo.safeModuleBrakeReason.src");
            debugModel.setBrakeSrc(str);
        }
        if (this.b.size() > 500) {
            List<DebugModel> list = this.b;
            list.remove(list.size() - 1);
        } else {
            this.b.add(0, debugModel);
        }
        this.f9874e.i(this.b);
        this.f9874e.notifyDataSetChanged();
    }
}
