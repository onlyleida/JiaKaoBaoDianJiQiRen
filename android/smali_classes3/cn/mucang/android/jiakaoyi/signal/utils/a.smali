.class public Lcn/mucang/android/jiakaoyi/signal/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()I
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/a;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/BackGearType;->RightDown:Lcn/mucang/android/jiakaoyi/signal/center/model/BackGearType;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/BackGearType;->type:I

    const-string v1, "keyBackGearType"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/a;->a:Ljava/lang/Integer;

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static b()Z
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/a;->a()I

    move-result v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/BackGearType;->LeftUpper:Lcn/mucang/android/jiakaoyi/signal/center/model/BackGearType;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/BackGearType;->type:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static c(I)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/a;->a:Ljava/lang/Integer;

    const-string v0, "keyBackGearType"

    .line 2
    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p0

    instance-of p0, p0, Lcn/mucang/android/jiakaoyi/framework/a;

    if-eqz p0, :cond_0

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/framework/a;

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/framework/a;->f()V

    :cond_0
    return-void
.end method
