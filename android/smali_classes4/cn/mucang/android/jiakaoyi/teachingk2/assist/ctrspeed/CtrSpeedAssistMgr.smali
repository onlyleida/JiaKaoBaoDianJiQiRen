.class public final Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;
.super Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008\u00c6\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u001d\u001a\u00020\u0017H\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u001e\u001a\u00020\u0013H\u0016J\u0018\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u0013H\u0002J\u0012\u0010!\u001a\u00020\u00172\u0008\u0008\u0002\u0010 \u001a\u00020\u0013H\u0002J\u0008\u0010\"\u001a\u00020\u0017H\u0002J\u0008\u0010#\u001a\u00020\u0017H\u0016J\u0008\u0010$\u001a\u00020\u0017H\u0016J\u0010\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0005H\u0002J\u0008\u0010\'\u001a\u00020\u0017H\u0002J\u0010\u0010(\u001a\u00020\u00172\u0006\u0010)\u001a\u00020\u0005H\u0002J\u0008\u0010*\u001a\u00020\u0017H\u0016J\u0008\u0010+\u001a\u00020\u0017H\u0002J\u0010\u0010,\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0005H\u0016J\u0018\u0010,\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u00052\u0006\u0010-\u001a\u00020\u0013H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0019\u001a\n \u001b*\u0004\u0018\u00010\u001a0\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/handlers/UnityPageHandler$PageEvent;",
        "()V",
        "KEY_USER_FIRST_ENTER",
        "",
        "SP_NAME",
        "TAG",
        "askDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JCommonDialog;",
        "assistingDialog",
        "Lcn/mucang/android/jiakaoyi/teachingk2/assist/dialog/AssistingDialog;",
        "callback",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;",
        "carStateDialog",
        "carStopChecker",
        "Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CarStopChecker;",
        "isAssisting",
        "",
        "needAsk",
        "onEndDialogDismiss",
        "Lkotlin/Function0;",
        "",
        "onEndDialogShow",
        "sp",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "unityStart",
        "checkFirstEnterCtrSpeedPage",
        "isSupportAssist",
        "notifyUnity",
        "showBubble",
        "notifyUnityStart",
        "notifyUnityStop",
        "onEnter",
        "onExit",
        "realStop",
        "reason",
        "showCarStateTipDialog",
        "showFirstEnterDialog",
        "record",
        "start",
        "startInner",
        "stop",
        "sendOrder",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;

.field private static final f:Landroid/content/SharedPreferences;

.field private static g:Z

.field private static h:Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/n;

.field private static i:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

.field private static j:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

.field private static k:Z

.field private static l:Z

.field private static final m:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;

.field private static final n:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;

    const-string v0, "usr_record"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/j0;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->f:Landroid/content/SharedPreferences;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->k:Z

    .line 3
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->l:Z

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr$carStopChecker$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr$carStopChecker$1;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;-><init>(Lkotlin/jvm/b/a;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->m:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/d;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->n:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr$onEndDialogShow$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr$onEndDialogShow$1;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->o:Lkotlin/jvm/b/a;

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr$onEndDialogDismiss$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr$onEndDialogDismiss$1;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->p:Lkotlin/jvm/b/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_speed_subsidiary:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teachbase_speed_subsidiary)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic C()Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->i:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    return-object v0
.end method

.method public static final synthetic D()Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/n;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->h:Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/n;

    return-object v0
.end method

.method public static final synthetic E()Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->j:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    return-object v0
.end method

.method public static final synthetic F()Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->m:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;

    return-object v0
.end method

.method public static final synthetic G(Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->a0()V

    return-void
.end method

.method public static final synthetic H(Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->b0(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic I(Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->u(Landroid/app/Dialog;)V

    return-void
.end method

.method public static final synthetic J(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->g:Z

    return-void
.end method

.method public static final synthetic K(Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/n;)V
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->h:Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/n;

    return-void
.end method

.method private static final L(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;->id:Ljava/lang/String;

    const-string v1, "211"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;->c:I

    const/16 v0, 0xfa0

    if-ne p0, v0, :cond_0

    .line 3
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;

    const-string v0, "\u8fdb\u5165\u63a7\u901f\u7ec3\u4e60\u9875\u9762"

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->M()V

    :cond_0
    return-void
.end method

.method private final M()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->l:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/g;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static final N()V
    .locals 9

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->f:Landroid/content/SharedPreferences;

    const-string v1, "key_user_first_enter"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->f0(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const-string v1, ","

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v0

    invoke-static/range {v3 .. v8}, Lkotlin/text/l;->p0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/s;->S(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->f0(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic P(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->i0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->g0()V

    return-void
.end method

.method public static synthetic R(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->L(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;)V

    return-void
.end method

.method public static synthetic S(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->e0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T(Ljava/lang/String;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->j0(Ljava/lang/String;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic U()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->N()V

    return-void
.end method

.method public static synthetic V(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->h0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic W(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->d0(Landroid/view/View;)V

    return-void
.end method

.method private final X(ZZ)V
    .locals 2

    .line 1
    sput-boolean p2, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->k:Z

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CtrSpeedAssistModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CtrSpeedAssistModel;-><init>()V

    .line 3
    iput-boolean p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CtrSpeedAssistModel;->playHelperTip:Z

    xor-int/lit8 p1, p2, 0x1

    .line 4
    iput p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CtrSpeedAssistModel;->state:I

    .line 5
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;

    if-eqz p2, :cond_0

    const-string p2, "\u7a7a\u95f2"

    goto :goto_0

    :cond_0
    const-string p2, "\u8f85\u52a9\u4e2d"

    :goto_0
    const-string v1, "notifyUnity: "

    invoke-static {v1, p2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void
.end method

.method private final Y(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->X(ZZ)V

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/c;->a(Z)V

    :cond_0
    return-void
.end method

.method static synthetic Z(Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->Y(Z)V

    return-void
.end method

.method private final a0()V
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->X(ZZ)V

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/c;->a(Z)V

    :cond_0
    return-void
.end method

.method private final b0(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->m:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/j;->e()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->h:Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/n;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/n;->dismiss()V

    .line 3
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->o:Lkotlin/jvm/b/a;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->p:Lkotlin/jvm/b/a;

    invoke-virtual {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->v(Ljava/lang/String;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    .line 4
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/d;->d(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;)V

    return-void
.end method

.method private final c0()V
    .locals 16

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->j:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    :goto_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "getCurrentActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_speed_subsidiary_tips:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 5
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_stop_and_start_engine:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 6
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_dialog_button_cancel:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v6

    .line 7
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_dialog_button_confirm:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v8

    sget-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/i;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/i;

    .line 8
    sget-object v9, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/e;

    .line 9
    new-instance v2, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    const-string v3, "getString(R.string.teach\u2026se_stop_and_start_engine)"

    .line 10
    invoke-static {v5, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x180

    const/4 v15, 0x0

    move-object v3, v2

    .line 11
    invoke-direct/range {v3 .. v15}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;ZZILkotlin/jvm/internal/o;)V

    .line 12
    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->j:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    if-nez v0, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void
.end method

.method private static final d0(Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->Z(Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final e0(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->j:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->l0()V

    :cond_1
    return-void
.end method

.method private final f0(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->a0()V

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/c;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_user_first_enter"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static final g0()V
    .locals 19

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_first_speed_train:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->i:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :goto_0
    sget-object v14, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;

    new-instance v15, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v13

    const-string v1, "getCurrentActivity()"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_need_help:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_dialog_button_cancel:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 7
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_dialog_button_confirm:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v6

    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/h;

    .line 8
    sget-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/b;

    .line 9
    new-instance v12, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    const-string v1, "desc"

    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x180

    const/16 v17, 0x0

    move-object v1, v12

    move-object v3, v0

    move-object/from16 v18, v12

    move/from16 v12, v16

    move-object/from16 v16, v14

    move-object v14, v13

    move-object/from16 v13, v17

    .line 11
    invoke-direct/range {v1 .. v13}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;ZZILkotlin/jvm/internal/o;)V

    move-object/from16 v1, v18

    .line 12
    invoke-direct {v15, v14, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    sput-object v15, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->i:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    if-nez v15, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/f;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 14
    :goto_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->i:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :goto_2
    move-object/from16 v1, v16

    .line 15
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->A(Ljava/lang/String;)V

    .line 16
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->Teach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    return-void
.end method

.method private static final h0(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->l:Z

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->Y(Z)V

    return-void
.end method

.method private static final i0(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->l:Z

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->k0()V

    return-void
.end method

.method private static final j0(Ljava/lang/String;Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;

    const-string v0, "desc"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->A(Ljava/lang/String;)V

    return-void
.end method

.method private final l0()V
    .locals 8

    const-string v0, "\u5f00\u59cb\u63a7\u901f\u8f85\u52a9"

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    .line 2
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr$startInner$1;

    invoke-direct {v4, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr$startInner$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->s(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;IILkotlin/jvm/b/a;Lkotlin/jvm/b/a;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public O()Z
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->AutoAssist:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "\u81ea\u52a8\u8f85\u52a9\u5f00\u5173\u5173\u95ed"

    .line 2
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5317\u6597\u65e0\u63a7\u901f\u8f85\u52a9\u529f\u80fd"

    .line 4
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public g()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->n:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->j(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->l:Z

    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->g:Z

    return v0
.end method

.method public k0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->g:Z

    if-eqz v0, :cond_1

    const-string v0, "\u6b63\u5728\u63a7\u901f\u8f85\u52a9\u4e2d..."

    .line 3
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->a0()V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->i:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    :cond_2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->c0()V

    :cond_3
    return-void

    .line 8
    :cond_4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->l0()V

    return-void
.end method

.method public m0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->y(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic n()V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/z;->a(Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;)V

    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->n:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->l(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/c;->a(Z)V

    return-void
.end method

.method public y(Ljava/lang/String;Z)V
    .locals 8

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7ed3\u675f\u63a7\u901f\u8f85\u52a9, \u7406\u7531: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isAssisting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->i()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->z()V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 v2, 0x2

    const/4 v3, 0x2

    .line 5
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr$stop$1;

    invoke-direct {v4, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr$stop$1;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->s(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;IILkotlin/jvm/b/a;Lkotlin/jvm/b/a;ILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->b0(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
