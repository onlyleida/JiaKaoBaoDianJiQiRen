.class public abstract Lcom/mobile/auth/gatewayauth/ui/AbstractPnsViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
.end annotation


# instance fields
.field private mPnsView:Lcom/mobile/auth/gatewayauth/ui/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final findViewById(I)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/ui/AbstractPnsViewDelegate;->mPnsView:Lcom/mobile/auth/gatewayauth/ui/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/mobile/auth/gatewayauth/ui/a;->a(I)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_0
    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/ui/AbstractPnsViewDelegate;->mPnsView:Lcom/mobile/auth/gatewayauth/ui/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/ui/a;->a()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final getRootView()Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/ui/AbstractPnsViewDelegate;->mPnsView:Lcom/mobile/auth/gatewayauth/ui/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/ui/a;->b()Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public abstract onViewCreated(Landroid/view/View;)V
.end method

.method final setPnsView(Lcom/mobile/auth/gatewayauth/ui/a;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/ui/AbstractPnsViewDelegate;->mPnsView:Lcom/mobile/auth/gatewayauth/ui/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
