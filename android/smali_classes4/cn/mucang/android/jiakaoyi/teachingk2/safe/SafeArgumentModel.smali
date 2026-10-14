.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeArgumentModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeArgumentModel;",
        "Ljava/io/Serializable;",
        "config",
        "Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)V",
        "getConfig",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;",
        "desc",
        "",
        "getDesc",
        "()Ljava/lang/String;",
        "setDesc",
        "(Ljava/lang/String;)V",
        "value",
        "",
        "getValue",
        "()F",
        "setValue",
        "(F)V",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final config:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

.field private desc:Ljava/lang/String;

.field private value:F


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeArgumentModel;->config:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeArgumentModel;->desc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getConfig()Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeArgumentModel;->config:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    return-object v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeArgumentModel;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeArgumentModel;->value:F

    return v0
.end method

.method public final setDesc(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeArgumentModel;->desc:Ljava/lang/String;

    return-void
.end method

.method public final setValue(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeArgumentModel;->value:F

    return-void
.end method
