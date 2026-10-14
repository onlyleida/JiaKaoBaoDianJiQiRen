.class public final Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;
.super Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0011\u001a\u00020\nH\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0006\u0010\u0014\u001a\u00020\u0013R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/BaseTeachCheck;",
        "isAutoTeach",
        "",
        "(Z)V",
        "gearDesc",
        "",
        "initStatus",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/CheckStatusModel;",
        "lastSignal",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "originVoice",
        "sendReady",
        "sender",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/MessageSender;",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveAssistModel;",
        "checkStatus",
        "signalGetter",
        "reset",
        "",
        "resetReady",
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


# instance fields
.field private final a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private final d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

.field private e:Lcn/mucang/android/jiakaoyi/signal/c/e;

.field private f:Z

.field private g:Lcn/mucang/android/jiakaoyi/signal/communicate/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/signal/communicate/q<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/d;-><init>()V

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->a:Z

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->b:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->c:Ljava/lang/String;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->CheckSignal:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;)V

    if-eqz p1, :cond_0

    .line 5
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_leave_start_teach:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "{\n            ResUtils.g\u2026ve_start_teach)\n        }"

    .line 6
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "D"

    goto :goto_0

    :cond_1
    const-string p1, "1"

    .line 8
    :goto_0
    sget-object v1, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_please_gear_x:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_please_gear_x)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->b:Ljava/lang/String;

    .line 9
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_holdon_start_teach:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "getString(R.string.teachbase_holdon_start_teach)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :goto_1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->i(Ljava/lang/String;)V

    .line 12
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    .line 13
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

    return-void
.end method

.method public static final synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;
    .locals 13

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->e:Lcn/mucang/android/jiakaoyi/signal/c/e;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-eqz v0, :cond_3

    return-object v1

    .line 3
    :cond_3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->e:Lcn/mucang/android/jiakaoyi/signal/c/e;

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

    return-object p1

    .line 5
    :cond_4
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->f:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->g:Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    if-nez v0, :cond_6

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    const-class v4, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    sget-object v8, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck$checkStatus$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck$checkStatus$1;

    new-instance v9, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck$checkStatus$2;

    invoke-direct {v9, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck$checkStatus$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;)V

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck$checkStatus$3;

    invoke-direct {v10, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck$checkStatus$3;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;)V

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->g:Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    if-nez v0, :cond_5

    goto :goto_1

    .line 7
    :cond_5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i()V

    .line 8
    :cond_6
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->i(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->f(I)V

    .line 10
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->f:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_9

    .line 11
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/16 v3, 0x1b58

    if-eq v0, v2, :cond_7

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v2, :cond_7

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->i(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->f(I)V

    goto :goto_2

    .line 14
    :cond_7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez v0, :cond_8

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_please_release_handbrake:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->i(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->f(I)V

    goto :goto_2

    :cond_8
    return-object v1

    .line 17
    :cond_9
    :goto_2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->e:Lcn/mucang/android/jiakaoyi/signal/c/e;

    .line 18
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

    return-object p1
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->f:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->g:Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->e:Lcn/mucang/android/jiakaoyi/signal/c/e;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->h(J)V

    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->f:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    const/4 v1, 0x5

    .line 3
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AutoAssist:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->Q(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)Z

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->b()V

    return-void
.end method
