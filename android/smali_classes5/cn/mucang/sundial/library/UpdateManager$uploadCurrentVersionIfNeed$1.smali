.class final Lcn/mucang/sundial/library/UpdateManager$uploadCurrentVersionIfNeed$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/UpdateManager;->uploadCurrentVersionIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $currentCode:I

.field final synthetic $currentName:Ljava/lang/String;

.field final synthetic $lastSavedCode:I

.field final synthetic $lastSavedName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/UpdateManager$uploadCurrentVersionIfNeed$1;->$lastSavedName:Ljava/lang/String;

    iput p2, p0, Lcn/mucang/sundial/library/UpdateManager$uploadCurrentVersionIfNeed$1;->$lastSavedCode:I

    iput-object p3, p0, Lcn/mucang/sundial/library/UpdateManager$uploadCurrentVersionIfNeed$1;->$currentName:Ljava/lang/String;

    iput p4, p0, Lcn/mucang/sundial/library/UpdateManager$uploadCurrentVersionIfNeed$1;->$currentCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const-string v0, "update_version"

    .line 1
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    new-instance v2, Lcn/mucang/sundial/library/http/UpdateApi;

    invoke-direct {v2}, Lcn/mucang/sundial/library/http/UpdateApi;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/sundial/library/UpdateManager$uploadCurrentVersionIfNeed$1;->$lastSavedName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 4
    :goto_0
    :try_start_1
    iget v4, p0, Lcn/mucang/sundial/library/UpdateManager$uploadCurrentVersionIfNeed$1;->$lastSavedCode:I

    .line 5
    invoke-static {}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->getImei()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v3

    .line 6
    :goto_1
    iget-object v6, p0, Lcn/mucang/sundial/library/UpdateManager$uploadCurrentVersionIfNeed$1;->$currentName:Ljava/lang/String;

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move-object v6, v3

    .line 7
    :goto_2
    iget v7, p0, Lcn/mucang/sundial/library/UpdateManager$uploadCurrentVersionIfNeed$1;->$currentCode:I

    move-object v3, v1

    .line 8
    invoke-virtual/range {v2 .. v7}, Lcn/mucang/sundial/library/http/UpdateApi;->record(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateApi().record\u4e0a\u62a5\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    const-string v1, "version_name"

    .line 10
    iget-object v2, p0, Lcn/mucang/sundial/library/UpdateManager$uploadCurrentVersionIfNeed$1;->$currentName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "version_code"

    .line 11
    iget v2, p0, Lcn/mucang/sundial/library/UpdateManager$uploadCurrentVersionIfNeed$1;->$currentCode:I

    invoke-static {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    :cond_3
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 13
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void
.end method
