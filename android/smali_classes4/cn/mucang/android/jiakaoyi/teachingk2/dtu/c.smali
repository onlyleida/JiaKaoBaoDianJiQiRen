.class public final Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010!\u001a\u00020\u001cJ\u0006\u0010\"\u001a\u00020\u001cJ\u0006\u0010#\u001a\u00020\u001cJ\u0006\u0010$\u001a\u00020 R>\u0010\u0003\u001a&\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005 \u0006*\u0012\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR>\u0010\u000b\u001a&\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005 \u0006*\u0012\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR>\u0010\u000e\u001a&\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005 \u0006*\u0012\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0008\"\u0004\u0008\u0010\u0010\nR\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R>\u0010\u0012\u001a&\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005 \u0006*\u0012\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0008\"\u0004\u0008\u0014\u0010\nR\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTUManager;",
        "",
        "()V",
        "ICCID",
        "Lcn/mucang/android/jiakaoyi/framework/utils/ValueCache;",
        "",
        "kotlin.jvm.PlatformType",
        "getICCID",
        "()Lcn/mucang/android/jiakaoyi/framework/utils/ValueCache;",
        "setICCID",
        "(Lcn/mucang/android/jiakaoyi/framework/utils/ValueCache;)V",
        "IMEI",
        "getIMEI",
        "setIMEI",
        "PHONE_NUMBER",
        "getPHONE_NUMBER",
        "setPHONE_NUMBER",
        "TAG",
        "VER",
        "getVER",
        "setVER",
        "dtuModel",
        "Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTU_MODEL;",
        "getDtuModel",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTU_MODEL;",
        "setDtuModel",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTU_MODEL;)V",
        "isRunning",
        "",
        "latch",
        "Ljava/util/concurrent/CountDownLatch;",
        "init",
        "",
        "isValid",
        "isValidICCID",
        "isValidIMEI",
        "uploadICCID",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;

.field private static b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTU_MODEL;

.field private static g:Z

.field private static final h:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;

    const-string v0, "key.dtu.version"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->i(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    const-string v0, "key.dtu.iccid"

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->i(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    const-string v0, "key.dtu.imei"

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->i(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->d:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    const-string v0, "key.dtu.phone.number"

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->i(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->e:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTU_MODEL;->NONE:Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTU_MODEL;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->f:Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTU_MODEL;

    .line 6
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->h:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final g()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;

    const/4 v1, 0x1

    sput-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->g:Z

    const-string v1, "-DTU \u5f00\u59cb\u5c1d\u8bd5\u83b7\u53d6G806\u578bSIM\u5361\u4fe1\u606f"

    .line 2
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/e;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/e;-><init>()V

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/e;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTU_MODEL;->G806:Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTU_MODEL;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->l(Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTU_MODEL;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;-><init>()V

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTU_MODEL;->G781:Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTU_MODEL;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->l(Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTU_MODEL;)V

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v0, 0x0

    .line 8
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->g:Z

    return-void
.end method

.method private static final h()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->h:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v1, 0xafc8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->a()Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTU_MODEL;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTU_MODEL;->NONE:Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTU_MODEL;

    if-ne v0, v1, :cond_1

    const-string v0, "-DTU \u5f00\u59cb\u914d\u7f6eG781 TCP\u5ba2\u6237\u7aef"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-DTU \u914d\u7f6eG781\u6210\u529f"

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "-DTU \u914d\u7f6eG781\u5931\u8d25"

    .line 6
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-DTU \u83b7\u53d6SIM\u5361\u4fe1\u606f\u5931\u8d25 "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic j()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->h()V

    return-void
.end method

.method public static synthetic k()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->g()V

    return-void
.end method


# virtual methods
.method public final a()Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTU_MODEL;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->f:Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTU_MODEL;

    return-object v0
.end method

.method public final b()Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    return-object v0
.end method

.method public final c()Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->d:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    return-object v0
.end method

.method public final d()Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->e:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    return-object v0
.end method

.method public final e()Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    return-object v0
.end method

.method public final f()V
    .locals 2

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/dtu/b;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/dtu/a;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final i()Z
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l(Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTU_MODEL;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sput-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->f:Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTU_MODEL;

    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/f;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/f;-><init>()V

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v2}, Lcn/mucang/jiakaoyi/uilib/i/f;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
