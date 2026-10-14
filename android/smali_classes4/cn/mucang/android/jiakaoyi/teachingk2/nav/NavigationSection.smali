.class public final Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationSection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationSection;",
        "Ljava/io/Serializable;",
        "()V",
        "fromAction",
        "Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;",
        "getFromAction",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;",
        "setFromAction",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;)V",
        "length",
        "",
        "getLength",
        "()D",
        "setLength",
        "(D)V",
        "points",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;",
        "getPoints",
        "()Ljava/util/List;",
        "setPoints",
        "(Ljava/util/List;)V",
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
.field private fromAction:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

.field private length:D

.field private points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->NONE:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationSection;->fromAction:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    return-void
.end method


# virtual methods
.method public final getFromAction()Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationSection;->fromAction:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    return-object v0
.end method

.method public final getLength()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationSection;->length:D

    return-wide v0
.end method

.method public final getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationSection;->points:Ljava/util/List;

    return-object v0
.end method

.method public final setFromAction(Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationSection;->fromAction:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    return-void
.end method

.method public final setLength(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationSection;->length:D

    return-void
.end method

.method public final setPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationSection;->points:Ljava/util/List;

    return-void
.end method
