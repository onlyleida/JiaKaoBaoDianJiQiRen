package cn.mucang.jiakaoyi.uilib.ui.setting.tts;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import com.mucang.android.jiakaoyi.uilib.databinding.SettingTtsDebugBinding;
import com.mucang.android.jiakaoyi.uilib.databinding.SettingTtsDebugItemBinding;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\r\u000eB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugBinding;", "()V", "index", "", "speakers", "", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;", "getStatName", "", "init", "", "Companion", "VoiceItemBinder", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TtsDebugActivity extends BaseViewBindingActivity<SettingTtsDebugBinding> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f10253d = new a(null);
    private final List<TtsGrade> b = u.m(TtsGrade.SpecialVoice, TtsGrade.GlobalError, TtsGrade.Teach, TtsGrade.VoiceRobot);
    private int c;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) TtsDebugActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity$VoiceItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "", "Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugItemBinding;", "(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class b extends ViewBindingBinder<String, SettingTtsDebugItemBinding> {
        final /* synthetic */ TtsDebugActivity b;

        public b(TtsDebugActivity this$0) {
            r.e(this$0, "this$0");
            this.b = this$0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void p(String item, TtsDebugActivity this$0, View view) {
            r.e(item, "$item");
            r.e(this$0, "this$0");
            TtsManager.r(item, (TtsGrade) this$0.b.get(this$0.c % this$0.b.size()));
            this$0.c++;
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<SettingTtsDebugItemBinding> holder, final String item) {
            r.e(holder, "holder");
            r.e(item, "item");
            ((SettingTtsDebugItemBinding) holder.getViewBinding()).getRoot().setText(item);
            TextView root = ((SettingTtsDebugItemBinding) holder.getViewBinding()).getRoot();
            final TtsDebugActivity ttsDebugActivity = this.b;
            root.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.tts.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TtsDebugActivity.b.p(item, ttsDebugActivity, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(TtsDebugActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(TtsDebugActivity this$0, View view) {
        r.e(this$0, "this$0");
        String string = this$0.g().editTv.getText().toString();
        List<TtsGrade> list = this$0.b;
        TtsManager.r(string, list.get(this$0.c % list.size()));
        this$0.c++;
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "语音调试";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().titleLayout.titleTv.setText("语音调试");
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.tts.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TtsDebugActivity.m(this.f10256a, view);
            }
        });
        g().recyclerView.setLayoutManager(new LinearLayoutManager(this));
        g().recyclerView.addItemDecoration(new androidx.recyclerview.widget.d(this, 1));
        RecyclerView recyclerView = g().recyclerView;
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(String.class, new b(this));
        fVar.i(u.p("高于一挡行驶", "挡位与速度不匹配", "行驶中空挡滑行", "倒库不入", "放手刹时没踩脚刹", "拉手刹时没踩脚刹", "在项目外长时间使用灯光", "空挡踩油门", "起步超时（从放手刹开始）", "未按语音指令平稳加减挡", "车辆停稳后未按规定拉起手刹", "请系安全带", "未松开手刹即起步", "牢牢记住前机盖与前边线（即上边线）的位置关系，此处是向左打满方向的关键参照点，现在请左打满继续练习", "牢牢记住左后视镜根部下沿与控制线下沿的关系，现在请向右打满方向，打开右转向灯，慢抬离合器继续倒车，观察左后视镜", "侧方停车，靠右侧边线慢速行驶，注意雨刷器铆钉处，始终与道路右边线保持重合行驶", "牢牢记住左后视镜根部下沿与停车桩线的关系，现在请慢抬离合，车辆抖动或者车头抬起时，放下手刹松开脚刹继续上坡", "进入曲线，请慢速行驶，观察前机盖左侧三分之一处与道路右边线重合时迅速左打一圈加九十度方向"));
        v vVar = v.f15822a;
        recyclerView.setAdapter(fVar);
        g().playTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.tts.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TtsDebugActivity.n(this.f10257a, view);
            }
        });
    }
}
