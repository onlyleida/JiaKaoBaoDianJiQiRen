.class public final Lf/a/a/a/s/e$b;
.super Lf/a/a/a/r/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/a/s/e;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "cn/mucang/android/core/ui/PrivacyAgreementSetting$storage$1",
        "Lcn/mucang/android/core/storage/ShareMultiProcessStorage;",
        "get",
        "",
        "core-lib_release"
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
    .locals 4

    const-string v0, "_agreement_"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Lf/a/a/a/r/e;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/o;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-super {p0}, Lf/a/a/a/r/e;->get()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lf/a/a/a/r/e;->i()V

    :cond_0
    return-object v0
.end method
