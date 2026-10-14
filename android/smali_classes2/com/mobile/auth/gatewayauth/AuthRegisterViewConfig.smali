.class public Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;,
        Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$RootViewId;
    }
.end annotation


# instance fields
.field private customInterface:Lcom/mobile/auth/gatewayauth/CustomInterface;

.field private rootViewId:I

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;->access$000(Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;)Lcom/mobile/auth/gatewayauth/CustomInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;->customInterface:Lcom/mobile/auth/gatewayauth/CustomInterface;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;->access$100(Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;->view:Landroid/view/View;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;->access$200(Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;)I

    move-result p1

    iput p1, p0, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;->rootViewId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;-><init>(Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getCustomInterface()Lcom/mobile/auth/gatewayauth/CustomInterface;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;->customInterface:Lcom/mobile/auth/gatewayauth/CustomInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRootViewId()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;->rootViewId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;->view:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
