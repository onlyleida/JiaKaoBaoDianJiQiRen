.class public Lcn/mucang/android/account/n/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "auth"

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/account/n/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/account/n/a;->b:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/utils/o0;->m()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    const-string v2, "wechat_share_appKey"

    .line 4
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 5
    :goto_0
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    const-string v1, "mc_"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_3
    sput-object v0, Lcn/mucang/android/account/n/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Z
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/account/R$bool;->account__show_bind_third_after_login:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static onEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/account/n/a;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcn/mucang/android/core/utils/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
