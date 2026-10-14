.class public final Lcn/mucang/jiakaoyi/uilib/o/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/helper/SimUploadHelper;",
        "",
        "()V",
        "uploadSim",
        "",
        "uploadSimInfo",
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
.field public static final a:Lcn/mucang/jiakaoyi/uilib/o/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/o/c;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/o/c;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/o/c;->a:Lcn/mucang/jiakaoyi/uilib/o/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/core/permission/model/PermissionsResult;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/o/c;->d(Lcn/mucang/android/core/permission/model/PermissionsResult;)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/o/c;->f()V

    return-void
.end method

.method private static final d(Lcn/mucang/android/core/permission/model/PermissionsResult;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/permission/model/PermissionsResult;->getGrantedAll()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "\u68c0\u67e5\u6743\u9650\u540e\u4e0a\u4f20  grantedAll "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sget-object p0, Lcn/mucang/jiakaoyi/uilib/o/c;->a:Lcn/mucang/jiakaoyi/uilib/o/c;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/o/c;->e()V

    return-void
.end method

.method private final e()V
    .locals 1

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/o/b;->a:Lcn/mucang/jiakaoyi/uilib/o/b;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final f()V
    .locals 7

    const-string v0, "getContext()"

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/m0;->a:Lcn/mucang/android/jiakaoyi/framework/utils/m0;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/m0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/m0;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/m0;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sim\u5361 imsi "

    .line 4
    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/i/f;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/i/f;-><init>()V

    invoke-virtual {v1, v2, v3, v0}, Lcn/mucang/jiakaoyi/uilib/i/f;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, " imsi:"

    const-string v5, " iccid2:"

    if-eqz v1, :cond_0

    .line 6
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4e0a\u4f20sim\u5361\u4fe1\u606f\u6210\u529f iccid1:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4e0a\u4f20sim\u5361\u4fe1\u606f\u5931\u8d25 iccid1:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    :goto_0
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainBusinessManager"

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/api/open/device/record-sim-info.htm \u4e0a\u4f20sim\u5361\u4fe1\u606f\u5931\u8d25 "

    .line 11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission",
            "HardwareIds"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/o/a;->a:Lcn/mucang/jiakaoyi/uilib/o/a;

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 3
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/z;->d(Landroid/app/Activity;Lf/a/a/a/n/c/a;[Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/o/c;->e()V

    :goto_0
    return-void
.end method
