.class final Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager$helper$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;Lkotlin/jvm/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager$helper$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x5

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->i()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager$helper$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->a(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;)Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;

    move-result-object v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    :goto_0
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager$helper$1$1;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
