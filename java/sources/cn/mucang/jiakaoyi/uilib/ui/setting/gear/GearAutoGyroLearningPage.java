package cn.mucang.jiakaoyi.uilib.ui.setting.gear;

import android.content.DialogInterface;
import android.view.View;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.gearsensor.GearPose;
import com.alibaba.fastjson.JSON;
import com.mucang.android.jiakaoyi.uilib.databinding.ActivityTestAutoGearGyroDataBinding;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class GearAutoGyroLearningPage extends BaseViewBindingActivity<ActivityTestAutoGearGyroDataBinding> {
    private boolean c;
    private Map<Gear, TextView> b = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.c.f.a f9958d = new a();

    class a implements cn.mucang.android.jiakaoyi.signal.c.f.a {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            GearPose gearPose = cn.mucang.android.jiakaoyi.signal.gearsensor.d.l;
            ((ActivityTestAutoGearGyroDataBinding) GearAutoGyroLearningPage.this.f3424a).value.setText("当前  :  " + GearAutoGyroLearningPage.this.t(gearPose) + " ,   ,  挡位  :  " + eVar.d().m.gearName);
            for (Map.Entry entry : GearAutoGyroLearningPage.this.b.entrySet()) {
                GearPose gearPoseB = cn.mucang.android.jiakaoyi.signal.gearsensor.d.b((Gear) entry.getKey());
                if (gearPoseB != null) {
                    ((TextView) entry.getValue()).setText("" + GearAutoGyroLearningPage.this.t(gearPoseB));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void m(View view) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void p(Gear gear, final View view, View view2) {
        if (cn.mucang.android.jiakaoyi.signal.gearsensor.d.k()) {
            cn.mucang.android.jiakaoyi.signal.gearsensor.d.g(gear);
            return;
        }
        TtsManager.H();
        TtsManager.r("学习出错,陀螺仪角度不合理，请正确安装，或者给控制盒断电30秒再重试", TtsGrade.GlobalTip);
        new androidx.appcompat.app.c.a(this).setTitle("陀螺仪角度不正确").setMessage("请确定安装是否正确，或者将控制盒断电30秒后再重试").setPositiveButton("重试", new DialogInterface.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.a
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                view.performClick();
            }
        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void r() {
        String jSONString;
        int iHashCode;
        if (this.c) {
            return;
        }
        this.c = true;
        try {
            GearPose[] gearPoseArrA = cn.mucang.android.jiakaoyi.signal.gearsensor.d.a();
            if (gearPoseArrA[Gear.GearN.gear] != null && gearPoseArrA[Gear.GearP.gear] != null && gearPoseArrA[Gear.GearD.gear] != null && gearPoseArrA[Gear.GearBack.gear] != null && (iHashCode = (jSONString = JSON.toJSONString(gearPoseArrA)).hashCode()) != cn.mucang.android.jiakaoyi.framework.utils.i0.d("gyro_gear_sensor_value_version", 0)) {
                new q0().m(jSONString);
                cn.mucang.android.jiakaoyi.framework.utils.i0.k("gyro_gear_sensor_value_version", iHashCode);
            }
        } catch (Throwable th) {
            try {
                cn.mucang.android.core.utils.t.d("TAG", th.getMessage());
            } finally {
                this.c = false;
            }
        }
    }

    private void s(TextView textView, final Gear gear, final View view) {
        GearPose gearPoseB = cn.mucang.android.jiakaoyi.signal.gearsensor.d.b(gear);
        if (gearPoseB == null) {
            gearPoseB = new GearPose();
        }
        textView.setText(t(gearPoseB));
        this.b.put(gear, textView);
        view.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f9988a.p(gear, view, view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String t(GearPose gearPose) {
        return u(gearPose.roll) + " , " + u(gearPose.pitch) + " , " + u(gearPose.yaw);
    }

    private String u(double d2) {
        return String.format("%.1f", Double.valueOf(d2));
    }

    private void v() {
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f10111a.r();
            }
        });
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "挡位传感器标定页面";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        VB vb = this.f3424a;
        s(((ActivityTestAutoGearGyroDataBinding) vb).gn, Gear.GearN, ((ActivityTestAutoGearGyroDataBinding) vb).gnMake);
        VB vb2 = this.f3424a;
        s(((ActivityTestAutoGearGyroDataBinding) vb2).gr, Gear.GearBack, ((ActivityTestAutoGearGyroDataBinding) vb2).grMake);
        VB vb3 = this.f3424a;
        s(((ActivityTestAutoGearGyroDataBinding) vb3).gd, Gear.GearD, ((ActivityTestAutoGearGyroDataBinding) vb3).gdMake);
        VB vb4 = this.f3424a;
        s(((ActivityTestAutoGearGyroDataBinding) vb4).gp, Gear.GearP, ((ActivityTestAutoGearGyroDataBinding) vb4).gpMake);
        ((ActivityTestAutoGearGyroDataBinding) this.f3424a).finish.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f9986a.m(view);
            }
        });
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.f9958d);
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.f9958d);
        v();
    }
}
