.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/KuWeiBinder$a;
.super Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/KuWeiBinder;-><init>(Lkotlin/jvm/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/KuWeiBinder$degreeRangeWatcher$1",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/VariableWatcher;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;",
        "textChanged",
        "",
        "v",
        "input",
        "",
        "TeachingK2_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/KuWeiBinder$a;->c(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;Ljava/lang/String;)V

    return-void
.end method

.method protected c(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;->degreeRadius:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "\u8bbe\u7f6e\u5931\u8d25\uff0c\u8bf7\u8f93\u5165\u6570\u5b57"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
