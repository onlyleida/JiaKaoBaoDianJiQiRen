.class public Lcom/nirvana/tools/logger/UmaaidSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAaid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/aaid/aidin/AAIDManager;->getInstance()Lcom/aaid/aidin/AAIDManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/aaid/aidin/AAIDManager;->getAAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/aaid/aidin/AAIDManager;->getInstance()Lcom/aaid/aidin/AAIDManager;

    move-result-object v0

    new-instance v1, Lcom/nirvana/tools/logger/UmaaidSdk$1;

    invoke-direct {v1}, Lcom/nirvana/tools/logger/UmaaidSdk$1;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/aaid/aidin/AAIDManager;->init(Landroid/content/Context;Lcom/aaid/aidin/IAAIDCompletionCallback;)V

    return-void
.end method

.method public static isUmAaidSdkAble()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.aaid.aidin.AAIDManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method
