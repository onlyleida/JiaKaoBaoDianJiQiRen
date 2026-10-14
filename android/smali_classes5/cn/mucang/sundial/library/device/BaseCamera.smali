.class public abstract Lcn/mucang/sundial/library/device/BaseCamera;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/device/TtCamera;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/library/device/BaseCamera$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008&\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\t\u0010\nR\"\u0010\u0003\u001a\u00020\u00028\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/sundial/library/device/BaseCamera;",
        "Lcn/mucang/sundial/library/device/TtCamera;",
        "",
        "picPath",
        "Ljava/lang/String;",
        "getPicPath",
        "()Ljava/lang/String;",
        "setPicPath",
        "(Ljava/lang/String;)V",
        "<init>",
        "()V",
        "Companion",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcn/mucang/sundial/library/device/BaseCamera$Companion;

.field public static final SUFFIX_JPEG:Ljava/lang/String; = ".jpg"


# instance fields
.field private picPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/sundial/library/device/BaseCamera$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/sundial/library/device/BaseCamera$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/sundial/library/device/BaseCamera;->Companion:Lcn/mucang/sundial/library/device/BaseCamera$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcn/mucang/sundial/library/device/BaseCamera;->picPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final getPicPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/device/BaseCamera;->picPath:Ljava/lang/String;

    return-object v0
.end method

.method public hasPermission()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcn/mucang/sundial/library/device/TtCamera$DefaultImpls;->hasPermission(Lcn/mucang/sundial/library/device/TtCamera;)Z

    move-result v0

    return v0
.end method

.method public isolatePreviewPage()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcn/mucang/sundial/library/device/TtCamera$DefaultImpls;->isolatePreviewPage(Lcn/mucang/sundial/library/device/TtCamera;)Z

    move-result v0

    return v0
.end method

.method protected final setPicPath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/device/BaseCamera;->picPath:Ljava/lang/String;

    return-void
.end method
