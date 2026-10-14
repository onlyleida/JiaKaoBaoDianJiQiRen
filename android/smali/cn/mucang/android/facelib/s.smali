.class public final Lcn/mucang/android/facelib/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/facelib/s$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcn/mucang/android/facelib/FaceStatLog;",
        "",
        "()V",
        "Companion",
        "facelib_release"
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
.field public static final a:Lcn/mucang/android/facelib/s$a;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/facelib/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/facelib/s$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/facelib/s;->a:Lcn/mucang/android/facelib/s$a;

    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/facelib/s;->b:I

    return v0
.end method

.method public static final synthetic b(I)V
    .locals 0

    .line 1
    sput p0, Lcn/mucang/android/facelib/s;->b:I

    return-void
.end method
