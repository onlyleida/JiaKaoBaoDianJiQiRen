.class public final Lcn/mucang/android/core/identity/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\n\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u0007J\u0018\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0008\u0010\u001e\u001a\u00020\u0016H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcn/mucang/android/core/identity/OaIdFetcher;",
        "",
        "()V",
        "CONFIG_KEY",
        "",
        "TAG",
        "config",
        "Lcn/mucang/android/core/identity/OaidConfig;",
        "doneRunnable",
        "Ljava/lang/Runnable;",
        "getDoneRunnable",
        "()Ljava/lang/Runnable;",
        "setDoneRunnable",
        "(Ljava/lang/Runnable;)V",
        "loadingState",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "oaId",
        "supportState",
        "codeToMsg",
        "code",
        "",
        "doReload",
        "",
        "doSaveFromMSA",
        "idSupplier",
        "Lcom/bun/miitmdid/interfaces/IdSupplier;",
        "getOAID",
        "postErrorEvent",
        "duration",
        "",
        "reloadFromMsa",
        "core-lib_release"
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
.field public static final a:Lcn/mucang/android/core/identity/j;

.field private static final b:Lcn/mucang/android/core/identity/k;

.field private static volatile c:Ljava/lang/String;

.field private static final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/core/identity/j;

    invoke-direct {v0}, Lcn/mucang/android/core/identity/j;-><init>()V

    sput-object v0, Lcn/mucang/android/core/identity/j;->a:Lcn/mucang/android/core/identity/j;

    .line 1
    new-instance v0, Lcn/mucang/android/core/identity/k;

    const-string v1, "MdidSdkHelper.InitSdk"

    invoke-direct {v0, v1}, Lcn/mucang/android/core/identity/k;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/core/identity/j;->b:Lcn/mucang/android/core/identity/k;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcn/mucang/android/core/identity/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcn/mucang/android/core/identity/j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "\u672a\u77e5\u9519\u8bef"

    goto :goto_0

    :pswitch_0
    const-string p1, "\u53cd\u5c04\u8c03\u7528\u51fa\u9519"

    goto :goto_0

    :pswitch_1
    const-string p1, "\u5f02\u6b65\u83b7\u53d6"

    goto :goto_0

    :pswitch_2
    const-string p1, "\u52a0\u8f7d\u914d\u7f6e\u6587\u4ef6\u51fa\u9519"

    goto :goto_0

    :pswitch_3
    const-string p1, "\u4e0d\u652f\u6301\u7684\u8bbe\u5907"

    goto :goto_0

    :pswitch_4
    const-string p1, "\u4e0d\u652f\u6301\u7684\u8bbe\u5907\u5382\u5546"

    goto :goto_0

    :pswitch_5
    const-string p1, "\u521d\u59cb\u5316\u51fa\u9519"

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0xf63e2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/android/core/identity/j;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcn/mucang/android/core/identity/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcn/mucang/android/core/identity/a;->a:Lcn/mucang/android/core/identity/a;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static final c()V
    .locals 6

    const-string v0, "OAID:\u4eceMSA\u52a0\u8f7d\u5931\u8d25"

    const-string v1, "oaid"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1
    :try_start_0
    sget-object v4, Lcn/mucang/android/core/identity/j;->a:Lcn/mucang/android/core/identity/j;

    sget-object v5, Lcn/mucang/android/core/identity/l;->a:Lcn/mucang/android/core/identity/l;

    invoke-virtual {v5}, Lcn/mucang/android/core/identity/l;->get()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/mucang/android/core/identity/j;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    sget-object v5, Lcn/mucang/android/core/identity/j;->c:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-static {v5}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 3
    sget-object v2, Lcn/mucang/android/core/identity/j;->b:Lcn/mucang/android/core/identity/k;

    invoke-virtual {v2}, Lcn/mucang/android/core/identity/k;->d()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_2

    .line 4
    :goto_1
    sget-object v0, Lcn/mucang/android/core/identity/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    invoke-static {}, Lcn/mucang/android/core/identity/l;->c()V

    sget-object v0, Lcn/mucang/android/core/identity/b;->a:Lcn/mucang/android/core/identity/b;

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void

    .line 7
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcn/mucang/android/core/identity/k;->a()V

    .line 8
    invoke-direct {v4}, Lcn/mucang/android/core/identity/j;->m()V

    .line 9
    invoke-virtual {v2}, Lcn/mucang/android/core/identity/k;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :cond_3
    :goto_2
    sget-object v0, Lcn/mucang/android/core/identity/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    invoke-static {}, Lcn/mucang/android/core/identity/l;->c()V

    sget-object v0, Lcn/mucang/android/core/identity/b;->a:Lcn/mucang/android/core/identity/b;

    .line 12
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    goto :goto_4

    :catchall_0
    move-exception v2

    .line 13
    :try_start_3
    invoke-static {v1, v0, v2}, Lcn/mucang/android/core/utils/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    sget-object v0, Lcn/mucang/android/core/identity/j;->b:Lcn/mucang/android/core/identity/k;

    invoke-virtual {v0}, Lcn/mucang/android/core/identity/k;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 15
    sget-object v1, Lcn/mucang/android/core/identity/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    invoke-static {}, Lcn/mucang/android/core/identity/l;->c()V

    sget-object v1, Lcn/mucang/android/core/identity/b;->a:Lcn/mucang/android/core/identity/b;

    .line 17
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    throw v0

    :catchall_2
    move-exception v4

    :try_start_4
    const-string v5, "OAID:\u4eceStorage\u52a0\u8f7d\u5931\u8d25"

    .line 18
    invoke-static {v1, v5, v4}, Lcn/mucang/android/core/utils/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 19
    :try_start_5
    sget-object v4, Lcn/mucang/android/core/identity/j;->c:Ljava/lang/String;

    if-eqz v4, :cond_5

    invoke-static {v4}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_3
    if-eqz v2, :cond_3

    .line 20
    sget-object v2, Lcn/mucang/android/core/identity/j;->b:Lcn/mucang/android/core/identity/k;

    invoke-virtual {v2}, Lcn/mucang/android/core/identity/k;->d()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    .line 21
    :cond_6
    invoke-virtual {v2}, Lcn/mucang/android/core/identity/k;->a()V

    .line 22
    sget-object v4, Lcn/mucang/android/core/identity/j;->a:Lcn/mucang/android/core/identity/j;

    invoke-direct {v4}, Lcn/mucang/android/core/identity/j;->m()V

    .line 23
    invoke-virtual {v2}, Lcn/mucang/android/core/identity/k;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    .line 24
    :try_start_6
    invoke-static {v1, v0, v2}, Lcn/mucang/android/core/utils/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    sget-object v0, Lcn/mucang/android/core/identity/j;->b:Lcn/mucang/android/core/identity/k;

    invoke-virtual {v0}, Lcn/mucang/android/core/identity/k;->c()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_2

    :goto_4
    return-void

    :catchall_4
    move-exception v0

    .line 26
    sget-object v1, Lcn/mucang/android/core/identity/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    invoke-static {}, Lcn/mucang/android/core/identity/l;->c()V

    sget-object v1, Lcn/mucang/android/core/identity/b;->a:Lcn/mucang/android/core/identity/b;

    .line 28
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    throw v0

    :catchall_5
    move-exception v4

    .line 29
    :try_start_7
    sget-object v5, Lcn/mucang/android/core/identity/j;->c:Ljava/lang/String;

    if-eqz v5, :cond_8

    invoke-static {v5}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :cond_8
    :goto_5
    if-eqz v2, :cond_a

    .line 30
    sget-object v2, Lcn/mucang/android/core/identity/j;->b:Lcn/mucang/android/core/identity/k;

    invoke-virtual {v2}, Lcn/mucang/android/core/identity/k;->d()Z

    move-result v5

    if-nez v5, :cond_9

    goto/16 :goto_1

    .line 31
    :cond_9
    invoke-virtual {v2}, Lcn/mucang/android/core/identity/k;->a()V

    .line 32
    sget-object v5, Lcn/mucang/android/core/identity/j;->a:Lcn/mucang/android/core/identity/j;

    invoke-direct {v5}, Lcn/mucang/android/core/identity/j;->m()V

    .line 33
    invoke-virtual {v2}, Lcn/mucang/android/core/identity/k;->b()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 34
    :cond_a
    :goto_6
    sget-object v0, Lcn/mucang/android/core/identity/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 35
    invoke-static {}, Lcn/mucang/android/core/identity/l;->c()V

    sget-object v0, Lcn/mucang/android/core/identity/b;->a:Lcn/mucang/android/core/identity/b;

    .line 36
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    goto :goto_7

    :catchall_6
    move-exception v2

    .line 37
    :try_start_8
    invoke-static {v1, v0, v2}, Lcn/mucang/android/core/utils/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    sget-object v0, Lcn/mucang/android/core/identity/j;->b:Lcn/mucang/android/core/identity/k;

    invoke-virtual {v0}, Lcn/mucang/android/core/identity/k;->c()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_6

    .line 39
    :goto_7
    throw v4

    :catchall_7
    move-exception v0

    .line 40
    sget-object v1, Lcn/mucang/android/core/identity/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41
    invoke-static {}, Lcn/mucang/android/core/identity/l;->c()V

    sget-object v1, Lcn/mucang/android/core/identity/b;->a:Lcn/mucang/android/core/identity/b;

    .line 42
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    throw v0
.end method

.method private static final d()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/identity/j;->a:Lcn/mucang/android/core/identity/j;

    invoke-virtual {v0}, Lcn/mucang/android/core/identity/j;->f()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private final e(Lcom/bun/miitmdid/interfaces/IdSupplier;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/bun/miitmdid/interfaces/IdSupplier;->getOAID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const-string p1, "core"

    const-string v0, "OAID:\u652f\u6301\u4f46\u662f\u4e3a\u7a7a"

    .line 2
    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_2
    invoke-interface {p1}, Lcom/bun/miitmdid/interfaces/IdSupplier;->getOAID()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcn/mucang/android/core/identity/j;->c:Ljava/lang/String;

    .line 4
    sget-object p1, Lcn/mucang/android/core/identity/l;->a:Lcn/mucang/android/core/identity/l;

    sget-object v0, Lcn/mucang/android/core/identity/j;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/identity/l;->b(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "oaid"

    const-string v1, "OAID:storage\u4fdd\u5b58\u5931\u8d25"

    .line 5
    invoke-static {v0, v1, p1}, Lcn/mucang/android/core/utils/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public static final g()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/identity/j;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcn/mucang/android/core/identity/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/mucang/android/core/identity/j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/core/identity/j;->a:Lcn/mucang/android/core/identity/j;

    invoke-direct {v0}, Lcn/mucang/android/core/identity/j;->b()V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Lcn/mucang/android/core/identity/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic h()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/core/identity/j;->c()V

    return-void
.end method

.method public static synthetic i()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/core/identity/j;->d()V

    return-void
.end method

.method public static synthetic j(Ljava/util/concurrent/CountDownLatch;JZLcom/bun/miitmdid/interfaces/IdSupplier;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/android/core/identity/j;->n(Ljava/util/concurrent/CountDownLatch;JZLcom/bun/miitmdid/interfaces/IdSupplier;)V

    return-void
.end method

.method public static synthetic k(Lcom/bun/miitmdid/interfaces/IdSupplier;Ljava/util/concurrent/CountDownLatch;)Lkotlin/v;
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/core/identity/j;->o(Lcom/bun/miitmdid/interfaces/IdSupplier;Ljava/util/concurrent/CountDownLatch;)Lkotlin/v;

    move-result-object p0

    return-object p0
.end method

.method private final l(IJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "errorCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "core"

    const-string v1, "OAID:MdidSdkHelper\u521d\u59cb\u5316\u5931\u8d25"

    .line 3
    invoke-static {p1, v1, v0, p2, p3}, Lcn/mucang/android/core/utils/l0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    return-void
.end method

.method private final m()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v4

    new-instance v5, Lcn/mucang/android/core/identity/c;

    invoke-direct {v5, v0, v2, v3}, Lcn/mucang/android/core/identity/c;-><init>(Ljava/util/concurrent/CountDownLatch;J)V

    invoke-static {v4, v1, v5}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitSdk(Landroid/content/Context;ZLcom/bun/miitmdid/interfaces/IIdentifierListener;)I

    move-result v1

    const v4, 0xf63e6

    if-eq v4, v1, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-direct {p0, v1, v4, v5}, Lcn/mucang/android/core/identity/j;->l(IJ)V

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    sget-object v2, Lcn/mucang/android/core/identity/j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    :cond_0
    invoke-direct {p0, v1}, Lcn/mucang/android/core/identity/j;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OAID:\u521d\u59cb\u5316\uff0ccode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",msg:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "oaid"

    invoke-static {v6, v3}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "core"

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method

.method private static final n(Ljava/util/concurrent/CountDownLatch;JZLcom/bun/miitmdid/interfaces/IdSupplier;)V
    .locals 3

    const-string v0, "$lock"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oaid"

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 1
    invoke-interface {p4}, Lcom/bun/miitmdid/interfaces/IdSupplier;->isSupported()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "OAID:duration:"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance p1, Lcn/mucang/android/core/identity/d;

    invoke-direct {p1, p4, p0}, Lcn/mucang/android/core/identity/d;-><init>(Lcom/bun/miitmdid/interfaces/IdSupplier;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {p1}, Lcn/mucang/android/core/config/MucangConfig;->A(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void

    :cond_1
    :goto_0
    const-string p1, "OAID:\u5f02\u6b65\u83b7\u53d6\u6570\u636e\u65e0\u6548"

    .line 4
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    sget-object p0, Lcn/mucang/android/core/identity/j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p0, "core"

    .line 7
    invoke-static {p0, p1}, Lcn/mucang/android/core/utils/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final o(Lcom/bun/miitmdid/interfaces/IdSupplier;Ljava/util/concurrent/CountDownLatch;)Lkotlin/v;
    .locals 2

    const-string v0, "$lock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/core/identity/j;->a:Lcn/mucang/android/core/identity/j;

    const-string v1, "idSupplier"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcn/mucang/android/core/identity/j;->e(Lcom/bun/miitmdid/interfaces/IdSupplier;)V

    .line 2
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 3
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    return-object p0
.end method


# virtual methods
.method public final f()Ljava/lang/Runnable;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/identity/j;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final p(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    sput-object p1, Lcn/mucang/android/core/identity/j;->f:Ljava/lang/Runnable;

    return-void
.end method
