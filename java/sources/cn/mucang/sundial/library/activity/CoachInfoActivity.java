package cn.mucang.sundial.library.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.d;
import androidx.lifecycle.a0;
import cn.mucang.android.core.utils.s0;
import cn.mucang.android.core.utils.u;
import cn.mucang.sundial.android.PersonMode;
import cn.mucang.sundial.android.db.entity.CoachInfo;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.CoachLogoutResponseEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.upload.TakePhotoManager;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.databinding.TtActivityCoachInfoBinding;
import cn.mucang.sundial.library.entity.CheckMode;
import cn.mucang.sundial.library.entity.ExtraKey;
import cn.mucang.sundial.library.tts.Tts;
import cn.mucang.sundial.library.util.KtxsKt;
import cn.mucang.sundial.library.util.LoginUtil;
import cn.mucang.sundial.library.viewmodel.CoachInfoViewModel;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.resource.bitmap.RoundedCorners;
import com.mobile.auth.gatewayauth.Constant;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001d\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\t\u0010\u0004J\u0019\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ)\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0016\u0010\u0004R\u0016\u0010\u0018\u001a\u00020\u00178\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001b\u001a\u00020\u001a8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcn/mucang/sundial/library/activity/CoachInfoActivity;", "Lcn/mucang/sundial/library/activity/BaseActivity;", "Lkotlin/v;", "initView", "()V", "Lcn/mucang/sundial/android/db/entity/CoachInfo;", "coachInfo", "updateUI", "(Lcn/mucang/sundial/android/db/entity/CoachInfo;)V", "initViewModel", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/os/Bundle;)Landroid/view/View;", "", Constant.LOGIN_ACTIVITY_REQUEST_CODE, "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "onDestroy", "Lcn/mucang/sundial/library/databinding/TtActivityCoachInfoBinding;", "binding", "Lcn/mucang/sundial/library/databinding/TtActivityCoachInfoBinding;", "Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel;", "viewModel", "Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel;", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class CoachInfoActivity extends BaseActivity {
    private TtActivityCoachInfoBinding binding;
    private CoachInfoViewModel viewModel;

    public static final /* synthetic */ TtActivityCoachInfoBinding access$getBinding$p(CoachInfoActivity coachInfoActivity) {
        TtActivityCoachInfoBinding ttActivityCoachInfoBinding = coachInfoActivity.binding;
        if (ttActivityCoachInfoBinding != null) {
            return ttActivityCoachInfoBinding;
        }
        r.u("binding");
        throw null;
    }

    private final void initView() {
        TtActivityCoachInfoBinding ttActivityCoachInfoBinding = this.binding;
        if (ttActivityCoachInfoBinding == null) {
            r.u("binding");
            throw null;
        }
        ttActivityCoachInfoBinding.signOut.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.CoachInfoActivity$initView$$inlined$with$lambda$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialLog.normal("按钮点击教练登出");
                if (!DeviceUtils.hasNetWork()) {
                    SundialLog.normal("网络连接异常");
                    String string = this.this$0.getString(R.string.tt_net_error);
                    r.d(string, "getString(R.string.tt_net_error)");
                    Tts.speak$default(string, null, 2, null);
                    return;
                }
                if (!TakePhotoManager.isTakingPhoto()) {
                    SundialLog.normal("教练登出人脸检测");
                    LoginUtil.INSTANCE.logoutWithFaceCheck(this.this$0, PersonMode.COACH.ordinal());
                } else {
                    SundialLog.normal("正在拍照请稍候");
                    String string2 = this.this$0.getString(R.string.tt_voice_taking);
                    r.d(string2, "getString(R.string.tt_voice_taking)");
                    Tts.speak$default(string2, null, 2, null);
                }
            }
        });
        ttActivityCoachInfoBinding.studentSignIn.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.CoachInfoActivity$initView$$inlined$with$lambda$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialLog.normal("按钮点击学员登录");
                CoachInfoActivity coachInfoActivity = this.this$0;
                Intent intent = new Intent(this.this$0, (Class<?>) LoginStudentActivity.class);
                intent.putExtra(ExtraKey.personMode, PersonMode.STUDENT.ordinal());
                intent.putExtra(ExtraKey.checkMode, CheckMode.SIGN_IN.ordinal());
                v vVar = v.f15822a;
                coachInfoActivity.startActivityForResult(intent, 3);
            }
        });
        LinearLayout lightingVoice = ttActivityCoachInfoBinding.lightingVoice;
        r.d(lightingVoice, "lightingVoice");
        lightingVoice.setVisibility(DeviceUtils.isSingleApk(this) ? 0 : 8);
        ttActivityCoachInfoBinding.lightingVoice.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.CoachInfoActivity$initView$$inlined$with$lambda$3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialLog.normal("按钮点击灯光语音");
                KtxsKt.safeStartActivity$default(this.this$0, AnalogVoiceBroadcastActivity.class, null, 2, null);
            }
        });
        CoachInfoViewModel coachInfoViewModel = this.viewModel;
        if (coachInfoViewModel != null) {
            coachInfoViewModel.getServerCoachInfo2Update();
        } else {
            r.u("viewModel");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateUI(final CoachInfo coachInfo) {
        u.f(new Runnable() { // from class: cn.mucang.sundial.library.activity.CoachInfoActivity.updateUI.1
            @Override // java.lang.Runnable
            public final void run() {
                TtActivityCoachInfoBinding ttActivityCoachInfoBindingAccess$getBinding$p = CoachInfoActivity.access$getBinding$p(CoachInfoActivity.this);
                TextView name = ttActivityCoachInfoBindingAccess$getBinding$p.name;
                r.d(name, "name");
                name.setText(coachInfo.getCoachName());
                TextView idCardNum = ttActivityCoachInfoBindingAccess$getBinding$p.idCardNum;
                r.d(idCardNum, "idCardNum");
                idCardNum.setText(KtxsKt.mask(coachInfo.getIdCard(), 4, 11));
                TextView teachType = ttActivityCoachInfoBindingAccess$getBinding$p.teachType;
                r.d(teachType, "teachType");
                teachType.setText(coachInfo.getTeachType());
                TextView coachNo = ttActivityCoachInfoBindingAccess$getBinding$p.coachNo;
                r.d(coachNo, "coachNo");
                coachNo.setText(coachInfo.getCoachNo());
                Glide.with((d) CoachInfoActivity.this).load(coachInfo.getAvatar()).transform(new RoundedCorners(s0.a(6.0f))).into(ttActivityCoachInfoBindingAccess$getBinding$p.avatar);
            }
        });
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public void initViewModel() {
        super.initViewModel();
        CoachInfoViewModel coachInfoViewModel = (CoachInfoViewModel) vm(this, CoachInfoViewModel.class);
        this.viewModel = coachInfoViewModel;
        if (coachInfoViewModel != null) {
            coachInfoViewModel.getCoachInfoData().q(this, new a0<CoachInfo>() { // from class: cn.mucang.sundial.library.activity.CoachInfoActivity.initViewModel.1
                @Override // androidx.lifecycle.a0
                public final void onChanged(CoachInfo coachInfo) {
                    if (coachInfo != null) {
                        CoachInfoActivity.this.updateUI(coachInfo);
                    }
                }
            });
        } else {
            r.u("viewModel");
            throw null;
        }
    }

    @Override // androidx.fragment.app.d, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode != 2) {
            if (requestCode == 3 && resultCode == -1) {
                SundialLog.normal("学员登录完成");
                startActivity(new Intent(this, (Class<?>) StudentInfoActivity.class));
                finish();
                return;
            }
            return;
        }
        if (resultCode == -1) {
            SundialLog.normal("教练登出成功");
            Intent intent = new Intent(this, (Class<?>) LoginActivity.class);
            intent.putExtra(ExtraKey.personMode, PersonMode.COACH.ordinal());
            v vVar = v.f15822a;
            startActivity(intent);
            finish();
        }
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public View onCreateView(Bundle savedInstanceState) {
        TtActivityCoachInfoBinding ttActivityCoachInfoBindingInflate = TtActivityCoachInfoBinding.inflate(LayoutInflater.from(this));
        r.d(ttActivityCoachInfoBindingInflate, "TtActivityCoachInfoBindi…ayoutInflater.from(this))");
        this.binding = ttActivityCoachInfoBindingInflate;
        initView();
        TtActivityCoachInfoBinding ttActivityCoachInfoBinding = this.binding;
        if (ttActivityCoachInfoBinding == null) {
            r.u("binding");
            throw null;
        }
        RelativeLayout root = ttActivityCoachInfoBinding.getRoot();
        r.d(root, "binding.root");
        return root;
    }

    @Override // androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        LiveBus.INSTANCE.with(CoachLogoutResponseEvent.class).n(this);
    }
}
