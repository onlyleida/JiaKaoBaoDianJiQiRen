.class public Lcn/mucang/android/jiakaoyi/signal/utils/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Z
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/e;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->type:I

    const-string v1, "keyEnergyType"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/e;->a:Ljava/lang/Integer;

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/e;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->electric:Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->type:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b(I)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/utils/e;->a:Ljava/lang/Integer;

    const-string v0, "keyEnergyType"

    .line 2
    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V

    return-void
.end method
