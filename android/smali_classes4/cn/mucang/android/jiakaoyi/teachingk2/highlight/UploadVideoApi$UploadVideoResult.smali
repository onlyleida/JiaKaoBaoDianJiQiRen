.class public final Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi$UploadVideoResult;
.super Lcn/mucang/android/core/api/upload/UploadResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UploadVideoResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi$UploadVideoResult;",
        "Lcn/mucang/android/core/api/upload/UploadResult;",
        "()V",
        "shareUrl",
        "",
        "getShareUrl",
        "()Ljava/lang/String;",
        "setShareUrl",
        "(Ljava/lang/String;)V",
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
.field private shareUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/upload/UploadResult;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShareUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi$UploadVideoResult;->shareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final setShareUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi$UploadVideoResult;->shareUrl:Ljava/lang/String;

    return-void
.end method
