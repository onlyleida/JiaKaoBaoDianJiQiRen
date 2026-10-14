.class public Lcn/mucang/android/jiakaoyi/signal/utils/f;
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
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/f;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->type:I

    const-string v1, "keyGearType"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/f;->a:Ljava/lang/Integer;

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/f;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static b()Z
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/f;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->type:I

    const-string v1, "keyGearType"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/f;->a:Ljava/lang/Integer;

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/f;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->auto:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->type:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static c()Z
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/f;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->type:I

    const-string v1, "keyGearType"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/f;->a:Ljava/lang/Integer;

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/f;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->manual:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->type:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbe\u7f6e\u5f53\u524d\u8f66\u8f86\u6863\u4f4d\u7c7b\u578b:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/f;->a:Ljava/lang/Integer;

    const-string v0, "keyGearType"

    .line 3
    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p0

    instance-of p0, p0, Lcn/mucang/android/jiakaoyi/framework/a;

    if-eqz p0, :cond_0

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/framework/a;

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/framework/a;->d()V

    :cond_0
    return-void
.end method
