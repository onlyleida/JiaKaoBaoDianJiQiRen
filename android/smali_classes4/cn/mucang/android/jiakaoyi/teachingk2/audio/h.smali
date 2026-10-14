.class public final Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/socket/o;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0002\u0017\u001c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020%J\u0008\u0010)\u001a\u00020\'H\u0002J\u0008\u0010*\u001a\u00020\'H\u0002J\u000e\u0010+\u001a\u00020\'2\u0006\u0010(\u001a\u00020%J\u0008\u0010,\u001a\u00020\nH\u0002J\u0010\u0010-\u001a\u00020\'2\u0006\u0010.\u001a\u00020/H\u0002J\u0008\u00100\u001a\u00020\'H\u0007J\u0008\u00101\u001a\u00020\'H\u0007J\u0008\u00102\u001a\u00020\'H\u0016J\u0008\u00103\u001a\u00020\'H\u0016J\u0012\u00104\u001a\u00020\'2\u0008\u00105\u001a\u0004\u0018\u000106H\u0016J\u0008\u00107\u001a\u00020\'H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R$\u0010\u000e\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000f\u0010\u0002\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001dR,\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u00068\u0006@BX\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008 \u0010\u0002\u001a\u0004\u0008!\u0010\u0011\"\u0004\u0008\"\u0010\u0013R\u0014\u0010#\u001a\u0008\u0012\u0004\u0012\u00020%0$X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00068"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioManager;",
        "Lcn/mucang/jiakaoyi/uilib/socket/MCConnectListener;",
        "()V",
        "REFRESH_DURATION",
        "",
        "STATUS_CONNECTED",
        "",
        "STATUS_CONNECTING",
        "STATUS_DISCONNECT",
        "TAG",
        "",
        "TIME_OUT",
        "VOICE_TYPE_AGORA",
        "VOICE_TYPE_FLUORITE",
        "connectedTime",
        "getConnectedTime$annotations",
        "getConnectedTime",
        "()I",
        "setConnectedTime",
        "(I)V",
        "engine",
        "Lio/agora/rtc/RtcEngine;",
        "eventHandler",
        "cn/mucang/android/jiakaoyi/teachingk2/audio/AudioManager$eventHandler$1",
        "Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioManager$eventHandler$1;",
        "handler",
        "Landroid/os/Handler;",
        "refresh",
        "cn/mucang/android/jiakaoyi/teachingk2/audio/AudioManager$refresh$1",
        "Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioManager$refresh$1;",
        "value",
        "status",
        "getStatus$annotations",
        "getStatus",
        "setStatus",
        "views",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;",
        "attachAudioView",
        "",
        "view",
        "call",
        "changeStatus",
        "detachAudioView",
        "getCallTime",
        "hangUp",
        "needCall",
        "",
        "init",
        "onClick",
        "onConnect",
        "onConnectException",
        "onMessage",
        "message",
        "Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;",
        "refreshTime",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;

.field private static b:I

.field private static c:Lio/agora/rtc/RtcEngine;

.field private static final d:Landroid/os/Handler;

.field private static final e:Lcn/mucang/android/jiakaoyi/teachingk2/audio/h$b;

.field private static volatile f:I

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lcn/mucang/android/jiakaoyi/teachingk2/audio/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->d:Landroid/os/Handler;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h$b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h$b;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->e:Lcn/mucang/android/jiakaoyi/teachingk2/audio/h$b;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->g:Ljava/util/List;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h$a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h$a;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->h:Lcn/mucang/android/jiakaoyi/teachingk2/audio/h$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->n()V

    return-void
.end method

.method public static synthetic B()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->b()V

    return-void
.end method

.method public static final C()V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->f:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2
    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->k()V

    .line 3
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->F(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->t(Z)V

    :goto_0
    return-void
.end method

.method private final D()V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->g:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final E(I)V
    .locals 0

    .line 1
    sput p0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->b:I

    return-void
.end method

.method private static final F(I)V
    .locals 5

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->f:I

    if-ne v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->f:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne p0, v2, :cond_1

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->b()V

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->d:Landroid/os/Handler;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/audio/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/audio/f;

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    if-eq p0, v2, :cond_2

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->h()V

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->d:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    :cond_2
    :goto_0
    sput p0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->f:I

    .line 8
    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->m()V

    const/4 v0, 0x0

    .line 9
    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->b:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 10
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->d:Landroid/os/Handler;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->e:Lcn/mucang/android/jiakaoyi/teachingk2/audio/h$b;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 11
    :cond_3
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->d:Landroid/os/Handler;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->e:Lcn/mucang/android/jiakaoyi/teachingk2/audio/h$b;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private static final b()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->t(Z)V

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_call_timeout:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic d()Lio/agora/rtc/RtcEngine;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->c:Lio/agora/rtc/RtcEngine;

    return-object v0
.end method

.method public static final synthetic e()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public static final synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->t(Z)V

    return-void
.end method

.method public static final synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->D()V

    return-void
.end method

.method public static final synthetic h(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->F(I)V

    return-void
.end method

.method private static final j(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->C()V

    return-void
.end method

.method private final k()V
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/audio/c;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final l()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/g;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/g;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/g;->m()Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->F(I)V

    .line 3
    instance-of v1, v0, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_call_fail:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final m()V
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/audio/e;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final n()V
    .locals 4

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->s()I

    move-result v2

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->o(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->g:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->s()I

    move-result v2

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->s()I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcn/mucang/android/jiakaoyi/unity/activity/UnityMainActivity;

    if-eqz v0, :cond_2

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/audio/d;

    const-wide/16 v1, 0x1f4

    .line 7
    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 8
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->q()V

    .line 9
    :cond_2
    :goto_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->b()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->d()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->f()V

    :goto_2
    return-void
.end method

.method private static final o()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->u()V

    return-void
.end method

.method private final q()Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->b:I

    mul-int/lit16 v0, v0, 0x3e8

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/y;->g(IZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final r()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->b:I

    return v0
.end method

.method public static final s()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->f:I

    return v0
.end method

.method private final t(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->F(I)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->c:Lio/agora/rtc/RtcEngine;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/agora/rtc/RtcEngine;->leaveChannel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    const-string v2, "\u58f0\u7f51-\u79bb\u5f00\u623f\u95f4:"

    .line 3
    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/audio/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/audio/b;

    .line 6
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private static final u()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/g;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/g;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/g;->n()V

    .line 3
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 4
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static final v()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->agora_app_id:I

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->h:Lcn/mucang/android/jiakaoyi/teachingk2/audio/h$a;

    .line 5
    invoke-static {v0, v1, v2}, Lio/agora/rtc/RtcEngine;->create(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtc/IRtcEngineEventHandler;)Lio/agora/rtc/RtcEngine;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->c:Lio/agora/rtc/RtcEngine;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u58f0\u7f51\u5f15\u64ce\u521d\u59cb\u5316\u5931\u8d25\uff1a"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string v0, "AudioManager"

    const-string v1, "\u58f0\u7f51\u5f15\u64ce\u521d\u59cb\u5316\u5931\u8d25"

    .line 7
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :goto_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->F(Lcn/mucang/jiakaoyi/uilib/socket/o;)V

    return-void
.end method

.method public static synthetic w(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->j(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->u()V

    return-void
.end method

.method public static synthetic y()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->l()V

    return-void
.end method

.method public static synthetic z()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->o()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c(Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;)V
    .locals 5

    .line 1
    instance-of v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/CallModel;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/socket/model/CallModel;

    iget v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/CallModel;->voiceType:I

    if-nez v0, :cond_0

    .line 3
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->F(I)V

    goto :goto_1

    .line 4
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->c:Lio/agora/rtc/RtcEngine;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/CallModel;->accessToken:Ljava/lang/String;

    iget-object v3, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/CallModel;->channelName:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v1, v3, v4, v2}, Lio/agora/rtc/RtcEngine;->joinChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u58f0\u7f51-\u76d1\u63a7\u4e2d\u5fc3\u547c\u53eb:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/CallModel;->accessToken:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/CallModel;->channelName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c\u52a0\u5165\u7ed3\u679c:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->c:Lio/agora/rtc/RtcEngine;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Lio/agora/rtc/RtcEngine;->adjustRecordingSignalVolume(I)I

    goto :goto_1

    .line 7
    :cond_3
    instance-of v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/CallStatusModel;

    if-eqz v0, :cond_6

    .line 8
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/socket/model/CallStatusModel;

    iget-byte p1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/CallStatusModel;->cmd:B

    if-nez p1, :cond_4

    .line 9
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->t(Z)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 10
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->F(I)V

    goto :goto_1

    :cond_5
    if-ne p1, v1, :cond_6

    .line 11
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_call_busy:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 12
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->F(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final i(Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->f:I

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;->a(ILjava/lang/String;)V

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/audio/a;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onConnect()V
    .locals 0

    return-void
.end method

.method public final p(Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
