package cn.mucang.jiakaoyi.uilib.ui.setting;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import com.mucang.android.jiakaoyi.uilib.databinding.ActivityVoiceTestBinding;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0014J\b\u0010\t\u001a\u00020\u0006H\u0014¨\u0006\u000b"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/VoiceTestActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "()V", "getStatName", "", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class VoiceTestActivity extends BaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f9896a = new a(null);

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/VoiceTestActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) VoiceTestActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/VoiceTestActivity$onCreate$adapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends com.drakeet.multitype.f {
        b() {
            super(null, 0, null, 7, null);
            g(TtsGrade.class, new VoiceTestItemBinder());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(VoiceTestActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "语音播放测试页面";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ActivityVoiceTestBinding activityVoiceTestBindingInflate = ActivityVoiceTestBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(activityVoiceTestBindingInflate, "inflate(layoutInflater)");
        setContentView(activityVoiceTestBindingInflate.getRoot());
        activityVoiceTestBindingInflate.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.n0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceTestActivity.h(this.f10172a, view);
            }
        });
        activityVoiceTestBindingInflate.titleLayout.titleTv.setText("语音播放测试");
        activityVoiceTestBindingInflate.titleLayout.actionTv.setVisibility(8);
        b bVar = new b();
        activityVoiceTestBindingInflate.voiceGrade.setAdapter(bVar);
        activityVoiceTestBindingInflate.voiceGrade.setLayoutManager(new LinearLayoutManager(this));
        bVar.i(ArraysKt___ArraysKt.h0(TtsGrade.values()));
        bVar.notifyDataSetChanged();
        ArrayList arrayList = new ArrayList();
        arrayList.add("1111111");
        arrayList.add("2222222");
        arrayList.add("3333333");
        arrayList.add("4444444");
        arrayList.add("5555555");
        arrayList.add("6666666");
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            TtsManager.r((String) it.next(), TtsGrade.ExamDeduct);
        }
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        TtsManager.H();
    }
}
