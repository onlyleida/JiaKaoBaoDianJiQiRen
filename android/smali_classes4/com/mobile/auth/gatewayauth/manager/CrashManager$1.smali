.class Lcom/mobile/auth/gatewayauth/manager/CrashManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirvana/tools/crash/OnCrashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/manager/CrashManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/manager/CrashManager;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/manager/CrashManager;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/CrashManager$1;->a:Lcom/mobile/auth/gatewayauth/manager/CrashManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrashOccurred(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {}, Lcom/mobile/auth/gatewayauth/model/UStruct;->newUStruct()Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->crashId(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->isAnnihilated(Z)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object p2

    invoke-virtual {p2, p6}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->crashType(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->crashThread(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->build()Lcom/mobile/auth/gatewayauth/model/UStruct;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mobile/auth/gatewayauth/model/UStruct;->setIsSuccess(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/mobile/auth/gatewayauth/model/UStruct;->setEndTime(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/mobile/auth/gatewayauth/model/UStruct;->setStartTime(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/mobile/auth/gatewayauth/model/UStruct;->setWholeMS(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/manager/CrashManager$1;->a:Lcom/mobile/auth/gatewayauth/manager/CrashManager;

    invoke-static {p2}, Lcom/mobile/auth/gatewayauth/manager/CrashManager;->a(Lcom/mobile/auth/gatewayauth/manager/CrashManager;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/mobile/auth/o/a;->a(Landroid/content/Context;)Lcom/mobile/auth/o/a;

    move-result-object p2

    iget-object p3, p0, Lcom/mobile/auth/gatewayauth/manager/CrashManager$1;->a:Lcom/mobile/auth/gatewayauth/manager/CrashManager;

    invoke-static {p3}, Lcom/mobile/auth/gatewayauth/manager/CrashManager;->b(Lcom/mobile/auth/gatewayauth/manager/CrashManager;)Lcom/mobile/auth/gatewayauth/manager/d;

    move-result-object p3

    iget-object p4, p0, Lcom/mobile/auth/gatewayauth/manager/CrashManager$1;->a:Lcom/mobile/auth/gatewayauth/manager/CrashManager;

    invoke-static {p4}, Lcom/mobile/auth/gatewayauth/manager/CrashManager;->a(Lcom/mobile/auth/gatewayauth/manager/CrashManager;)Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/mobile/auth/gatewayauth/utils/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "sdk.crash.occurred"

    const-string p6, ""

    invoke-virtual {p3, p4, p5, p1, p6}, Lcom/mobile/auth/gatewayauth/manager/d;->b(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/UStruct;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    invoke-virtual {p2, p1, p3}, Lcom/mobile/auth/o/a;->a(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/CrashManager$1;->a:Lcom/mobile/auth/gatewayauth/manager/CrashManager;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/manager/CrashManager;->a(Lcom/mobile/auth/gatewayauth/manager/CrashManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mobile/auth/o/a;->a(Landroid/content/Context;)Lcom/mobile/auth/o/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/o/a;->a()V
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

.method public onCrashUploadFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/manager/CrashManager$1;->a:Lcom/mobile/auth/gatewayauth/manager/CrashManager;

    invoke-static {p2, p1, p3}, Lcom/mobile/auth/gatewayauth/manager/CrashManager;->a(Lcom/mobile/auth/gatewayauth/manager/CrashManager;Ljava/lang/String;Ljava/lang/String;)V
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
