.class public Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private customInterface:Lcom/mobile/auth/gatewayauth/CustomInterface;

.field private rootViewId:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;)Lcom/mobile/auth/gatewayauth/CustomInterface;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;->customInterface:Lcom/mobile/auth/gatewayauth/CustomInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$100(Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;)Landroid/view/View;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;->view:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$200(Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;->rootViewId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public build()Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;

    invoke-direct {v1, p0, v0}, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;-><init>(Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public setCustomInterface(Lcom/mobile/auth/gatewayauth/CustomInterface;)Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;->customInterface:Lcom/mobile/auth/gatewayauth/CustomInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setRootViewId(I)Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;->rootViewId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setView(Landroid/view/View;)Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;->view:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
