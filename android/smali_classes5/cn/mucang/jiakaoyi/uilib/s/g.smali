.class public final Lcn/mucang/jiakaoyi/uilib/s/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u0006\u001a\u00020\u0007J\n\u0010\u0008\u001a\u0004\u0018\u00010\u0004H\u0007J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/utils/DeviceSettingUtils;",
        "",
        "()V",
        "deviceSettingInfo",
        "Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;",
        "getDeviceSetting",
        "getKey",
        "",
        "loadSetting",
        "saveSetting",
        "",
        "settingInfo",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/jiakaoyi/uilib/s/g;

.field private static b:Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/s/g;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/s/g;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/s/g;->a:Lcn/mucang/jiakaoyi/uilib/s/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/s/g;->b:Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/s/g;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    :try_start_0
    const-class v1, Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/s/g;->b:Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/s/g;->b:Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_key_device_setting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/e;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/e;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/i/e;->n()Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u83b7\u53d6\u5230\u6700\u65b0\u7684\u8bbe\u5907\u4fe1\u606f\u6570\u636e\uff1a"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/uilib/s/g;->d(Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/s/g;->a()Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    :cond_1
    :goto_1
    return-object v0
.end method

.method public final d(Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;)V
    .locals 1

    const-string v0, "settingInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sput-object p1, Lcn/mucang/jiakaoyi/uilib/s/g;->b:Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/s/g;->b()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/s/g;->b:Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
