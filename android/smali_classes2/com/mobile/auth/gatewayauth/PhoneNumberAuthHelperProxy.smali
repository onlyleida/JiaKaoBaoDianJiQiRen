.class Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SERVICE_TYPE_AUTH:I = 0x1
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation
.end field

.field public static final SERVICE_TYPE_LOGIN:I = 0x2
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation
.end field

.field protected static volatile a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;


# instance fields
.field private b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

.field private c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

.field private d:Lcom/mobile/auth/gatewayauth/manager/b;

.field private e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

.field private f:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;

.field private g:Lcom/mobile/auth/gatewayauth/manager/d;

.field private h:Lcom/mobile/auth/gatewayauth/manager/CrashManager;

.field private i:Lcom/mobile/auth/gatewayauth/manager/f;

.field private j:Ljava/util/concurrent/Future;

.field private k:Lcom/mobile/auth/o/a;

.field private l:Ljava/lang/String;

.field private m:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

.field private n:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mobile/auth/gatewayauth/manager/compat/a;

    invoke-direct {v0}, Lcom/mobile/auth/gatewayauth/manager/compat/a;-><init>()V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->m:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    new-instance v0, Lcom/mobile/auth/gatewayauth/manager/compat/b;

    invoke-direct {v0}, Lcom/mobile/auth/gatewayauth/manager/compat/b;-><init>()V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->n:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/nirvana/tools/core/ComponentSdkCore;->register(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/SystemManager;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-direct {v0, p1}, Lcom/mobile/auth/gatewayauth/manager/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/d;->a()Lcom/mobile/auth/o/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;

    new-instance v0, Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;

    invoke-direct {v0, p1, v1}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;-><init>(Landroid/content/Context;Lcom/mobile/auth/o/a;)V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/manager/CrashManager;->a(Landroid/content/Context;)Lcom/mobile/auth/gatewayauth/manager/CrashManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->h:Lcom/mobile/auth/gatewayauth/manager/CrashManager;

    new-instance v0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-direct {v0, v1, v2}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;-><init>(Lcom/mobile/auth/gatewayauth/manager/d;Lcom/mobile/auth/gatewayauth/manager/SystemManager;)V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    new-instance v1, Lcom/mobile/auth/gatewayauth/manager/b;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-direct {v1, p1, v0, v2}, Lcom/mobile/auth/gatewayauth/manager/b;-><init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;Lcom/mobile/auth/gatewayauth/manager/d;)V

    iput-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->d:Lcom/mobile/auth/gatewayauth/manager/b;

    new-instance p1, Lcom/mobile/auth/gatewayauth/manager/f;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-direct {p1, v0, v1}, Lcom/mobile/auth/gatewayauth/manager/f;-><init>(Lcom/mobile/auth/gatewayauth/manager/SystemManager;Lcom/mobile/auth/gatewayauth/manager/d;)V

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->i:Lcom/mobile/auth/gatewayauth/manager/f;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/gatewayauth/manager/d;->a(Lcom/mobile/auth/gatewayauth/manager/f;)V

    new-instance p1, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->d:Lcom/mobile/auth/gatewayauth/manager/b;

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->i:Lcom/mobile/auth/gatewayauth/manager/f;

    iget-object v6, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;-><init>(Lcom/mobile/auth/gatewayauth/manager/b;Lcom/mobile/auth/gatewayauth/manager/SystemManager;Lcom/mobile/auth/gatewayauth/manager/d;Lcom/mobile/auth/gatewayauth/manager/f;Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;)V

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;

    new-instance p1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$1;

    invoke-direct {p1, p0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$1;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)V

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e()Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;ILcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;ZLcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->justGetToken(ILcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;ZLcom/mobile/auth/gatewayauth/TokenResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;JLcom/mobile/auth/gatewayauth/PreLoginResultListener;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->justPreVerify(JLcom/mobile/auth/gatewayauth/PreLoginResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;JLcom/mobile/auth/gatewayauth/PreLoginResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;ZZ)V
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->justPreLogin(JLcom/mobile/auth/gatewayauth/PreLoginResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;JLcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->justGetLoginToken(JLcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p8}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;ZZLjava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V
    .locals 13

    move-object v12, p0

    :try_start_0
    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/d;->i()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;ZLcom/mobile/auth/gatewayauth/model/MonitorStruct;Z)V
    .locals 7

    :try_start_0
    new-instance v6, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$25;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move v3, p2

    move-object v4, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$25;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;ZLjava/lang/String;Z)V

    invoke-static {v6}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(ZLjava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$24;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$24;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;ZLcom/mobile/auth/gatewayauth/TokenResultListener;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Lcom/mobile/auth/gatewayauth/utils/b$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(ZZLjava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 0

    if-eqz p6, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p4, p6}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZLjava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V

    :cond_0
    invoke-direct {p0, p3, p1, p5, p2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Ljava/lang/String;ZLcom/mobile/auth/gatewayauth/model/MonitorStruct;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;ZLjava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p7}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZLjava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return p1
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;ZLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p7}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$27;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p3

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v9}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$27;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Ljava/lang/String;ZLjava/lang/String;JJ)V

    invoke-static {v10}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p2

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method private a(ZLjava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)Z
    .locals 14

    move-object v12, p0

    const-string v0, "-10008"

    const/4 v13, 0x0

    :try_start_0
    iget-object v1, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/d;->i()V

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v1, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;

    const-string v2, "GetLoginToken from cache is null!"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V

    if-eqz p1, :cond_1

    move-object/from16 v8, p6

    invoke-virtual {v8, v0}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAuthSdkCode(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "-10008"

    const-string v5, "\u672a\u77e5\u5f02\u5e38"

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p6

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p7

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v13

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v13

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v13
.end method

.method private a(ZLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Ljava/lang/String;)Z
    .locals 14

    move-object v12, p0

    const/4 v13, 0x0

    :try_start_0
    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/d;->j()V

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;

    const-string v1, "GetVerifyToken from cache is null!"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "-10008"

    const-string v5, "\u672a\u77e5\u5f02\u5e38"

    const-string v0, "-10008"

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p3

    move-object/from16 v11, p7

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v13

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v13

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v13
.end method

.method static synthetic b(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/b;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->d:Lcom/mobile/auth/gatewayauth/manager/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic b(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p8}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V
    .locals 13

    move-object v12, p0

    :try_start_0
    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/d;->j()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)V
    .locals 0

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;

    invoke-virtual {v0}, Lcom/mobile/auth/o/a;->b()V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;

    invoke-virtual {v0}, Lcom/mobile/auth/o/a;->c()V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->d:Lcom/mobile/auth/gatewayauth/manager/b;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->d:Lcom/mobile/auth/gatewayauth/manager/b;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/b;->u()Lcom/mobile/auth/gatewayauth/model/UploadLog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/manager/d;->a(Lcom/mobile/auth/gatewayauth/model/UploadLog;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)V
    .locals 0

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private e()Ljava/util/concurrent/Future;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$12;

    invoke-direct {v0, p0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$12;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)V

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method static synthetic f(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/f;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->i:Lcom/mobile/auth/gatewayauth/manager/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private f()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->d:Lcom/mobile/auth/gatewayauth/manager/b;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->getInstance()Lcom/mobile/auth/gatewayauth/manager/FeatureManager;

    move-result-object v0

    const-string v1, "CRASH_SDK"

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->h:Lcom/mobile/auth/gatewayauth/manager/CrashManager;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/manager/CrashManager;->loadCrashComponent()Z

    move-result v2

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->c()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sdk.crash"

    invoke-static {}, Lcom/mobile/auth/gatewayauth/model/UStruct;->newUStruct()Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->startTime(J)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->endTime(J)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->isCrashDependencied(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->isSuccess(Z)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->build()Lcom/mobile/auth/gatewayauth/model/UStruct;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/mobile/auth/gatewayauth/manager/d;->b(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/UStruct;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v3, v0, v1}, Lcom/mobile/auth/o/a;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/TokenResultListener;)Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;
    .locals 2
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    sget-object v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    const-class v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-direct {v1, p0, p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;-><init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V

    sput-object v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-virtual {p0, p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->setAuthListener(Lcom/mobile/auth/gatewayauth/TokenResultListener;)V

    sget-object p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :try_start_3
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object p1

    :catchall_2
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    const-string v0, "2.12.1.2"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method static synthetic h(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->m:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic i(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/d;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic j(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->n:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private native justGetLoginPhone(Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;ILcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;ZLcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;I)V
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mobile/auth/gatewayauth/model/MonitorStruct;",
            "Ljava/lang/String;",
            "I",
            "Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;",
            "Z",
            "Lcom/mobile/auth/gatewayauth/manager/RequestCallback<",
            "Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;",
            "Lcom/mobile/auth/gatewayauth/manager/base/c;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation
.end method

.method private native justGetLoginToken(JLcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;)V
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method

.method private native justGetToken(ILcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;ZLcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method

.method private native justPreLogin(JLcom/mobile/auth/gatewayauth/PreLoginResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;ZZ)V
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method

.method private native justPreVerify(JLcom/mobile/auth/gatewayauth/PreLoginResultListener;)V
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method

.method static synthetic k(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Ljava/util/concurrent/Future;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method protected a()Lcom/mobile/auth/gatewayauth/manager/SystemManager;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method a(JLcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;)V
    .locals 8

    :try_start_0
    new-instance v7, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Lcom/mobile/auth/gatewayauth/TokenResultListener;JLcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;)V

    invoke-static {v7}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Lcom/mobile/auth/gatewayauth/utils/b$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 7

    if-nez p5, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "8000"

    const-string v1, "\u83b7\u53d6token\u6210\u529f"

    invoke-interface {p4, v0, v1, p2}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->setToken(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    invoke-virtual {p3}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->getRequestId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAccessCode(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAuthSdkCode(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, ""

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->toJsonString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    .locals 8

    move-object v0, p7

    move-object/from16 v1, p10

    move-object v2, p3

    move-object v3, p4

    move-object v4, p6

    move-object/from16 v5, p9

    :try_start_0
    invoke-interface {v5, p3, p4, p6}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p7, v3}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAuthSdkCode(Ljava/lang/String;)V

    invoke-virtual {p7}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->getCarrierFailedResultData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->setCarrierFailedResultData(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2, v1}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->toJsonString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p5

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public accelerateLoginPage(ILcom/mobile/auth/gatewayauth/PreLoginResultListener;Z)V
    .locals 7
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    new-instance v6, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$9;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$9;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Lcom/mobile/auth/gatewayauth/TokenResultListener;ILcom/mobile/auth/gatewayauth/PreLoginResultListener;Z)V

    invoke-static {v6}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Lcom/mobile/auth/gatewayauth/utils/b$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public accelerateVerify(ILcom/mobile/auth/gatewayauth/PreLoginResultListener;)V
    .locals 2
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$10;

    invoke-direct {v0, p0, p2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$10;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Lcom/mobile/auth/gatewayauth/PreLoginResultListener;)V

    new-instance v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$11;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$11;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Lcom/mobile/auth/gatewayauth/TokenResultListener;ILcom/mobile/auth/gatewayauth/PreLoginResultListener;)V

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Lcom/mobile/auth/gatewayauth/utils/b$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected b()Lcom/mobile/auth/gatewayauth/manager/d;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method protected c()Lcom/mobile/auth/o/a;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public checkAuthEnvEnable()Lcom/mobile/auth/gatewayauth/model/InitResult;
    .locals 15
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/d;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mobile/auth/gatewayauth/model/InitResult;

    invoke-direct {v2}, Lcom/mobile/auth/gatewayauth/model/InitResult;-><init>()V

    new-instance v3, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-direct {v3}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;-><init>()V

    const-string v4, "sdk.check"

    invoke-virtual {v3, v4}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAction(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setStartTime(J)V

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->m:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    invoke-interface {v4}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->getApiLevel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setApiLevel(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setUrgency(I)V

    invoke-virtual {v3, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setRequestId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v2, v0}, Lcom/mobile/auth/gatewayauth/model/InitResult;->setSimPhoneNumber(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->d()Z

    move-result v5

    iget-object v6, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v6}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->e()Z

    move-result v6

    iget-object v7, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->i:Lcom/mobile/auth/gatewayauth/manager/f;

    iget-object v8, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v8}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mobile/auth/gatewayauth/manager/f;->a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v2, v7}, Lcom/mobile/auth/gatewayauth/model/InitResult;->setCan4GAuth(Z)V

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/InitResult;->isCan4GAuth()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "can4gAuth:can not 4g"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v9, "-10006"

    invoke-virtual {v3, v9}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAuthSdkCode(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :try_start_3
    const-string v7, "8000"

    invoke-virtual {v3, v7}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAuthSdkCode(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v7, v0

    :goto_1
    :try_start_4
    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/InitResult;->isCan4GAuth()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {v9}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->b()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    new-instance v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$31;

    invoke-direct {v10, p0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$31;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)V

    iget-object v11, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v11}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->g()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    iget-object v13, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->d:Lcom/mobile/auth/gatewayauth/manager/b;

    iget-object v14, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;

    invoke-static {v11, v12, v13, v14}, Lcom/mobile/auth/gatewayauth/manager/e;->a(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;Lcom/mobile/auth/gatewayauth/manager/b;Lcom/mobile/auth/o/a;)Lcom/mobile/auth/gatewayauth/manager/e;

    move-result-object v11

    invoke-virtual {v9, v0, v10, v11}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/e;)V

    :cond_2
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "checkEnvAvailable ret = "

    aput-object v10, v9, v8

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/InitResult;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v1

    const-string v8, "; hasSimCard = "

    aput-object v8, v9, v4

    const/4 v4, 0x3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    const/4 v4, 0x4

    const-string v5, "; isMobileNetworkOpen = "

    aput-object v5, v9, v4

    const/4 v4, 0x5

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    invoke-virtual {v0, v9}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-direct {p0, v7, v0, v3, v1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Ljava/lang/String;ZLcom/mobile/auth/gatewayauth/model/MonitorStruct;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v2

    move-object v7, v0

    move-object v0, v2

    goto :goto_4

    :catch_1
    move-exception v4

    move-object v7, v0

    move-object v0, v4

    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v4, "-10008"

    invoke-virtual {v3, v4}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAuthSdkCode(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/f;->c(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-direct {p0, v0, v4, v3, v1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Ljava/lang/String;ZLcom/mobile/auth/gatewayauth/model/MonitorStruct;Z)V

    :goto_3
    return-object v2

    :catchall_1
    move-exception v0

    :goto_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-direct {p0, v7, v2, v3, v1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Ljava/lang/String;ZLcom/mobile/auth/gatewayauth/model/MonitorStruct;Z)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    const/4 v1, 0x0

    :try_start_9
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    return-object v1

    :catchall_3
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public checkEnvAvailable(ILcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 1
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;

    invoke-direct {v0, p0, p1, p2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;ILcom/mobile/auth/gatewayauth/TokenResultListener;)V

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Lcom/mobile/auth/gatewayauth/utils/b$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public checkEnvAvailable()Z
    .locals 21
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v12, p0

    const-string v13, "; msg = "

    const-string v14, "checkEnvAvailable code = "

    :try_start_0
    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/d;->k()Ljava/lang/String;

    move-result-object v11

    new-instance v8, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-direct {v8}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;-><init>()V

    const-string v0, "sdk.check"

    invoke-virtual {v8, v0}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAction(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setStartTime(J)V

    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->n:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    invoke-interface {v0}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->getApiLevel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setApiLevel(Ljava/lang/String;)V

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setUrgency(I)V

    invoke-virtual {v8, v11}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setRequestId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x0

    const/16 v16, 0x3

    const/4 v9, 0x4

    const/4 v7, 0x1

    :try_start_1
    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    iget-object v2, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->n:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    invoke-virtual {v0, v2, v7}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->a(Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Z)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v17, :cond_1

    if-eqz v17, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_2
    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getVendorName()Ljava/lang/String;

    move-result-object v0

    const/16 v18, 0x0

    iget-object v1, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->n:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    const/16 v20, 0x1

    move-object v7, v0

    const/4 v15, 0x4

    move-object/from16 v9, v18

    const/16 v18, 0x2

    move-object/from16 v10, v19

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;

    new-array v1, v15, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v14, v1, v2

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v20

    aput-object v13, v1, v18

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->n:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v15, 0x4

    const/16 v18, 0x2

    const/16 v20, 0x1

    :try_start_3
    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->n:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    const-string v1, "600017"

    const-string v2, "AppID Secret\u89e3\u6790\u5931\u8d25"

    iget-object v3, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v17

    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;

    const-string v1, "checkEnvAvailable failed! Has no sceneCode!"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v17, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_4
    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getVendorName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->n:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;

    new-array v1, v15, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v14, v1, v2

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v20

    aput-object v13, v1, v18

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->n:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_1
    const/4 v1, 0x0

    return v1

    :cond_3
    :try_start_5
    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    const-string v1, ""

    new-instance v2, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$29;

    invoke-direct {v2, v12}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$29;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)V

    iget-object v3, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->g()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    iget-object v5, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->d:Lcom/mobile/auth/gatewayauth/manager/b;

    iget-object v6, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;

    invoke-static {v3, v4, v5, v6}, Lcom/mobile/auth/gatewayauth/manager/e;->a(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;Lcom/mobile/auth/gatewayauth/manager/b;Lcom/mobile/auth/o/a;)Lcom/mobile/auth/gatewayauth/manager/e;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/e;)V

    :cond_4
    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->i:Lcom/mobile/auth/gatewayauth/manager/f;

    invoke-virtual {v1, v0}, Lcom/mobile/auth/gatewayauth/manager/f;->a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->n:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    const-string v2, "600009"

    const-string v3, "\u65e0\u6cd5\u5224\u8fd0\u8425\u5546"

    invoke-interface {v1, v2, v3, v0}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v17

    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;

    const-string v1, "checkEnvAvailable failed! Unsupported Vendor!"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v17, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_6
    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getVendorName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->n:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;

    new-array v1, v15, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v14, v1, v2

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v20

    aput-object v13, v1, v18

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->n:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    :goto_2
    const/4 v1, 0x0

    return v1

    :cond_6
    if-eqz v17, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getVendorName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->n:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;

    new-array v1, v15, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v14, v1, v2

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v20

    aput-object v13, v1, v18

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->n:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_3
    return v20

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v1, v17

    goto :goto_5

    :catchall_1
    move-exception v0

    const/4 v15, 0x4

    const/16 v18, 0x2

    const/16 v20, 0x1

    :goto_4
    move-object/from16 v17, v1

    goto :goto_7

    :catch_1
    move-exception v0

    const/4 v15, 0x4

    const/16 v18, 0x2

    const/16 v20, 0x1

    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->n:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    const-string v3, "600010"

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v4}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v0, v4}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v0, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_8
    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getVendorName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->n:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    iget-object v1, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;

    new-array v2, v15, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v20

    aput-object v13, v2, v18

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v16

    invoke-virtual {v1, v2}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->n:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_6
    const/4 v1, 0x0

    return v1

    :catchall_2
    move-exception v0

    goto :goto_4

    :goto_7
    if-eqz v17, :cond_9

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getVendorName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->n:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    iget-object v1, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;

    new-array v2, v15, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v20

    aput-object v13, v2, v18

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v16

    invoke-virtual {v1, v2}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->n:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    :goto_8
    throw v0

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    const/4 v1, 0x0

    return v1

    :catchall_4
    move-exception v0

    const/4 v1, 0x0

    move-object v2, v0

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v1
.end method

.method public clearPreInfo()V
    .locals 1
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getAuthToken(ILcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 1
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$2;

    invoke-direct {v0, p0, p2, p1, p2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$2;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Lcom/mobile/auth/gatewayauth/TokenResultListener;ILcom/mobile/auth/gatewayauth/TokenResultListener;)V

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Lcom/mobile/auth/gatewayauth/utils/b$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getCurrentCarrierName()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->f()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getLoginMaskPhone(ILjava/lang/String;Lcom/mobile/auth/gatewayauth/OnLoginPhoneListener;ZZLjava/lang/String;)Ljava/lang/String;
    .locals 13
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    move-object v11, p0

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-direct {v0}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;-><init>()V

    iget-object v1, v11, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/d;->g()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setStartTime(J)V

    iget-object v8, v11, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->n:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    new-instance v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move/from16 v4, p4

    move-object v5, v0

    move-object/from16 v6, p6

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Ljava/lang/String;ZLcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/OnLoginPhoneListener;)V

    const/4 v12, 0x6

    move-object v1, p0

    move-object v2, v0

    move-object v3, p2

    move v4, p1

    move-object v5, v8

    move/from16 v6, p5

    move-object v7, v10

    move-object/from16 v8, p6

    move v10, v12

    invoke-direct/range {v1 .. v10}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->justGetLoginPhone(Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;ILcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;ZLcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p6

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getReporter()Lcom/mobile/auth/gatewayauth/PnsReporter;
    .locals 2
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/d;->b()Lcom/mobile/auth/gatewayauth/PnsReporter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getVerifyToken(ILcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 1
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$32;

    invoke-direct {v0, p0, p2, p1, p2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$32;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Lcom/mobile/auth/gatewayauth/TokenResultListener;ILcom/mobile/auth/gatewayauth/TokenResultListener;)V

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Lcom/mobile/auth/gatewayauth/utils/b$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 7
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    sget-object v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    if-eqz v1, :cond_0

    sput-object v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$23;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$23;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;JJ)V

    invoke-static {v6}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public preLogin(ILcom/mobile/auth/gatewayauth/PreLoginResultListener;Z)V
    .locals 1
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    new-instance p1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$8;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    invoke-direct {p1, p0, v0, p2, p3}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$8;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/PreLoginResultListener;Z)V

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Lcom/mobile/auth/gatewayauth/utils/b$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setAuthListener(Lcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 0
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setAuthSDKInfo(Ljava/lang/String;)V
    .locals 6
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "setAuthSDKInfo secretInfo = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->setLocalVendorSdkInfo(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->i:Lcom/mobile/auth/gatewayauth/manager/f;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {p1, v0}, Lcom/mobile/auth/gatewayauth/manager/f;->a(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;

    const-string v0, "VendorSdkFactor update local VendorConfig failed!"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    const-string v0, ""

    new-instance v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$16;

    invoke-direct {v1, p0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$16;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)V

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->g()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->d:Lcom/mobile/auth/gatewayauth/manager/b;

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;

    invoke-static {v2, v3, v4, v5}, Lcom/mobile/auth/gatewayauth/manager/e;->a(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;Lcom/mobile/auth/gatewayauth/manager/b;Lcom/mobile/auth/o/a;)Lcom/mobile/auth/gatewayauth/manager/e;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 9
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/f;->a(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Lcom/mobile/auth/o/a;

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    const-string v6, ""

    const-string v7, "sdk.debug.mode"

    invoke-static {}, Lcom/mobile/auth/gatewayauth/model/UStruct;->newUStruct()Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->startTime(J)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v0

    const-string v1, "isEnable"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->putApiParams(Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->endTime(J)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->build()Lcom/mobile/auth/gatewayauth/model/UStruct;

    move-result-object p1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->m:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    invoke-interface {v0}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->getApiLevel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v7, p1, v0}, Lcom/mobile/auth/gatewayauth/manager/d;->b(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/UStruct;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {v4, p1, v0}, Lcom/mobile/auth/o/a;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setLoggerEnable(Z)V
    .locals 8
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/f;->a(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v7, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$26;

    move-object v0, v7

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$26;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;JZJ)V

    invoke-static {v7}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setUploadEnable(Z)V
    .locals 8
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/f;->b(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v7, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$28;

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$28;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;JJZ)V

    invoke-static {v7}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
