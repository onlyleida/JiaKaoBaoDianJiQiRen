.class public final Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachSettingModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachSettingModel;",
        "Ljava/io/Serializable;",
        "()V",
        "allowPause",
        "",
        "getAllowPause",
        "()Z",
        "setAllowPause",
        "(Z)V",
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
.field private allowPause:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachSettingModel;->allowPause:Z

    return-void
.end method


# virtual methods
.method public final getAllowPause()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachSettingModel;->allowPause:Z

    return v0
.end method

.method public final setAllowPause(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachSettingModel;->allowPause:Z

    return-void
.end method
