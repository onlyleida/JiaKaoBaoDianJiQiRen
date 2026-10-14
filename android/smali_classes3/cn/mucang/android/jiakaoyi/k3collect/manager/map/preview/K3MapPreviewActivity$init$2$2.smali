.class final Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/i0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "cn.mucang.android.jiakaoyi.k3collect.manager.map.preview.K3MapPreviewActivity$init$2$2"
    f = "K3MapPreviewActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $defaultConverter:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcn/mucang/android/jiakaoyi/signal/i/b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $gpsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isLoadFinish:Lkotlin/jvm/internal/Ref$BooleanRef;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/ArrayList;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcn/mucang/android/jiakaoyi/signal/i/b;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;->$isLoadFinish:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;->$defaultConverter:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;->$gpsList:Ljava/util/ArrayList;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;->invokeSuspend$lambda-0(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/ArrayList;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-0(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;->j(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;)Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->mapView:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-virtual {v0, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->k(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;->$isLoadFinish:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;->$defaultConverter:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;->$gpsList:Ljava/util/ArrayList;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/ArrayList;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/i0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;->$defaultConverter:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;->$gpsList:Ljava/util/ArrayList;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/b;

    invoke-direct {v2, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/b;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/ArrayList;)V

    const-wide/16 v0, 0x32

    invoke-static {v2, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;

    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->pbPreview:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;->$isLoadFinish:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 5
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
