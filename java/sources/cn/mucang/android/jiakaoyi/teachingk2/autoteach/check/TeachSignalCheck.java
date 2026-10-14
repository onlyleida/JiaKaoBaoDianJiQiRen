package cn.mucang.android.jiakaoyi.teachingk2.autoteach.check;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.communicate.MessageSender;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.AssistTeachManager;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.AutoTeachStatus;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.CheckStatusModel;
import com.google.android.exoplayer2.audio.AacUtil;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0011\u001a\u00020\nH\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0006\u0010\u0014\u001a\u00020\u0013R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/BaseTeachCheck;", "isAutoTeach", "", "(Z)V", "gearDesc", "", "initStatus", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/CheckStatusModel;", "lastSignal", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "originVoice", "sendReady", "sender", "Lcn/mucang/android/jiakaoyi/signal/communicate/MessageSender;", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveAssistModel;", "checkStatus", "signalGetter", "reset", "", "resetReady", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachSignalCheck extends BaseTeachCheck {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f6269a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CheckStatusModel f6270d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.c.e f6271e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f6272f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private MessageSender<cn.mucang.android.jiakaoyi.signal.communicate.receive.c> f6273g;

    public TeachSignalCheck(boolean z) {
        String strA;
        this.f6269a = z;
        this.b = "";
        this.c = "";
        CheckStatusModel checkStatusModel = new CheckStatusModel(AutoTeachStatus.CheckSignal);
        if (z) {
            strA = k0.a(R.string.teachbase_leave_start_teach);
            r.d(strA, "{\n            ResUtils.g…ve_start_teach)\n        }");
        } else {
            String str = cn.mucang.android.jiakaoyi.signal.utils.f.b() ? "D" : "1";
            StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
            String strA2 = k0.a(R.string.teachbase_please_gear_x);
            r.d(strA2, "getString(R.string.teachbase_please_gear_x)");
            String str2 = String.format(strA2, Arrays.copyOf(new Object[]{str}, 1));
            r.d(str2, "java.lang.String.format(format, *args)");
            this.b = str2;
            String strA3 = k0.a(R.string.teachbase_holdon_start_teach);
            r.d(strA3, "getString(R.string.teachbase_holdon_start_teach)");
            strA = String.format(strA3, Arrays.copyOf(new Object[]{str}, 1));
            r.d(strA, "java.lang.String.format(format, *args)");
        }
        this.c = strA;
        checkStatusModel.i(strA);
        v vVar = v.f15822a;
        this.f6270d = checkStatusModel;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autoteach.check.BaseTeachCheck
    public CheckStatusModel a(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        CarModel carModelD;
        r.e(signalGetter, "signalGetter");
        boolean z = false;
        if (this.f6269a) {
            cn.mucang.android.jiakaoyi.signal.c.e eVar = this.f6271e;
            if (eVar != null && (carModelD = eVar.d()) != null && !carModelD.f5268f) {
                z = true;
            }
            if (z && signalGetter.d().f5268f) {
                return null;
            }
            this.f6271e = signalGetter;
            return this.f6270d;
        }
        if (!this.f6272f && this.f6273g == null) {
            MessageSender<cn.mucang.android.jiakaoyi.signal.communicate.receive.c> messageSender = new MessageSender<>(cn.mucang.android.jiakaoyi.signal.communicate.receive.c.class, 1, 0L, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.check.TeachSignalCheck$checkStatus$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    cn.mucang.android.jiakaoyi.signal.communicate.v vVar = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
                    vVar.c((byte) 5);
                    vVar.c((byte) 0);
                    vVar.c((byte) 2);
                    vVar.c(AssistTeachManager.d(AssistTeachManager.f6339a.b().getF6281f()));
                    m.h().Q(Cmd.AutoAssist, vVar.b());
                }
            }, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.check.TeachSignalCheck$checkStatus$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    u.h(k0.a(R.string.teachbase_teach_ready_timeout));
                    cn.mucang.android.jiakaoyi.framework.log.f.o("辅助示教准备超时");
                    this.this$0.d();
                }
            }, new Function1<cn.mucang.android.jiakaoyi.signal.communicate.receive.c, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.check.TeachSignalCheck$checkStatus$3
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ v invoke(cn.mucang.android.jiakaoyi.signal.communicate.receive.c cVar) {
                    invoke2(cVar);
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(cn.mucang.android.jiakaoyi.signal.communicate.receive.c it) {
                    r.e(it, "it");
                    this.this$0.f6272f = true;
                }
            }, 4, null);
            this.f6273g = messageSender;
            if (messageSender != null) {
                messageSender.i();
            }
        }
        this.f6270d.i(this.c);
        this.f6270d.f(0);
        if (this.f6272f && this.f6270d.getF6350e() != 0) {
            if (signalGetter.d().m != Gear.Gear1 && signalGetter.d().m != Gear.GearD) {
                this.f6270d.i(this.b);
                this.f6270d.f(AacUtil.AAC_HE_V2_MAX_RATE_BYTES_PER_SECOND);
            } else {
                if (signalGetter.d().f5268f) {
                    return null;
                }
                this.f6270d.i(k0.a(R.string.teachbase_please_release_handbrake));
                this.f6270d.f(AacUtil.AAC_HE_V2_MAX_RATE_BYTES_PER_SECOND);
            }
        }
        this.f6271e = signalGetter;
        return this.f6270d;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autoteach.check.BaseTeachCheck
    public void b() {
        this.f6272f = false;
        this.f6273g = null;
        this.f6271e = null;
        this.f6270d.h(0L);
    }

    public final void d() {
        if (this.f6272f) {
            cn.mucang.android.jiakaoyi.signal.communicate.v vVar = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
            vVar.c((byte) 5);
            vVar.c((byte) 2);
            m.h().Q(Cmd.AutoAssist, vVar.b());
        }
        b();
    }
}
