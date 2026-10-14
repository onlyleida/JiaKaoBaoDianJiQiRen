.class public Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;
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

.field protected static volatile a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;


# instance fields
.field private b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

.field private c:Lcom/mobile/auth/gatewayauth/d;

.field private d:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

.field private e:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

.field private f:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mobile/auth/gatewayauth/manager/compat/a;

    invoke-direct {v0}, Lcom/mobile/auth/gatewayauth/manager/compat/a;-><init>()V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->d:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    new-instance v0, Lcom/mobile/auth/gatewayauth/manager/compat/b;

    invoke-direct {v0}, Lcom/mobile/auth/gatewayauth/manager/compat/b;-><init>()V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->e:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    invoke-static {p1, p2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->getInstance(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/TokenResultListener;)Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->f:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    new-instance p2, Lcom/mobile/auth/gatewayauth/d;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->f:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b()Lcom/mobile/auth/gatewayauth/manager/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->f:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a()Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1, p0}, Lcom/mobile/auth/gatewayauth/d;-><init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/manager/d;Lcom/mobile/auth/gatewayauth/manager/SystemManager;Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)V

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->c:Lcom/mobile/auth/gatewayauth/d;

    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->e:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private a(JLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;Ljava/lang/String;)Z
    .locals 16

    const/4 v1, 0x0

    if-eqz p6, :cond_0

    :try_start_0
    invoke-virtual/range {p6 .. p6}, Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    move-object/from16 v8, p0

    :try_start_1
    iget-object v9, v8, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->c:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual/range {p6 .. p6}, Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v12

    new-instance v15, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$3;

    move-object v2, v15

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$3;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    move-wide/from16 v10, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-virtual/range {v9 .. v15}, Lcom/mobile/auth/gatewayauth/d;->a(JLjava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v8, p0

    :goto_0
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v1

    :cond_0
    move-object/from16 v8, p0

    return v1
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;JLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p7}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->a(JLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->f:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic c(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/d;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->c:Lcom/mobile/auth/gatewayauth/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic d(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/TokenResultListener;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/TokenResultListener;)Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;
    .locals 2
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    sget-object v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    const-class v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-direct {v1, p0, p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;-><init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V

    sput-object v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

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
    sget-object p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-virtual {p0, p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->setAuthListener(Lcom/mobile/auth/gatewayauth/TokenResultListener;)V

    sget-object p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    const-string v0, "2.12.1.2"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method a(JLcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->f:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(JLcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public accelerateLoginPage(ILcom/mobile/auth/gatewayauth/PreLoginResultListener;)V
    .locals 2
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->f:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->c:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/d;->m()Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->accelerateLoginPage(ILcom/mobile/auth/gatewayauth/PreLoginResultListener;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public accelerateVerify(ILcom/mobile/auth/gatewayauth/PreLoginResultListener;)V
    .locals 1
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->f:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-virtual {v0, p1, p2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->accelerateVerify(ILcom/mobile/auth/gatewayauth/PreLoginResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public addAuthRegistViewConfig(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;)V
    .locals 1
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->c:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0, p1, p2}, Lcom/mobile/auth/gatewayauth/d;->a(Ljava/lang/String;Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public addAuthRegisterXmlConfig(Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig;)V
    .locals 1
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->c:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/gatewayauth/d;->a(Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public checkEnvAvailable(I)V
    .locals 2
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->f:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    invoke-virtual {v0, p1, v1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->checkEnvAvailable(ILcom/mobile/auth/gatewayauth/TokenResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public checkEnvAvailable()Z
    .locals 1
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->f:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->checkEnvAvailable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public clearPreInfo()V
    .locals 1
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->f:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->clearPreInfo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getCurrentCarrierName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->f:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->getCurrentCarrierName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoginToken(Landroid/content/Context;I)V
    .locals 1
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;Landroid/content/Context;I)V

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Lcom/mobile/auth/gatewayauth/utils/b$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getReporter()Lcom/mobile/auth/gatewayauth/PnsReporter;
    .locals 1
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->f:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->getReporter()Lcom/mobile/auth/gatewayauth/PnsReporter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVerifyToken(I)V
    .locals 2
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->f:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    invoke-virtual {v0, p1, v1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->getVerifyToken(ILcom/mobile/auth/gatewayauth/TokenResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public hideLoginLoading()V
    .locals 1
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->c:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/d;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public quitLoginPage()V
    .locals 7
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->c:Lcom/mobile/auth/gatewayauth/d;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->e:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/d;->a(Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->c:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/d;->c()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$1;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$1;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;JJ)V

    invoke-static {v6}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public removeAuthRegisterViewConfig()V
    .locals 1
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->c:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/d;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public removeAuthRegisterXmlConfig()V
    .locals 1
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->c:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/d;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setActivityResultListener(Lcom/mobile/auth/gatewayauth/ActivityResultListener;)V
    .locals 1
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->c:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/gatewayauth/d;->a(Lcom/mobile/auth/gatewayauth/ActivityResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setAuthListener(Lcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 1
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->f:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->setAuthListener(Lcom/mobile/auth/gatewayauth/TokenResultListener;)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->c:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/gatewayauth/d;->a(Lcom/mobile/auth/gatewayauth/TokenResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setAuthSDKInfo(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->f:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->setAuthSDKInfo(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setAuthUIConfig(Lcom/mobile/auth/gatewayauth/AuthUIConfig;)V
    .locals 1
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->c:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/gatewayauth/d;->a(Lcom/mobile/auth/gatewayauth/AuthUIConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setUIClickListener(Lcom/mobile/auth/gatewayauth/AuthUIControlClickListener;)V
    .locals 1
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->c:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/gatewayauth/d;->a(Lcom/mobile/auth/gatewayauth/AuthUIControlClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
