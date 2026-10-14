.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachModelChanged;",
        "",
        "teachModel",
        "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V",
        "getTeachModel",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
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


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l3;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;ILkotlin/jvm/internal/o;)V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l3;->a:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    return-void
.end method

.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;ILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l3;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method


# virtual methods
.method public final a()Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/l3;->a:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    return-object v0
.end method
