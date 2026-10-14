.class public final Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006B\u0005\u00a2\u0006\u0002\u0010\u0007R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\n\"\u0004\u0008\u0013\u0010\u000c\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;",
        "Ljava/io/Serializable;",
        "resId",
        "",
        "text",
        "",
        "(ILjava/lang/String;)V",
        "()V",
        "pic",
        "getPic",
        "()Ljava/lang/String;",
        "setPic",
        "(Ljava/lang/String;)V",
        "getResId",
        "()I",
        "setResId",
        "(I)V",
        "title",
        "getTitle",
        "setTitle",
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
.field private pic:Ljava/lang/String;

.field private resId:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;-><init>()V

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;->resId:I

    .line 4
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public final getResId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;->resId:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final setPic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;->pic:Ljava/lang/String;

    return-void
.end method

.method public final setResId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;->resId:I

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;->title:Ljava/lang/String;

    return-void
.end method
