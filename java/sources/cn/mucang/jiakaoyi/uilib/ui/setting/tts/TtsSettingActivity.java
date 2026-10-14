package cn.mucang.jiakaoyi.uilib.ui.setting.tts;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.base.MultiClickListener;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.tts.TtsConfig;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.jiakaoyi.uilib.ui.dialog.o0;
import cn.mucang.jiakaoyi.uilib.ui.setting.VoiceTestActivity;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.SettingTtsActivityBinding;
import java.io.File;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\n\u001a\u00020\u000bH\u0002J\b\u0010\f\u001a\u00020\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\b\u0010\u0011\u001a\u00020\u000bH\u0014J\b\u0010\u0012\u001a\u00020\u000bH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "()V", "index", "", "speakers", "", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;", "viewBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;", "checkGrade", "", "getStatName", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onResume", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TtsSettingActivity extends BaseActivity {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f10254d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SettingTtsActivityBinding f10255a;
    private final List<TtsGrade> b = u.m(TtsGrade.SpecialVoice, TtsGrade.GlobalError, TtsGrade.Teach, TtsGrade.VoiceRobot);
    private int c;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsSettingActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) TtsSettingActivity.class));
        }
    }

    private final void g() {
        RadioButton[] radioButtonArr = new RadioButton[5];
        SettingTtsActivityBinding settingTtsActivityBinding = this.f10255a;
        if (settingTtsActivityBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        radioButtonArr[0] = settingTtsActivityBinding.speed30;
        if (settingTtsActivityBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        radioButtonArr[1] = settingTtsActivityBinding.speed40;
        if (settingTtsActivityBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        radioButtonArr[2] = settingTtsActivityBinding.speed50;
        if (settingTtsActivityBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        radioButtonArr[3] = settingTtsActivityBinding.speed60;
        if (settingTtsActivityBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        radioButtonArr[4] = settingTtsActivityBinding.speed70;
        for (RadioButton radioButton : u.f(radioButtonArr)) {
            Object tag = radioButton.getTag();
            Objects.requireNonNull(tag, "null cannot be cast to non-null type kotlin.String");
            if (r.a((String) tag, String.valueOf(TtsConfig.e()))) {
                SettingTtsActivityBinding settingTtsActivityBinding2 = this.f10255a;
                if (settingTtsActivityBinding2 != null) {
                    settingTtsActivityBinding2.speedRadio.check(radioButton.getId());
                    return;
                } else {
                    r.u("viewBinding");
                    throw null;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(TtsSettingActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(View view) {
        KeMu kemu = KeMu.parse(AppUtils.a());
        r.d(kemu, "kemu");
        if (ExamSiteUtil.m(kemu) == null && kemu == KeMu.K3) {
            cn.mucang.android.core.utils.u.h("请先选择启用的考场");
        } else {
            cn.mucang.android.jiakaoyi.framework.log.f.o("点击下载语音包按钮");
            new o0(view.getContext(), null).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(TtsSettingActivity this$0, View view) {
        r.e(this$0, "this$0");
        final String strM = cn.mucang.android.jiakaoyi.framework.tts.i.b.m();
        if (new File(strM).exists()) {
            new JCommonDialog(this$0, new JCommonDialog.DialogParams("提示", "清除缓存后，首次播放的语音会播放较慢，因为将会重新合成，确定清除吗？", "确定", new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.tts.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TtsSettingActivity.t(strM, view2);
                }
            }, (String) null, (View.OnClickListener) null, false, 112, (kotlin.jvm.internal.o) null)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(final String str, View view) {
        n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.tts.g
            @Override // java.lang.Runnable
            public final void run() {
                TtsSettingActivity.u(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(String str) {
        cn.mucang.android.core.utils.m.b(str);
        cn.mucang.android.core.utils.u.h("清除本地的合成数据成功");
        cn.mucang.android.jiakaoyi.framework.log.f.o("客户手动清空合成语音的缓存");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(TtsSettingActivity this$0, RadioGroup radioGroup, int i) {
        r.e(this$0, "this$0");
        Object tag = this$0.findViewById(i).getTag();
        Objects.requireNonNull(tag, "null cannot be cast to non-null type kotlin.String");
        TtsConfig.f(Integer.parseInt((String) tag));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(TtsSettingActivity this$0, View view) {
        r.e(this$0, "this$0");
        String strM = r.m(this$0.getResources().getString(R.string.jkbd_app_name), "，全程智能评判，教练省心学员放心");
        List<TtsGrade> list = this$0.b;
        TtsManager.r(strM, list.get(this$0.c % list.size()));
        this$0.c++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(View view) {
        TtsDebugActivity.a aVar = TtsDebugActivity.f10253d;
        Context context = view.getContext();
        r.d(context, "it.context");
        aVar.a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(TtsSettingActivity this$0, View view) {
        r.e(this$0, "this$0");
        VoicePackPreviewActivity.b.a(this$0);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "语音设置";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        SettingTtsActivityBinding settingTtsActivityBindingInflate = SettingTtsActivityBinding.inflate(getLayoutInflater());
        r.d(settingTtsActivityBindingInflate, "inflate(layoutInflater)");
        this.f10255a = settingTtsActivityBindingInflate;
        if (settingTtsActivityBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        setContentView(settingTtsActivityBindingInflate.getRoot());
        SettingTtsActivityBinding settingTtsActivityBinding = this.f10255a;
        if (settingTtsActivityBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        settingTtsActivityBinding.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.tts.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TtsSettingActivity.q(this.f10260a, view);
            }
        });
        SettingTtsActivityBinding settingTtsActivityBinding2 = this.f10255a;
        if (settingTtsActivityBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        settingTtsActivityBinding2.titleLayout.titleTv.setText("语音设置");
        SettingTtsActivityBinding settingTtsActivityBinding3 = this.f10255a;
        if (settingTtsActivityBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        settingTtsActivityBinding3.titleLayout.titleTv.setOnClickListener(new MultiClickListener(0, 0L, new Function1<View, v>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.tts.TtsSettingActivity.onCreate.2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(View view) {
                invoke2(view);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                r.e(it, "it");
                VoiceTestActivity.f9896a.a(TtsSettingActivity.this);
            }
        }, 3, null));
        SettingTtsActivityBinding settingTtsActivityBinding4 = this.f10255a;
        if (settingTtsActivityBinding4 == null) {
            r.u("viewBinding");
            throw null;
        }
        settingTtsActivityBinding4.titleLayout.actionTv.setVisibility(0);
        SettingTtsActivityBinding settingTtsActivityBinding5 = this.f10255a;
        if (settingTtsActivityBinding5 == null) {
            r.u("viewBinding");
            throw null;
        }
        settingTtsActivityBinding5.titleLayout.actionTv.setText("下载语音包");
        SettingTtsActivityBinding settingTtsActivityBinding6 = this.f10255a;
        if (settingTtsActivityBinding6 == null) {
            r.u("viewBinding");
            throw null;
        }
        settingTtsActivityBinding6.titleLayout.actionTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.tts.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TtsSettingActivity.r(view);
            }
        });
        SettingTtsActivityBinding settingTtsActivityBinding7 = this.f10255a;
        if (settingTtsActivityBinding7 == null) {
            r.u("viewBinding");
            throw null;
        }
        settingTtsActivityBinding7.voiceClearTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.tts.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TtsSettingActivity.s(this.f10261a, view);
            }
        });
        g();
        SettingTtsActivityBinding settingTtsActivityBinding8 = this.f10255a;
        if (settingTtsActivityBinding8 == null) {
            r.u("viewBinding");
            throw null;
        }
        settingTtsActivityBinding8.speedRadio.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.tts.d
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                TtsSettingActivity.v(this.f10259a, radioGroup, i);
            }
        });
        SettingTtsActivityBinding settingTtsActivityBinding9 = this.f10255a;
        if (settingTtsActivityBinding9 == null) {
            r.u("viewBinding");
            throw null;
        }
        settingTtsActivityBinding9.tryListen.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.tts.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TtsSettingActivity.w(this.f10263a, view);
            }
        });
        if (MucangConfig.v()) {
            SettingTtsActivityBinding settingTtsActivityBinding10 = this.f10255a;
            if (settingTtsActivityBinding10 == null) {
                r.u("viewBinding");
                throw null;
            }
            settingTtsActivityBinding10.voiceDebugTv.setVisibility(0);
            SettingTtsActivityBinding settingTtsActivityBinding11 = this.f10255a;
            if (settingTtsActivityBinding11 == null) {
                r.u("viewBinding");
                throw null;
            }
            settingTtsActivityBinding11.voiceDebugTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.tts.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TtsSettingActivity.x(view);
                }
            });
        } else {
            SettingTtsActivityBinding settingTtsActivityBinding12 = this.f10255a;
            if (settingTtsActivityBinding12 == null) {
                r.u("viewBinding");
                throw null;
            }
            settingTtsActivityBinding12.voiceDebugTv.setVisibility(8);
        }
        SettingTtsActivityBinding settingTtsActivityBinding13 = this.f10255a;
        if (settingTtsActivityBinding13 != null) {
            settingTtsActivityBinding13.voicePackDebugTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.tts.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TtsSettingActivity.y(this.f10264a, view);
                }
            });
        } else {
            r.u("viewBinding");
            throw null;
        }
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        TtsManager.H();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0025  */
    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        boolean z;
        String[] list;
        super.onResume();
        File fileC = cn.mucang.android.jiakaoyi.framework.tts.i.c.d().c();
        if (fileC != null && fileC.isDirectory() && (list = fileC.list()) != null) {
            z = (list.length == 0) ^ true;
        }
        SettingTtsActivityBinding settingTtsActivityBinding = this.f10255a;
        if (settingTtsActivityBinding != null) {
            settingTtsActivityBinding.voicePackDebugTv.setVisibility(z ? 0 : 8);
        } else {
            r.u("viewBinding");
            throw null;
        }
    }
}
