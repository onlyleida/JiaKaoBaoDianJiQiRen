.class public Lcom/mobile/auth/gatewayauth/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

.field private static final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mobile/auth/gatewayauth/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/mobile/auth/gatewayauth/AuthUIControlClickListener;

.field private volatile e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

.field private g:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Lcom/mobile/auth/o/a;

.field private l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/mobile/auth/gatewayauth/TokenResultListener;

.field private n:Lcom/mobile/auth/gatewayauth/ActivityResultListener;

.field private o:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

.field private p:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

.field private q:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

.field private r:Lcom/mobile/auth/gatewayauth/manager/d;

.field private s:J

.field private t:J

.field private volatile u:Z

.field private v:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/mobile/auth/gatewayauth/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    invoke-direct {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->create()Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v0

    sput-object v0, Lcom/mobile/auth/gatewayauth/d;->a:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/manager/d;Lcom/mobile/auth/gatewayauth/manager/SystemManager;Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/d;->u:Z

    new-instance v0, Lcom/mobile/auth/gatewayauth/d$1;

    invoke-direct {v0, p0}, Lcom/mobile/auth/gatewayauth/d$1;-><init>(Lcom/mobile/auth/gatewayauth/d;)V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->v:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/d;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/d;->r:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/manager/d;->a()Lcom/mobile/auth/o/a;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/d;->k:Lcom/mobile/auth/o/a;

    iput-object p3, p0, Lcom/mobile/auth/gatewayauth/d;->p:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    iput-object p4, p0, Lcom/mobile/auth/gatewayauth/d;->o:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/mobile/auth/gatewayauth/d;->j:I

    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/d;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/d;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static a(I)Lcom/mobile/auth/gatewayauth/d;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/mobile/auth/gatewayauth/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobile/auth/gatewayauth/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/d;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/d;->l:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/mobile/auth/gatewayauth/AuthUIConfig;ILandroid/app/Activity;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isStatusBarHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/mobile/auth/gatewayauth/utils/i;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getStatusBarUIFlag()I

    move-result v0

    invoke-static {p2, v0}, Lcom/mobile/auth/gatewayauth/utils/i;->c(Landroid/app/Activity;I)V

    :goto_0
    invoke-static {p2, p1}, Lcom/mobile/auth/gatewayauth/utils/i;->a(Landroid/app/Activity;I)V

    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isLightColor()Z

    move-result p1

    invoke-static {p2, p1}, Lcom/mobile/auth/gatewayauth/utils/i;->a(Landroid/app/Activity;Z)V

    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getBottomNavBarColor()I

    move-result p0

    invoke-static {p2, p0}, Lcom/mobile/auth/gatewayauth/utils/i;->b(Landroid/app/Activity;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/d$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mobile/auth/gatewayauth/d$6;-><init>(Lcom/mobile/auth/gatewayauth/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/d$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mobile/auth/gatewayauth/d$5;-><init>(Lcom/mobile/auth/gatewayauth/d;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    :try_start_0
    new-instance v6, Lcom/mobile/auth/gatewayauth/d$3;

    move-object v0, v6

    move-object v1, p0

    move v2, p4

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mobile/auth/gatewayauth/d$3;-><init>(Lcom/mobile/auth/gatewayauth/d;ZZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Lcom/mobile/auth/gatewayauth/utils/b$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/d;Z)Z
    .locals 0

    :try_start_0
    iput-boolean p1, p0, Lcom/mobile/auth/gatewayauth/d;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/mobile/auth/gatewayauth/d;)Ljava/lang/ref/WeakReference;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/d;->l:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/d$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mobile/auth/gatewayauth/d$7;-><init>(Lcom/mobile/auth/gatewayauth/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/mobile/auth/gatewayauth/d;)Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/d;->v:Landroid/app/Application$ActivityLifecycleCallbacks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic d(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/o/a;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/d;->k:Lcom/mobile/auth/o/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic e(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/AuthUIConfig;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/d;->f:Lcom/mobile/auth/gatewayauth/AuthUIConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic f(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/TokenResultListener;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/d;->m:Lcom/mobile/auth/gatewayauth/TokenResultListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic g(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/manager/SystemManager;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/d;->p:Lcom/mobile/auth/gatewayauth/manager/SystemManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic h(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/manager/d;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/d;->r:Lcom/mobile/auth/gatewayauth/manager/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic i(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/d;->q:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic j(Lcom/mobile/auth/gatewayauth/d;)J
    .locals 2

    :try_start_0
    iget-wide v0, p0, Lcom/mobile/auth/gatewayauth/d;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method public a()Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->q:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mobile/auth/gatewayauth/manager/compat/b;

    invoke-direct {v0}, Lcom/mobile/auth/gatewayauth/manager/compat/b;-><init>()V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->q:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->q:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(J)V
    .locals 0

    :try_start_0
    iput-wide p1, p0, Lcom/mobile/auth/gatewayauth/d;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/e;)V
    .locals 4

    :try_start_0
    iput-wide p1, p0, Lcom/mobile/auth/gatewayauth/d;->t:J

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/ReflectionUtils;->getApplication()Landroid/app/Application;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/d;->v:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/d;->c:Landroid/content/Context;

    const-class v0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "number"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "vendor"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "ui_manager_id"

    iget v0, p0, Lcom/mobile/auth/gatewayauth/d;->j:I

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p2, "startTime"

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p5}, Lcom/mobile/auth/gatewayauth/d;->a(Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;)V

    sget-object p2, Lcom/mobile/auth/gatewayauth/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget p5, p0, Lcom/mobile/auth/gatewayauth/d;->j:I

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p2, p5, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/d;->e:Ljava/lang/ref/WeakReference;

    const/4 p5, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/d;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    move-object p2, p5

    :goto_0
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/d;->f()Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getAuthPageActIn()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x10000000

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/d;->f()Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getActivityOut()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/d;->f()Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getAuthPageActIn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/d;->f()Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getActivityOut()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p2, p1, v2, v0, v1}, Lcom/nirvana/tools/core/SupportJarUtils;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {p2, p1, v2, p5, p5}, Lcom/nirvana/tools/core/SupportJarUtils;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/d;->c:Landroid/content/Context;

    :goto_1
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2, p1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/d;->c:Landroid/content/Context;

    goto :goto_1

    :goto_2
    if-eqz p6, :cond_6

    invoke-interface {p6, p4, p3}, Lcom/mobile/auth/gatewayauth/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/f;->c(Ljava/lang/String;)V

    invoke-interface {p6, p1}, Lcom/mobile/auth/gatewayauth/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/d;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->e:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/mobile/auth/gatewayauth/ActivityResultListener;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/d;->n:Lcom/mobile/auth/gatewayauth/ActivityResultListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->h:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/mobile/auth/gatewayauth/d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/f;->c(Ljava/lang/String;)V

    const-string p1, "\u52a8\u6001\u6dfb\u52a0\u63a7\u4ef6\u5931\u8d25"

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/f;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public a(Lcom/mobile/auth/gatewayauth/AuthUIConfig;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/d;->f:Lcom/mobile/auth/gatewayauth/AuthUIConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/mobile/auth/gatewayauth/AuthUIControlClickListener;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/d;->d:Lcom/mobile/auth/gatewayauth/AuthUIControlClickListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/d;->m:Lcom/mobile/auth/gatewayauth/TokenResultListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/d;->q:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->i:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->d:Lcom/mobile/auth/gatewayauth/AuthUIControlClickListener;

    if-eqz v0, :cond_0

    const-string v1, "700000"

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/d;->c:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mobile/auth/gatewayauth/AuthUIControlClickListener;->onClick(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->p:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-72931"

    invoke-direct {p0, p1, v0, v1}, Lcom/mobile/auth/gatewayauth/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;JZZ)V
    .locals 8

    :try_start_0
    new-instance v7, Lcom/mobile/auth/gatewayauth/d$4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p5

    move v4, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/mobile/auth/gatewayauth/d$4;-><init>(Lcom/mobile/auth/gatewayauth/d;Ljava/lang/String;ZZJ)V

    invoke-static {v7}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->g:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->g:Ljava/util/LinkedHashMap;

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;->getRootViewId()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/mobile/auth/gatewayauth/d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/f;->c(Ljava/lang/String;)V

    const-string p1, "\u52a8\u6001\u6dfb\u52a0\u63a7\u4ef6\u5931\u8d25"

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/f;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/d;->f:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getProtocolAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "orientation"

    const-string v3, "name"

    const-string v4, "url"

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;

    invoke-direct {v1, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/d;->f()Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getScreenOrientation()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "ui_manager_id"

    iget p2, p0, Lcom/mobile/auth/gatewayauth/d;->j:I

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/d;->f:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getProtocolAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/d;->f:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/d;->f:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/d;->f()Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getScreenOrientation()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/d;->k:Lcom/mobile/auth/o/a;

    const-string p2, "LoginAuthActivity\u5b9e\u4f8b\u88ab\u91ca\u653e"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->d:Lcom/mobile/auth/gatewayauth/AuthUIControlClickListener;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "url"

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/d;->d:Lcom/mobile/auth/gatewayauth/AuthUIControlClickListener;

    const-string v1, "700004"

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/d;->c:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v2, v0}, Lcom/mobile/auth/gatewayauth/AuthUIControlClickListener;->onClick(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/d;->p:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {p2, p1}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/mobile/auth/gatewayauth/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;ZZ)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->d:Lcom/mobile/auth/gatewayauth/AuthUIControlClickListener;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "isChecked"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/d;->d:Lcom/mobile/auth/gatewayauth/AuthUIControlClickListener;

    const-string v1, "700002"

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/d;->c:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v2, v0}, Lcom/mobile/auth/gatewayauth/AuthUIControlClickListener;->onClick(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/d;->p:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {p2, p1}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/mobile/auth/gatewayauth/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->d:Lcom/mobile/auth/gatewayauth/AuthUIControlClickListener;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "isChecked"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/d;->d:Lcom/mobile/auth/gatewayauth/AuthUIControlClickListener;

    const-string v1, "700003"

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/d;->c:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lcom/mobile/auth/gatewayauth/AuthUIControlClickListener;->onClick(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-void
.end method

.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mobile/auth/gatewayauth/d;->a(ZLjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/d$2;

    invoke-direct {v0, p0}, Lcom/mobile/auth/gatewayauth/d$2;-><init>(Lcom/mobile/auth/gatewayauth/d;)V

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Lcom/mobile/auth/gatewayauth/utils/b$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->o:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    iget-wide v1, p0, Lcom/mobile/auth/gatewayauth/d;->t:J

    new-instance v3, Lcom/mobile/auth/gatewayauth/d$8;

    invoke-direct {v3, p0}, Lcom/mobile/auth/gatewayauth/d$8;-><init>(Lcom/mobile/auth/gatewayauth/d;)V

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->a(JLcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->d:Lcom/mobile/auth/gatewayauth/AuthUIControlClickListener;

    if-eqz v0, :cond_0

    const-string v1, "700001"

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/d;->c:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mobile/auth/gatewayauth/AuthUIControlClickListener;->onClick(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->p:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-72932"

    invoke-direct {p0, p1, v0, v1}, Lcom/mobile/auth/gatewayauth/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1, v0, v0, v1}, Lcom/mobile/auth/gatewayauth/d;->a(ZLjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public d()Lcom/mobile/auth/gatewayauth/ActivityResultListener;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->n:Lcom/mobile/auth/gatewayauth/ActivityResultListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->m:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mobile/auth/gatewayauth/model/TokenRet;

    invoke-direct {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;-><init>()V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/d;->p:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->setVendorName(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    const-string v1, "600023"

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->setCode(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    const-string v1, "\u52a0\u8f7d\u81ea\u5b9a\u4e49\u63a7\u4ef6\u5f02\u5e38"

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->setMsg(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/d;->m:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mobile/auth/gatewayauth/TokenResultListener;->onTokenFailed(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public f()Lcom/mobile/auth/gatewayauth/AuthUIConfig;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->f:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    if-nez v0, :cond_0

    sget-object v0, Lcom/mobile/auth/gatewayauth/d;->a:Lcom/mobile/auth/gatewayauth/AuthUIConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->g:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->g:Ljava/util/LinkedHashMap;

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->g:Ljava/util/LinkedHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->h:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->h:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->g:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/d;->i:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->g:Ljava/util/LinkedHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/f;->c(Ljava/lang/String;)V

    const-string v0, "\u52a8\u6001\u63a7\u4ef6\u6e05\u9664\u5931\u8d25"

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/f;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public j()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/d;->i:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->h:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/f;->c(Ljava/lang/String;)V

    const-string v0, "\u52a8\u6001\u63a7\u4ef6\u6e05\u9664\u5931\u8d25"

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/f;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public k()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/mobile/auth/gatewayauth/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/mobile/auth/gatewayauth/d;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public l()Lcom/mobile/auth/o/a;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d;->k:Lcom/mobile/auth/o/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Z
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/mobile/auth/gatewayauth/d;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method
