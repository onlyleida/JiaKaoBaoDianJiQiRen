package cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators;

import android.app.Activity;
import android.content.DialogInterface;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.h.b;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.LineTipModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.PictureModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VideoModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel;
import cn.mucang.android.jiakaoyi.teachingk2.grade.GradeModel;
import cn.mucang.android.jiakaoyi.teachingk2.grade.TeachConfig;
import cn.mucang.android.jiakaoyi.teachingk2.o0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.AnimTip;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.TeachMediaModel;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResDirUtils;
import cn.mucang.android.jiakaoyi.teachingk2.ui.TeachTipsDialog;
import cn.mucang.android.jiakaoyi.unity.c.d;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.q, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0002H\u0016J\u0006\u0010\u0016\u001a\u00020\u0014J$\u0010\u0017\u001a\u00020\u00142\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0019H\u0002J\u0006\u0010\u001d\u001a\u00020\u0004J\u0006\u0010\u001e\u001a\u00020\u0014J\u0012\u0010\u001f\u001a\u00020\u00142\b\u0010 \u001a\u0004\u0018\u00010\u0010H\u0002J\u0006\u0010!\u001a\u00020\u0014R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TeachOutputHelper;", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;", "isAutoTeach", "", "needCountDown", "(ZZ)V", "callbackInterceptor", "Lkotlin/Function0;", "getCallbackInterceptor", "()Lkotlin/jvm/functions/Function0;", "setCallbackInterceptor", "(Lkotlin/jvm/functions/Function0;)V", "getNeedCountDown", "()Z", "teachModel", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;", "tipDialog", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;", "callback", "", "data", "dismissDialog", "doSendTeachMediaTip", "url", "", "type", "", "tip", "isShowingTeach", "reset", "showDialog", "mediaModel", "showLastTeach", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachOutputHelper implements b<FormModel> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f8445a;
    private final boolean b;
    private TeachTipsDialog c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TeachMediaModel f8446d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Function0<Boolean> f8447e;

    public TeachOutputHelper(boolean z, boolean z2) {
        this.f8445a = z;
        this.b = z2;
    }

    private final void c(String str, int i, String str2) {
        if (n0.f(str)) {
            return;
        }
        TeachMediaModel teachMediaModel = new TeachMediaModel();
        r.c(str);
        File file = new File(ResDirUtils.g(str, i == 1));
        if (file.exists()) {
            teachMediaModel.type = i;
            teachMediaModel.tip = str2;
            teachMediaModel.fileName = file.getAbsolutePath();
            d.e(teachMediaModel);
        }
        i(teachMediaModel);
    }

    private final void i(TeachMediaModel teachMediaModel) {
        Activity activityI = MucangConfig.i();
        if (activityI == null || activityI.isFinishing() || activityI.isDestroyed() || teachMediaModel == null) {
            return;
        }
        if (this.c == null) {
            Activity activityI2 = MucangConfig.i();
            r.d(activityI2, "getCurrentActivity()");
            TeachTipsDialog teachTipsDialog = new TeachTipsDialog(activityI2);
            this.c = teachTipsDialog;
            if (teachTipsDialog != null) {
                teachTipsDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.i
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        TeachOutputHelper.j(this.f8429a, dialogInterface);
                    }
                });
            }
        }
        TeachTipsDialog teachTipsDialog2 = this.c;
        if (teachTipsDialog2 != null) {
            teachTipsDialog2.f(teachMediaModel, this.b, (androidx.appcompat.app.d) activityI);
        }
        this.f8446d = teachMediaModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(TeachOutputHelper this$0, DialogInterface dialogInterface) {
        r.e(this$0, "this$0");
        this$0.c = null;
    }

    @Override // cn.mucang.android.jiakaoyi.framework.h.b
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void callback(FormModel data) {
        r.e(data, "data");
        Function0<Boolean> function0 = this.f8447e;
        if (function0 != null && function0.invoke().booleanValue()) {
            f.o("当前触发库位展示教学输出被拦截");
            return;
        }
        GradeModel gradeModelC = this.f8445a ? TeachConfig.c() : TeachConfig.a();
        if ((data instanceof PictureModel) && gradeModelC.getPicture()) {
            c(((PictureModel) data).imageUrl, 0, data.tm.getShowText());
            return;
        }
        if ((data instanceof VideoModel) && gradeModelC.getVideo()) {
            c(((VideoModel) data).videoUrl, 1, null);
            return;
        }
        if (data instanceof VoiceModel) {
            o0.a((VoiceModel) data, gradeModelC);
            return;
        }
        if ((data instanceof LineTipModel) && gradeModelC.getLine()) {
            AnimTip animTip = new AnimTip();
            animTip.isOn = true;
            LineTipModel lineTipModel = (LineTipModel) data;
            int i = lineTipModel.lineType;
            if (i == 2) {
                animTip.color = "#ff0000";
                animTip.type = AnimTip.TYPE_DRAW_LINE;
            } else if (i == 1) {
                if (TeachConfig.d()) {
                    return;
                }
                List<Pos> list = lineTipModel.lines;
                if (list != null && list.size() == 2) {
                    animTip.color = "#00ff00";
                    animTip.type = AnimTip.TYPE_RECT;
                }
            } else if (i == 3) {
                animTip.color = "#ff0000";
                animTip.type = AnimTip.TYPE_POINT;
            } else if (i == 5) {
                animTip.color = "#ff0000";
                animTip.type = AnimTip.TYPE_ANGLE;
            } else if (i == 4) {
                animTip.color = "#ff0000";
                animTip.type = AnimTip.TYPE_AREA;
            }
            animTip.positions = lineTipModel.lines;
            animTip.duration = lineTipModel.duration;
            animTip.offTime = lineTipModel.offTime;
            animTip.onTime = lineTipModel.onTime;
            d.e(animTip);
            LiveBus.d(AnimTip.class).l(animTip);
        }
    }

    public final void b() {
        TeachTipsDialog teachTipsDialog = this.c;
        if (teachTipsDialog == null) {
            return;
        }
        DialogExtensionKt.b(teachTipsDialog);
    }

    public final Function0<Boolean> d() {
        return this.f8447e;
    }

    public final boolean e() {
        return this.c != null;
    }

    public final void g() {
        this.f8446d = null;
    }

    public final void h(Function0<Boolean> function0) {
        this.f8447e = function0;
    }

    public final void k() {
        TeachMediaModel teachMediaModel = this.f8446d;
        if (teachMediaModel == null) {
            u.h(k0.a(R.string.teachbase_no_pic_teaching));
        } else {
            i(teachMediaModel);
        }
    }

    public /* synthetic */ TeachOutputHelper(boolean z, boolean z2, int i, o oVar) {
        this(z, (i & 2) != 0 ? true : z2);
    }
}
